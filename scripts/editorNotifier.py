#!/usr/bin/env python3

###   editorNotifier.py
###
###  A script used to query the database for inactive editors and send them each
###  an email requesting that they post their intention to remain an active editor.
###
###  Usage:
###
###  When running tests the --testing flag should be passed in:
###
###     ./editorNotifier.py --testing --editors=corywright,Pluto --yes-send-editor-emails --exclude-editors=corywright
###
###  When using --testing you must also specify --editors=<list> where <list> is a
###  comma separated list of editor usernames.
###
###  Remove --yes-send-editor-emails to test but not send email)
###
###  Production run:
###
###     ./editorNotifier.py --yes-send-editor-emails --exclude-editors=keith,keith_test_001
###
###
###  This script requires a ~/.env file in the same directory and in the format of config.properties.
###  The .env file must contain the following properties:
###
###      # Properties file for script utilities
###      properties.file=/home/tomcat/config-prod.properties
###
###      # Common script config
###      admin.email.address=SOME_EMAIL_ADDRESS
###      admin.email.from=Cory Wright <SOME_EMAIL_ADDRESS>
###      admin.user=corywright
###      admin.name=Cory Wright
###      editor.instructions=editor-instructions/30/1
###      editor.activelist=current-editor-list/226
###      editor.interval=12

import argparse
import re
import sys
from email.message import EmailMessage

# our helper library
import helpers


def getEditors(configProps, testing_editors=[]):
    """
    fetch editors from the database, limiting to `testing_editors` if that list
    is not empty.
    """
    if configProps.keys() & {'db.url', 'db.user', 'db.password'}:
        with helpers.createConnection(configProps) as connection:
            if connection:
                select_editors = """
                    select username, email, DATE(user_role.created_date) editor_date, last_edit
                      from users inner join user_role using (user_id)
                     inner join roles using (role_id)
                      left join (select DATE(max(change_date)) last_edit, user_id from site_change group by user_id) e using (user_id)
                     where role_name = 'editor'"""
                if testing_editors:
                    select_editors += " and username IN ('{}')".format("','".join(testing_editors))
                else:
                    select_editors += f" and coalesce(last_edit, user_role.created_date) < now() - interval'{configProps['editor.interval'] or 12} months'"

                editors = helpers.readQueryDict(connection, select_editors)
                print("Selected {} editors".format(len(editors)))
                return editors
            else:
                print("Couldn't match database URL")
    else:
        print("Couldn't find full database server information")

    # if we haven't returned by here, then something went wrong
    sys.exit(1)


def getEditorMessageContent(config, editor):
    editor.update({'last_action': "made your last edit" if editor['last_edit'] else "joined the editor team"})
    template = """Hi {username},

        It's been quite some time since you {last_action} at supercharge.info on {last_activity}.

        The group of editors has grown quite large, and many editors have not been active in more than a year.

        If you intend to continue contributing to supercharge.info as an editor please post a message to the following forum thread to inform us that you'd like to remain an editor. Please also include any geographical areas that you will be monitoring.

          {discourse_url}/t/{editor_activelist}

        Your supercharge.info editor access will be removed after one month from the date of this email if no post is made to the above forum thread.

        Thank you,

        The team at supercharge.info
    """.format(**dict(**config, **editor))

    # strip away leading whitespace from the template, but leave blank lines intact
    template = re.sub(r'^[^\S\r\n]+|[^\S\r\n]+$', '', template, flags=re.MULTILINE)
    # add back two spaces before discourse url
    template = template.replace(config['discourse_url'], "  {}".format(config['discourse_url']))

    return template


def main(testing=False, testing_editors=[], send_editor_emails=False, exclude_editors=[]):
    configProps = helpers.getConfig('db discourse smtp')

    # replace dots with underscores in config keys, for format strings
    config = {}
    for configkey, configvalue in configProps.items():
        config[configkey.replace('.','_')] = configvalue

    editors = getEditors(configProps, testing_editors=testing_editors)
    editors = [editor for editor in editors if editor['username'] not in exclude_editors]
    print("Excluding {} results in {} editors.".format(','.join(exclude_editors), len(editors)))

    if not editors:
        print("No editors found, exiting.")
        sys.exit(1)
    else:
        if configProps.keys() & {'smtp.host', 'smtp.port', 'smtp.user', 'smtp.password',
                                 'admin.name', 'admin.user', 'admin.email.from', 'admin.email.address',
                                 'discourse.url', 'editor.instructions', 'editor.activelist'}:

            messages = []

            admin_summary = f"""<!DOCTYPE html><html><head><style>th{{text-align:left}}th,td{{padding:2px 5px}}</style></head><body>
                <p>The following {len(editors)} editors haven't contributed and were {'<b>NOT</b>' if not send_editor_emails else ''} notified:</p>
                <table><tr><th>Username</th><th>Email</th><th>Last Activity</th></tr>"""
            
            for editor in editors:
                editor.update({'last_activity': editor['last_edit'] if editor['last_edit'] else "{}*".format(editor['editor_date'])})
                admin_summary += '<tr><td>{username}</td><td>{email}</td><td>{last_activity}</td></tr>'.format(**editor)

                if send_editor_emails:
                    print('Building email to editor {username} at {email}'.format(**editor))

                    editor_message = EmailMessage()
                    editor_message.set_content(getEditorMessageContent(config, editor))
                    editor_message['Subject'] = 'supercharge.info Editor Access Pending Removal'
                    editor_message['From'] = config.get('admin_email_from', config.get('admin_email_address', configProps['smtp.user']))
                    editor_message['To'] = editor['email']
                    messages.append(editor_message)

            # Summary email
            admin_summary += "</table><p>* Denotes when the editor was added instead since they've never made an edit.</p></body></html>"
            print('Building email to admin at {admin_email_address}'.format(**config))
            admin_message = EmailMessage()
            admin_message['Subject'] = f"Inactive Editors {'NOT ' if not send_editor_emails else ''}Emailed"
            admin_message['From'] = configProps['smtp.user']
            admin_message['To'] = configProps['admin.email.address']
            admin_message.add_alternative(admin_summary, subtype='html')
            messages.append(admin_message)

            print("email would have been sent, number of messages: {}".format(len(messages)))
            helpers.sendEmails(messages, configProps)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--testing', action='store_true', default=False,
                            help="--testing=True (the default) limits the editors queried to those in --editors")
    parser.add_argument('--editors', default=[], type=lambda x: x.split(','), 
                            help="a case sensitive, comma separated list of editor usernames")
    parser.add_argument('--exclude-editors', default=[], type=lambda x: x.split(','),
                            help="a comma separated list of editor usernames to exclude")
    parser.add_argument('--yes-send-editor-emails', action='store_true', default=False)

    args = parser.parse_args()

    send_editor_emails = False
    if args.yes_send_editor_emails:
        confirm_YES = input("Are you *certain* you want to send email to the editors? Type YES if so: ")
        if confirm_YES == 'YES':
            send_editor_emails = True

    if args.testing:
        if not args.editors:
            print("When testing, one or more editor usernames are required via --editors as case sensitive, comma separated list.")
            sys.exit(1)

    main(testing=args.testing,
         testing_editors=args.editors,
         send_editor_emails=send_editor_emails,
         exclude_editors=args.exclude_editors)
