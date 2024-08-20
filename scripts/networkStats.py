#!/usr/bin/env python3
import helpers
import sys
from datetime import date, timedelta
from email.message import EmailMessage

def inPeriod(dateStr):
    d = date.fromisoformat(dateStr)
    return d >= beginOn and d < endBy

def recentSites(site):
    return 'dateOpened' in site and inPeriod(site['dateOpened'])

def recentChanges(change):
    return inPeriod(change['date'])

def formatStats(data, option=''):
    lines = []
    if not option:
        lines.append('\u2022 \U0001F4CD {} site{} opened'.format(data['sites'], 's' if data['sites'] != 1 else ''))
        lines.append('\u2022 \U0001F50C {} stall{} opened'.format(data['stalls'], 's' if data['stalls'] != 1 else ''))
        if data['expanded'] != 0:
            lines.append('\u2022 \U0001F4C8 {} site{} expanded by {} stall{}'
                 .format(data['expanded'], 's' if data['expanded'] != 1 else '', data['expandedStalls'], 's' if data['expandedStalls'] != 1 else ''))
        if data['expanding'] != 0:
            lines.append('\u2022 \U000026A0 {} site{} began expansion'.format(data['expanding'], 's' if data['expanding'] != 1 else ''))
        lines.append('\u2022 \U0001F6A7 {} site{} began construction'.format(data['construction'], 's' if data['construction'] != 1 else ''))
        lines.append('\u2022 \U0001F4DD {} more site{} planned'.format(data['permit'], 's' if data['permit'] != 1 else ''))
    elif option == 'noemoji':
        lines.append('\xa0\u2022 {} site{} opened'.format(data['sites'], 's' if data['sites'] != 1 else ''))
        lines.append('\xa0\u2022 {} stall{} opened'.format(data['stalls'], 's' if data['stalls'] != 1 else ''))
        if data['expanded'] != 0:
            lines.append('\xa0\u2022 {} site{} expanded by {} stall{}'
                .format(data['expanded'], 's' if data['expanded'] != 1 else '', data['expandedStalls'], 's' if data['expandedStalls'] != 1 else ''))
        if data['expanding'] != 0:
            lines.append('\xa0\u2022 {} site{} began expansion'.format(data['expanding'], 's' if data['expanding'] != 1 else ''))
        lines.append('\xa0\u2022 {} site{} began construction'.format(data['construction'], 's' if data['construction'] != 1 else ''))
        lines.append('\xa0\u2022 {} more site{} planned'.format(data['permit'], 's' if data['permit'] != 1 else ''))
    elif option == 'short':
        lines.append('{} site{} opened ({} stall{})'.format(data['sites'], 's' if data['sites'] != 1 else '', data['stalls'], 's' if data['stalls'] != 1 else ''))
    else:
        for j in sorted(data['regions'].keys()):
            if option == 'country':
                lines.append('{}: {}'.format(j, *formatStats(data['regions'][j], 'short')))
                for k in sorted(data['regions'][j]['countries'].keys()):
                    lines.append('\xa0\u2022 {}: {}'.format(k, *formatStats(data['regions'][j]['countries'][k], 'short')))
            else:
                lines.append('{}:'.format(j))
                lines.extend(formatStats(data['regions'][j], 'noemoji'))
    return lines

