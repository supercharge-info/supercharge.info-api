import requests
import json

# This request likely won't work if run directly from Python, but seems to work in Chrome and Firefox.
# Paste the URL below into your browser, wait for the result, right-click on the page,
# Save As "tesla-com-locations.json" and run this script as-is, saving the output to a .sql file
# like "nacs.sql"

# If running this script on Windows, you'll probably need to run the "iconv" command
# on the generated SQL file before using it on any supercharge.info database.
# <charset> will probably be iso-8859-1
#
# file -bi <pythonoutputfilename>
# iconv -f <charset> -t utf-8 -o <convertedfilename> <pythonoutputfilename>

#locations = requests.get('https://www.tesla.com/cua-api/tesla-locations?usetrt=true')
file = open('./tesla-com-locations.json')
locations = json.load(file)

#locations = requests.get('https://www.tesla.cn/cua-api/tesla-locations?usetrt=true')
#file = open('./tesla-cn-locations.json')
#locations += json.load(file)

# Put the results into a separate dict before printing to prevent duplicates and allow sorting
# Sorting isn't necessary since the table has a primary key but it's nice to have
output = {}
nacs = 0

print("""
CREATE TABLE IF NOT EXISTS nacsflags (location_id varchar(300) primary key, nacs boolean);
TRUNCATE TABLE nacsflags;
""")
print("INSERT INTO nacsflags (location_id, nacs) VALUES")
for site in locations:
    if 'location_type' in site:
        if 'nacs' in site['location_type'] and 'supercharger' in site['location_type']:
            output[site['location_id']] = True
            nacs += 1
        elif 'supercharger' in site['location_type']:
            output[site['location_id']] = False

prefix = " "
for row in sorted(output.keys()):
    print(f"{prefix}('{row}',{output[row]})")
    prefix = ","
print(';')
print(f'-- {nacs} of {len(locations)} locations are NACS')
print("""
UPDATE site
SET other_evs = true, plugs_nacs = COALESCE(plugs_nacs, 0) + plugs_tpc, plugs_tpc = 0
FROM nacsflags n
WHERE site.location_id = n.location_id
AND n.nacs = true
AND (site.plugs_nacs > 0 OR site.plugs_tpc > 0);
      
UPDATE site
SET plugs_tpc = COALESCE(plugs_tpc, 0) + plugs_nacs, plugs_nacs = 0
WHERE plugs_nacs > 0 AND other_evs = false;
""")
