#!/usr/bin/env python
from emlsupport import *
import ecell, ecell.emc, ecell.ecs, ecell.Session
import sys, os, array, json, time, random, cgi
import xml.sax.saxutils
from pprint import pprint

# Get and parse a query string
query_string_key = 'QUERY_STRING'
if query_string_key in os.environ:
    query = cgi.parse_qs(os.environ[query_string_key])
else:
    query = {}


# Get and escape a MESSAGE
ID = ""
if 'ID' in query:
    ID = cgi.escape(query['ID'][0])

name = str( int(time.time() % 1296000) * 10 + int(random.random()) + 1048576 )

os.mkdir("./results/guest/" + name)
os.system("chmod 777 ./results/guest/" + name)
os.system("cp ../../ecell/models/" + ID + " ./results/guest/" + name + "/" + name + ".em")
os.system("cp /var/www/ems/merge_ecd_msec.pl ./results/guest/"+ name + "/")

# convert EM to EML (by em2eml)
os.system("/usr/local/bin/ecell3-em2eml --outfile=./results/guest/" + name + "/" + name + ".eml ./results/guest/" + name + "/" + name + ".em")

# load EML model and list-up all variable (PATH, Value, MolarConc)
anEMLFileName = "./results/guest/" + name + "/" + name + ".eml"
aSimulator = ecell.emc.Simulator()
aSession = ecell.Session.Session(aSimulator)
aSession.loadModel(anEMLFileName)

anEmlSupport = EmlSupport(anEMLFileName)
variable = []

line = ""
for anID in anEmlSupport.getVariableList():
    Value     = aSession.theSimulator.getEntityProperty('Variable:' + anID + ':Value')
    MolarConc = aSession.theSimulator.getEntityProperty('Variable:' + anID + ':MolarConc')

    (Path, ID) = anID.split(':')
    variable.append([ID, Path, Value, MolarConc])

# written by Duke
    line = line + str(Path) +"/"+ str(ID) + "\t" + "0\t" +"0\t"+ str(Value) +"\t"+ str(MolarConc) + "\n"

if os.path.exists("history.txt"):
    ft = open("./results/guest/"+name+"/history.txt", "a")
    ft.close()
else:
    # history file
    ff = open("history.txt", 'w+')
    ff.write(line)
    ff.close()

    # latest value and molar conc info
    ff2 = open("latest_value.txt", "w")
    ff2.write(line)
    ff2.close()

# Path -> /CELL/CYTOPLASM
# ID   -> AK
# anID -> /CELL/CYTOPLASM:AK

process = []
for anID in anEmlSupport.getProcessList():
    Activity      = aSession.theSimulator.getEntityProperty('Process:' + anID + ':Activity')
    MolarActivity = aSession.theSimulator.getEntityProperty('Process:' + anID + ':MolarActivity')
    ClassName     = aSession.theSimulator.getEntityClassName('Process:' + anID)

    if ClassName == "ExpressionFluxProcess":
        Expression  = aSession.theSimulator.getEntityProperty('Process:' + anID + ':Expression')
    else:
        # [TODO] set correct Expression for any class
        Expression = ""
        
    VariableReferenceList = ', '.join(['[' + ', '.join([str(ll) for ll in l]) + ']' for l in aSession.theSimulator.getEntityProperty('Process:' + anID + ':VariableReferenceList')])

    (Path, ID) = anID.split(":")
    process.append([ID, Path, Activity, MolarActivity, ClassName, Expression, VariableReferenceList])


result = dict(ID=name, Variable=variable, Process=process)

print "Content-Type: text/plain"
print
print json.dumps(result, sort_keys=True, indent=4)

sys.exit()
