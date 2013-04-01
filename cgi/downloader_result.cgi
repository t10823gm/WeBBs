#!/usr/bin/env python
import re, os, cgi, sys
import glob
import string
"""
print "Content-type: text/plain"
print 
"""

# Get and parse a query string                                                                             
query_string_key = 'QUERY_STRING'
if query_string_key in os.environ:
    query = cgi.parse_qs(os.environ[query_string_key])
else:
    query = {}



#print query    
# Get and escape a MESSAGE                                                                                 
ID_key = 'session_ID'
#print model_name
if ID_key in query:
    ID = cgi.escape(query[ID_key][0])
else:
    ID =""

#print ID
BASE_URL = '/var/www/dysuke/es/results/guest/'
DL_URL = BASE_URL + ID
#print BASE_URL + ID + "result.txt"


print "Content-type: application/octet-stream"
print "Content-Disposition: attachment; filename='result.txt'"
print

#print DL_URL + "/result.txt"

for line in open(BASE_URL + ID + "/result.txt", 'r'):
#for line in open(BASE_URL + ID + "/merge_per_sec.pl", 'r'):
    print line