# Read # of days/period parameter
beginOn = date.today() - timedelta(7)
endBy = date.today()
period = 'Weekly'
for x in sys.argv:
    if x.isnumeric():
        endBy = date.today()
        beginOn = endBy - timedelta(int(x))
        if int(x) == 7:
            period = 'Weekly'
        else:
            period = 'Custom'
    elif 'quarter' in x.lower():
        endBy = date.today().replace(day=1, month=(date.today().month - 1) // 3 * 3 + 1)
        beginOn = (endBy - timedelta(89)).replace(day=1)
        period = 'Quarterly'
    elif 'month' in x.lower():
        endBy = date.today().replace(day=1)
        beginOn = (endBy - timedelta(28)).replace(day=1)
        period = 'Monthly'
    elif 'year' in x.lower():
        endBy = date.today().replace(day=1, month=1)
        beginOn = endBy.replace(year=endBy.year-1)
        period = 'Annual'

sites = list(filter(recentSites, helpers.getSites()))
changes = list(filter(recentChanges, helpers.getChanges()))

# Build report
report = {
    'sites': len(sites),
    'stalls': sum(c['stallCount'] for c in sites),
    'expanded': sum(1 for c in changes if c['siteStatus'] == 'OPEN' and c['prevStatus'] == 'EXPANDING' and c['prevCount'] < c['stallCount']),
    'expandedStalls': sum(c['stallCount'] - c['prevCount'] for c in changes if c['siteStatus'] == 'OPEN' and c['prevStatus'] == 'EXPANDING' and c['prevCount'] < c['stallCount']),
    'expanding': sum(1 for c in changes if c['siteStatus'] == 'EXPANDING' and c['prevStatus'] != 'EXPANDING'),
    'construction': sum(1 for c in changes if c['siteStatus'] == 'CONSTRUCTION' and c['prevStatus'] != 'CONSTRUCTION'),
    'permit': sum(1 for c in changes if c['siteStatus'] == 'PERMIT' and c['prevStatus'] not in ['PLAN', 'PERMIT']),
    'regions': {}
}

# Build report by region/country
for s in sites:
    if s['address']['region'] not in report['regions']:
        report['regions'][s['address']['region']] = {
            'sites': 0,
            'stalls': 0,
            'expanded': 0,
            'expandedStalls': 0,
            'expanding': 0,
            'construction': 0,
            'permit': 0,
            'countries': {}
        }
    if s['address']['country'] not in report['regions'][s['address']['region']]['countries']:
        report['regions'][s['address']['region']]['countries'][s['address']['country']] = {
            'sites': 0,
            'stalls': 0
        }
    report['regions'][s['address']['region']]['sites'] += 1
    report['regions'][s['address']['region']]['stalls'] += s['stallCount']
    report['regions'][s['address']['region']]['countries'][s['address']['country']]['sites'] += 1
    report['regions'][s['address']['region']]['countries'][s['address']['country']]['stalls'] += s['stallCount']

for c in changes:
    if c['region'] not in report['regions']:
        report['regions'][c['region']] = {
            'sites': 0,
            'stalls': 0,
            'expanded': 0,
            'expandedStalls': 0,
            'expanding': 0,
            'construction': 0,
            'permit': 0,
            'countries': {}
        }
    if c['siteStatus'] == 'CONSTRUCTION' and c['prevStatus'] != 'CONSTRUCTION':
        report['regions'][c['region']]['construction'] += 1
    elif c['siteStatus'] == 'OPEN' and c['prevStatus'] == 'EXPANDING' and c['prevCount'] < c['stallCount']:
        report['regions'][c['region']]['expanded'] += 1
        report['regions'][c['region']]['expandedStalls'] += c['stallCount'] - c['prevCount']
    elif c['siteStatus'] == 'EXPANDING' and c['prevStatus'] != 'EXPANDING':
        report['regions'][c['region']]['expanding'] += 1
    elif c['siteStatus'] in ['PLAN', 'PERMIT'] and c['prevStatus'] not in ['PLAN', 'PERMIT']:
        report['regions'][c['region']]['permit'] += 1

body = {
    'datespan': str(beginOn.year) + ' Q' + str((beginOn.month - 1)//3+1) if period == 'Quarterly'
        else beginOn.strftime('%B %Y') if period == 'Monthly'
        else str(beginOn.year) if period == 'Annual'
        else beginOn.isoformat() + ' to ' + (endBy - timedelta(1)).isoformat(),
    'worldwide': '<br>'.join(formatStats(report)),
    'regional': '<br>'.join(formatStats(report, 'region')),
    'national': '<br>'.join(formatStats(report, 'country'))
}

configProps = helpers.getConfig('smtp')
if configProps.keys() & {'smtp.host', 'smtp.port', 'smtp.user', 'smtp.password', 'admin.email.address'}:
    # Build email
    msg = EmailMessage()
    msg['Subject'] = '{} Supercharger Stats: {}'.format(period, body['datespan'])
    msg['From'] = configProps['smtp.user']
    msg['To'] = configProps['admin.email.address']
    msg.add_alternative("""<!DOCTYPE html><html><body><p>supercharge.info Global stats for {datespan}:</p><p>{worldwide}</p>
            <p>Regional stats for {datespan}:</p><p>{regional}</p>
            <p>National stats for {datespan}:</p><p>{national}</p></body></html>""".format(**body), subtype='html')

    # Send email
    helpers.sendEmails([msg], configProps)
else:
    print("Couldn't find full email server information... Writing to screen instead")
    print(body['datespan'] + ':')
    for a in formatStats(report):
        print(a)
    print('Regional:')
    for a in formatStats(report, 'region'):
        print(a) 
    print('National:')
    for a in formatStats(report, 'country'):
        print(a) 
