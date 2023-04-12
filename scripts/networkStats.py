#!/usr/bin/env python3
import helpers
from datetime import date, timedelta
from email.message import EmailMessage

def isLastWeek(dateStr):
    d = date.fromisoformat(dateStr)
    return d >= date.today() - timedelta(7) and d < date.today()

def recentSites(site):
    return 'dateOpened' in site and isLastWeek(site['dateOpened'])

def recentChanges(change):
    return isLastWeek(change['date'])

sites = list(filter(recentSites, helpers.getSites()))
changes = list(filter(recentChanges, helpers.getChanges()))


# Build report
report = {
    'sites': len(sites),
    'stalls': sum(c['stallCount'] for c in sites),
    'construction': sum(1 for c in changes if c['siteStatus'] == 'CONSTRUCTION'),
    'permit': sum(1 for c in changes if c['siteStatus'] == 'PERMIT'),
    'datespan': (date.today() - timedelta(7)).isoformat() + ' to ' + (date.today() - timedelta(1)).isoformat()
}

configProps = helpers.getConfig('smtp')
if configProps.keys() & {'smtp.host', 'smtp.port', 'smtp.user', 'smtp.password', 'admin.email'}:
    # Build email
    msg = EmailMessage()
    msg['Subject'] = 'Weekly Supercharger Stats: {}'.format(report['datespan'])
    msg['From'] = configProps['smtp.user']
    msg['To'] = configProps['admin.email']
    msg.add_alternative("""<!DOCTYPE html><html><body><p>supercharge.info statistics for {datespan}:</p><p>
        \U0001F4CD {sites} sites opened<br/>
        \U0001F50C {stalls} stalls opened<br/>
        \U0001F6A7 {construction} sites newly under construction<br/>
        \U0001F4DD {permit} sites newly permitted</p></body></html>""".format(**report), subtype='html')

    # Send email
    helpers.sendEmails([msg], configProps)
else:
    print("Couldn't find full email server information")
