#!/usr/bin/env python3

# stdlib
import argparse
import sys
from email.message import EmailMessage

# our lib
import helpers


def main(testing_usernames=[]):
    # Read "dry" run parameter
    dryRun = False
    for x in sys.argv:
        if 'dry' in x.lower():
            dryRun = True

    configProps = helpers.getConfig('db discourse smtp')
    template_vars = {
        'discourse_url': configProps['discourse.url'], 
        'editor_thread': configProps['editor.thread'], 
        'admin_name': configProps['admin.name'], 
        'admin_user': configProps['admin.user']
    }

    # Get editors from database
    editors = None
    if configProps.keys() & {'db.url', 'db.user', 'db.password'}:
        with helpers.createConnection(configProps) as connection:
            if connection:
                select_editors = """
                    select username, email, DATE(user_role.created_date) editor_date, last_edit
                      from users inner join user_role using (user_id)
                     inner join roles using (role_id)
                      left join (select DATE(max(change_date)) last_edit, user_id from site_change group by user_id) e using (user_id)
                     where role_name = 'editor'"""
                if testing_usernames:
                    select_editors += ' and username IN ({""})'.format('","'.join(testing_usernames))
                else:
                    select_editors += f" and coalesce(last_edit, user_role.created_date) < now() - interval'{configProps['editor.interval'] or 12} months'"

                editors = helpers.readQueryDict(connection, select_editors)
                print("Selected {} results".format(len(editors)))
            else:
                print("Couldn't match database URL")
    else:
        print("Couldn't find full database server information")
        sys.exit()

    # Send email(s)
    if not editors:
        print('No results found')
    elif configProps.keys() & {'smtp.host', 'smtp.port', 'smtp.user', 'smtp.password', 'discourse.url', 'editor.thread', 'admin.name', 'admin.user', 'admin.email'}:
        msgs = []
        summary = f"""<!DOCTYPE html><html><head><style>th{{text-align:left}}th,td{{padding:2px 5px}}</style></head><body>
            <p>The following {len(editors)} editors haven't contributed and {'were <strong>NOT</strong>' if dryRun else 'were'} notified:</p>
            <table><tr><th>Username</th><th>Email</th><th>Last Activity</th></tr>"""

        for editor in editors:
            summary += '<tr><td>{username}</td><td>{email}</td>'.format(**editor)
            if editor['last_edit']:
                summary += '<td>{last_edit}</td></tr>'.format(**editor);
            else:
                summary += '<td>{editor_date}*</td></tr>'.format(**editor);

            if not dryRun:
                # Editor emails
                print('Building email to {email}'.format(**editor))
                msg = EmailMessage()
                if editor['editor_date']:
                    # Made an edit
                    msg.set_content("""Hello {username},

            It's been some time since your last edit to supercharge.info. Our last recorded edit from you was made on {last_edit}, and your editor permissions will be deactivated unless you take action. If you need to brush up on editing standards, see the following thread: {discourse_url}/t/{editor_thread}

            If you're planning on returning to edit some more but are unavailable to at the moment, would you kindly message {admin_name} on the forums? {discourse_url}/u/{admin_user}

    Thank you,
    The team at supercharge.info""".format(**template_vars, **editor))
                else:
                    # Never contributed
                    msg.set_content("""{username},

            It's been some time since you were added as an editor to supercharge.info back on {editor_date}, but we don't have any recorded edits by you. Your editor permissions will be deactivated unless you take action. If you do want to contribute, please brush up on our standards in the following thread first: {discourse_url}/t/{editor_thread}

            If you're planning on returning to edit some more but are unavailable to at the moment, would you kindly message {admin_name} on the forums? {discourse_url}/u/{admin_user}

    Thank you,
    The team at supercharge.info""".format(**template_vars, *editor))
                msg['Subject'] = 'Editor Access Pending Removal'
                msg['From'] = configProps['smtp.user']
                msg['To'] = editor['email']
                msgs.append(msg)

        # Summary email
        print('Building email to {}'.format(configProps['admin.email']))
        msg = EmailMessage()
        msg['Subject'] = f"Inactive Editors {'NOT Emailed' if dryRun else 'Emailed'}"
        msg['From'] = configProps['smtp.user']
        msg['To'] = configProps['admin.email']
        summary += "</table><p>* Denotes when the editor was added instead since they've never made an edit.</p></body></html>"
        msg.add_alternative(summary, subtype='html')
        msgs.append(msg)

        helpers.sendEmails(msgs, configProps)

    else:
        print("Couldn't find full email server or miscellaneous information")


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--yes-send-emails-to-editors', action='store_true')
    parser.add_argument('--testing-usernames', default=[], type=lambda x: x.split(','))

    args = parser.parse_args()
    
    if args.yes_send_emails_to_editors:
        confirm_send_emails_to_editors = input("Are you sure you want to email editors? Type YES if so: ")

    if args.testing_usernames:
        print("")
            
    #main()
