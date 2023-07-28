import json
import os
import psycopg2
import psycopg2.extras
import re
import smtplib
from urllib.request import urlopen

def getSites():
    SITES_URL = 'https://supercharge.info/service/supercharge/allSites'
    with urlopen(SITES_URL) as response:
        return json.loads(response.read())

def getChanges():
    CHANGES_URL = 'https://supercharge.info/service/supercharge/allChanges'
    with urlopen(CHANGES_URL) as response:
        return json.loads(response.read())

def parseConnectionStr(dbHost):
    result = re.match(r'jdbc:(?P<protocol>.+)://(?P<hostname>[^:/]+)(?::(?P<port>\d+))?(?:/(?P<database>[^?]+))?', dbHost)
    if result:
        return result.groupdict()

def createConnection(config):
    dbHost = parseConnectionStr(config['db.url'])
    if dbHost:
        return psycopg2.connect(
            database=dbHost['database'],
            user=config['db.user'],
            password=config['db.password'],
            host=dbHost['hostname'],
            port=dbHost['port'] or 5432,
            options='-c search_path={0}'.format(config['db.schema']) if 'db.schema' in config else '')

def readQuery(connection, query):
    with connection.cursor() as cursor:
        cursor.execute(query)
        return cursor.fetchall()

def readQueryDict(connection, query):
    with connection.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cursor:
        cursor.execute(query)
        return cursor.fetchall()

def getConfig(prefixes):
    configProps = {}
    if os.path.isfile('.env'):
        with open('.env') as f:
            # Read config file
            for line in f:
                if not line.startswith('#'):
                    conf = [x.strip() for x in line.split('=', 1)]
                    if len(conf) == 2:
                        configProps[conf[0]] = conf[1]
    if 'properties.file' in configProps and os.path.isfile(configProps['properties.file']):
        with open(configProps['properties.file']) as f:
            # Read props file
            for line in reversed(f.readlines()):
                if not line.startswith('#'):
                    # Reverse order to not overwrite config keys and respect order of properties keys at same time
                    prop = [x.strip() for x in line.split('=', 1)]
                    if len(prop) == 2 and prop[0] not in configProps:
                        for p in prefixes.split(' '):
                            if prop[0] == p or prop[0].startswith(f'{p}.'):
                                configProps[prop[0]] = prop[1]
    return configProps

def sendEmails(msgs, config):
    with smtplib.SMTP_SSL(config['smtp.host'], 465) if config['smtp.port'] == '465' else smtplib.SMTP(config['smtp.host'], int(config['smtp.port'])) as smtp:
        if config['smtp.port'] != '465':
            smtp.starttls()
        smtp.login(config['smtp.user'], config['smtp.password'])
        for m in msgs:
            smtp.send_message(m)
