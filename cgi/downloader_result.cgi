#!/usr/bin/env python
import re, os, cgi, sys
import glob
import string

# Get and parse a query string                                                                             
query_string_key = 'QUERY_STRING'
if query_string_key in os.environ:
    query = cgi.parse_qs(os.environ[query_string_key])
else:
    query = {}


# Get and escape a MESSAGE                                                                                 
ID_key = 'session_ID'
if ID_key in query:
    ID = cgi.escape(query[ID_key][0])
else:
    ID =""

BASE_URL = '/var/www/gem/results/guest/'
#BASE_URL = '/var/www/webbs/results/guest/'
DL_URL = BASE_URL + ID

print "Content-type: application/octet-stream"
print "Content-Disposition: attachment; filename='result.txt'"
print

for line in open(BASE_URL + ID + "/result.txt", 'r'):
    print line

