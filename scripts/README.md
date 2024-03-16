# Script utilities for scheduled reports, tasks, etc.

## networkStats.py

Summarizes weekly network statistics by newly opened sites, stalls for new sites, new sites under construction, and new sites permitted in the past week. The results are emailed to the `admin.email`

## editorNag.py

Emails editors inactive for the past `editor.interval` months to let them know their access is pending removal, and they can maintain the privilege by submitting an edit or messaging `admin.user` on the forums. A summary of the editors messaged is emailed to `admin.email.address`

### Parameters:

- dry: Performs a dry run and does not email any editors, only a summary to the admin

## helpers.py

Contains several helper functions to facilitate adding functionality

## sample.env

A sample configuration file with required and optional parameters. Copy to `.env` to be used by scripts

### Parameters

- `properties.file`: Points to a properties file which is used by the java API. A sample of this can be found at /service-dao/src/main/resources/com/redshiftsoft/tesla/dev-config.properties
- `admin.email.address`: The email used as a recipient for reports
- `admin.user`: The username of the admin
- `admin.name`: The friendly name of the admin
- `editor.thread`: The thread ID of editor instructions
- `editor.interval`: The number of months to look back for editors without contributions
- `mode.testing`: Flag to be set to denote testing mode, ie. only select the admin user for emailing
