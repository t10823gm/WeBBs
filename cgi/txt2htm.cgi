#!/usr/bin/env python
import re, os, cgi, sys
import glob
import string
from xml.sax.saxutils import escape

print "Content-type: text/html"
print

# Get and parse a query string                                                                             
query_string_key = 'QUERY_STRING'
if query_string_key in os.environ:
    query = cgi.parse_qs(os.environ[query_string_key])
else:
    query = {}
    
# Get and escape a MESSAGE                                                                                 
ID_key = 's_ID'
if ID_key in query:
    ID = cgi.escape(query[ID_key][0])
else:
    ID = ""

ecd_key = 'ecd_name'
if ecd_key in query:
    FN = cgi.escape(query[ecd_key][0])
else:
    FN =""

FPN_key = 'FPN'
if FPN_key in query:
    FPN = cgi.escape(query[FPN_key][0])
else:
    FPN =""

print "<!DOCTYPE html >"
print "<html>"
print "<head>"
print "<title>"+FN+"</title>"
print "<script type=\"text/javascript\" src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js\"></script>"
print "<script type=\"text/javascript\" src=\"../../Highcharts/js/highcharts.js\"></script>"
print "<script type=\"text/javascript\" src=\"../../Highcharts/js/modules/exporting.js\"></script>"
print "<script type=\"text/javascript\" src=\"../../Highcharts/js/highcharts.src.js\"></script>"
print "</head>"
print "<body>"
print "<div id=\"container\" style=\"width: 600px; height: 400px; margin: 0 auto\"></div>"
print "<script type=\"text/javascript\" src=\"../scripts/make_graph.js\"></script>"
print "<script type=\"text/javascript\">"
print "make_graph(" + ID +","+"\""+ FPN +"\""+")"
print "</script>"
print "</body> "
print "</html>"
