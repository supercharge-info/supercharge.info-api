#!/usr/bin/env python3
import helpers
import sys
from email.message import EmailMessage

# Read "dry" run parameter
dryRun = False
for x in sys.argv:
    if 'dry' in x.lower():
        dryRun = True

configProps = helpers.getConfig('db discourse smtp')

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
            if 'mode.testing' in configProps:
                select_editors += f" and username = '{configProps['admin.user']}'"
            else:
                select_editors += f" and coalesce(last_edit, user_role.created_date) < now() - interval'{configProps['editor.interval'] or 12} months'"

            editors = helpers.readQuery(connection, select_editors)
            print("Selected {} results".format(len(editors)))
        else:
            print("Couldn't match database URL")
else:
    print("Couldn't find full database server information")
    sys.exit()

# Send email(s)
if not editors:
    print('No results found')
elif configProps.keys() & {'smtp.host', 'smtp.port', 'smtp.user', 'smtp.password', 'discourse.url', 'editor.thread', 'admin.name', 'admin.user', 'admin.email.address'}:
    msgs = []
    summary = f"""<!DOCTYPE html><html><head><style>th{{text-align:left}}th,td{{padding:2px 5px}}</style></head><body>
        <p>The following {len(editors)} editors haven't contributed and {'were <strong>NOT</strong>' if dryRun else 'were'} notified:</p>
        <table><tr><th>Username</th><th>Email</th><th>Last Activity</th></tr>"""

    for e in editors:
        summary += '<tr><td>{0}</td><td>{1}</td>'.format(*e);
        if e[3]:
            summary += '<td>{}</td></tr>'.format(e[3]);
        else:
            summary += '<td>{}*</td></tr>'.format(e[2]);

        if not dryRun:
            # Editor emails
            print('Building email to {}'.format(e[1]))
            msg = EmailMessage()
            if e[3]:
                # Made an edit
                msg.set_content("""{4},

        It's been some time since your last edit to supercharge.info. Our last recorded edit from you was made on {7}, and your editor permissions will be deactivated unless you take action. If you need to brush up on editing standards, see the following thread: {0}/t/{1}

        If you're planning on returning to edit some more but are unavailable to at the moment, would you kindly message {2} on the forums? {0}/u/{3}

Thank you,
The team at supercharge.info""".format(configProps['discourse.url'], configProps['editor.thread'], configProps['admin.name'], configProps['admin.user'], *e))
            else:
                # Never contributed
                msg.set_content("""{4},

        It's been some time since you were added as an editor to supercharge.info back on {6}, but we don't have any recorded edits by you. Your editor permissions will be deactivated unless you take action. If you do want to contribute, please brush up on our standards in the following thread first: {0}/t/{1}

        If you're planning on returning to edit some more but are unavailable to at the moment, would you kindly message {2} on the forums? {0}/u/{3}

Thank you,
The team at supercharge.info""".format(configProps['discourse.url'], configProps['editor.thread'], configProps['admin.name'], configProps['admin.user'], *e))
            msg['Subject'] = 'Editor Access Pending Removal'
            msg['From'] = configProps['smtp.user']
            msg['To'] = e[1]
            msgs.append(msg)

    # Summary email
    print('Building email to {}'.format(configProps['admin.email.address']))
    msg = EmailMessage()
    msg['Subject'] = f"Inactive Editors {'NOT Emailed' if dryRun else 'Emailed'}"
    msg['From'] = configProps['smtp.user']
    msg['To'] = configProps['admin.email.address']
    summary += "</table><p>* Denotes when the editor was added instead since they've never made an edit.</p></body></html>"
    msg.add_alternative(summary, subtype='html')
    msgs.append(msg)

    helpers.sendEmails(msgs, configProps)
else:
    print("Couldn't find full email server or miscellaneous information")
