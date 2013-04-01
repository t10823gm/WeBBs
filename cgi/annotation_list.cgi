#!/usr/bin/env python

import sys, os
import cgi, json

print "Content-type: text/plain"
print

# Get and parse a query string                                                                                        
query_string_key = 'QUERY_STRING'
if query_string_key in os.environ:
    query = cgi.parse_qs(os.environ[query_string_key])
else:
    query = {}

# Get and escape a MESSAGE                                                                                            
ID_key = 'file_name'
if ID_key in query:
    ID = cgi.escape(query[ID_key][0])

else:
    print "No File Name"





line = [0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5]
itemlist = [1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6]
result = 0

fh = open("model_info.txt","r")

for i in range(0,16):
    line[i] = fh.readline()
    itemlist[i] = line[i].split('\t')


for j in range(len(itemlist)):
    if ID == itemlist[j][0]:
        result = itemlist[j][2]

fh.close()

print json.dumps(result, sort_keys=True, indent=4)

