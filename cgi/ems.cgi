#!/usr/bin/env python
### Author: Gembu Maryu

from emlsupport import *
import ecell, ecell.emc, ecell.ecs, ecell.Session
import sys, os, re, glob, time
import cgi
import json
import shutil
import stat

print "Content-type: text/plain"
print

#################

### Show error as a page description.                
#sys.stderr = sys.stdout

### Get and parse a query string     
query_string_key = 'QUERY_STRING'
if query_string_key in os.environ:
    query = cgi.parse_qs(os.environ[query_string_key])
else:
    query = {}


### Get and escape a MESSAGE
ID_key = 'session_ID'
if ID_key in query:
    ID = cgi.escape(query[ID_key][0])

else:
    ID = "1446806"

### File handling
rf = open("../ems/tutorial2.ems")            # Read ems file of each session 
wf = open("../ems/tmp.ems", "w")             # Temporary file

for line in rf:
    parts = re.split(" |\t", line)
    if parts[0] == 'EXPERIMENT_NAME':
        parts[3] = ID
        wf.write("EXPERIMENT_NAME = \'" + ID +"\'")

    elif parts[0] == 'DATA_DIRECTORY':
        wf.write("DATA_DIRECTORY = '/var/www/gem/results/guest/" + ID + "'" )

    else:
        wf.write(line)

os.system('ecell3-session-manager -e ../ems/tutorial2.ems &')
wf.close()
os.system('ecell3-session-manager -e ../ems/tmp.ems')

### Settle ECD files by JSON format
os.chdir("../results/guest/"+ ID +"/")

url = ""
list = glob.glob("*.ecd")
list_url = []
list_class = []

for file in list:
    url = "/gem/results/guest/" + ID +"/" + file
    list_url.append(url)

dict = { "Title":"","Data":list_url}
list_class.append(dict)

print json.dumps(list_class, sort_keys=True, indent=4)

#os.chdir('/var/www/webbs/results/guest/'+ ID +'/')
#os.chdir('/var/www/gem/results/guest/'+ ID +'/')
#os.system("perl merge_ecd_msec.pl result.txt")






#time.cgi

a = open('/home/yuichiro/tmp.ems','r')
b = a.readline()
k =  "START_TIME ="
h =  "END_TIME ="

while  b:
        b = a.readline()
        if k in b :
                  startbunkatu = b.split(' ')
                  c = startbunkatu[2];
                  print c

        else:
             if h in b :
                       endbunkatu = b.split(' ')
                       d = endbunkatu[2]
                       print d
a.close()
