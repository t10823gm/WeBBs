#!/usr/bin/env python
# $Id: echo_world.cgi,v 1.2 2009/02/02 12:52:37 noritan Exp $

from emlsupport import *
import ecell, ecell.emc, ecell.ecs, ecell.Session
import sys, os
import cgi
import json
import shutil
import stat

class DevNull(object):
    data = []

    def write(self, data):
        self.data.append(data)

    def clear(self):
        self.data = []

print "Content-type: text/plain"
print

#################

# Show error as a page description.                                                                        
sys.stderr = sys.stdout

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
    ID = "1446806"

###########

anEMLFileName = "../results/guest/" + ID + "/" + ID + ".eml"
runtime = 100

aSimulator = ecell.emc.Simulator()
aSession = ecell.Session.Session(aSimulator)

## load model ##

aSession.loadModel(anEMLFileName)
anEmlSupport = EmlSupport(anEMLFileName)


## get variable List ##

VariableList = anEmlSupport.getVariableList()
VariableList.pop()

#print VariableList


## create Logger ##

for id in VariableList:
    aStub = aSession.createLoggerStub("Variable:%s:MolarConc" % id)
    aStub.create()

## run  ##

#aSession.run(runtime)
os.system('ecell3-session-manager -e ../ems/tutorial.ems')


## save data ##

_stdout = DevNull()
original_stdout = sys.stdout
sys.stdout = _stdout

aSession.saveLoggerData()

# if not os.path.isdir("./%s" % (DataDir)):
#os.mkdir(DataDir)

#aSession.saveLoggerData(aSaveDirectory = ID)

sys.stdout = original_stdout


# Show MESSAGE                                                                                            

url = ""

list = os.listdir('./Data')
list_url = []
list_class = []


for file in list:
    url = '/webbs/results/guest/' + ID +"/" + file
    list_url.append(url)

for i in range (0,len(list)):                  ## move ECDfile to sessionID directly
    shutil.move("./Data/" + list[i],"./")
shutil.rmtree("./Data")                        ##remove "Data" directly

dict = { "Title":"","Data":list_url}
list_class.append(dict)

print json.dumps(list_class, sort_keys=True, indent=4)

os.chdir('/var/www/webbs/results/guest/'+ ID +'/')
os.system("perl merge_ecd_msec.pl result.txt")
