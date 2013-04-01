#!/usr/bin/env python

import sys, os
import cgi, json

print "Content-type: text/plain"
print
"""
line = []
itemlist = []
dic = []
"""
line = [0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5]
itemlist = [1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6]
#dic = [0,1,2,3]

fh = open("model_info.txt","r")

for i in range(0,16):
    line[i] = fh.readline()
    itemlist[i] = line[i].split('\t')
    #dic[i] = line[i].split('\t')

file_name = []
model_name = []
annotation = []
pathway_map = []


for i in range(1,len(itemlist)):
    file_name.append([itemlist[i][0]])
    model_name.append([itemlist[i][1]])
    annotation.append([itemlist[i][2]])
    pathway_map.append([itemlist[i][3]])


result = dict(file_name = file_name,model_name = model_name,annotation = annotation,pathway_map = pathway_map)

fh.close()


print json.dumps(result, sort_keys=True, indent=4)
