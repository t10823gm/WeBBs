#!/usr/bin/env python
# -*- coding: utf-8 -*-

from emlsupport import *
import sys, os, json, cgi, cgitb
import ecell, ecell.emc, ecell.ecs, ecell.Session
cgitb.enable( format = "text")

form = cgi.FieldStorage()
if form.has_key("sessionID"):
    sessionID = form["sessionID"].value
else:
    print "Status: 404 Not Found"
    sys.exit()

if form.has_key("PATH"):
    PATH = form["PATH"].value
else:
    print "Status: 400 Bad Request"
    sys.exit()


if form.has_key("userID"):
    userID = form["userID"].value
else:
    userID = "guest"

if os.path.exists("../results/"+ userID + "/" + sessionID):
    anEMLFileName = "../results/" + userID + "/" + sessionID + "/" + sessionID + ".eml"
    aSimulator = ecell.emc.Simulator()
    aSession = ecell.Session.Session(aSimulator)
    aSession.loadModel(anEMLFileName)
    anEmlSupport = EmlSupport(anEMLFileName)

    process = []
    for anID in anEmlSupport.getProcessList():
        if anID == PATH:
            iniList = set(['Name', 'Activity', 'Priority', 'IsContinuous', 'VariableReferenceList', 'MolarActivity', 'Expression', 'StepperID'])
            Activity      = aSession.theSimulator.getEntityProperty('Process:' + anID + ':Activity')
            MolarActivity = aSession.theSimulator.getEntityProperty('Process:' + anID + ':MolarActivity')
            ClassName     = aSession.theSimulator.getEntityClassName('Process:' + anID)
            aList =  set(aSession.theSimulator.getEntityPropertyList('Process:' + anID)) - iniList
            List =  list(aList)

            plist = []
            for PN in List:
                plist.append( dict( Name=PN, Value=(aSession.theSimulator.getEntityProperty('Process:' + anID + ':'+PN))) )

            if ClassName == "ExpressionFluxProcess":
                Expression  = aSession.theSimulator.getEntityProperty('Process:' + anID + ':Expression')
            else:
                Expression = ClassName

            VariableReferenceList = ', '.join(['[' + ', '.join([str(ll) for ll in l]) + ']' for l in aSession.theSimulator.getEntityProperty('Process:' + anID + ':VariableReferenceList')])

            (Path, ID) = anID.split(":")
            result = dict(ReactionName=ID, Path=Path, Activity=Activity, MolarActivity=MolarActivity, ClassName=ClassName, Expression=Expression, VariableReferenceList= VariableReferenceList, PropertyList=plist)

            print "Content-Type: text/plain"
            print
            print json.dumps(result, sort_keys=True, indent=4)
            sys.exit()

else:
    print"Status: 204 No Content"
