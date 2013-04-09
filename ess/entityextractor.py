'''
File: entityextractor.py

A modeule to extract various informatin from the loaded model

Included methods in this module must be used after loadModel()

'''

import ecell.Session
import re

def getSystemList( aSession ):

    theSystemList = [ '/', ]
    for aEntryID in aSession.getEntityList( 'System', '/' ):
        theSystemList.append( '/' + aEntryID )

    i = 1

    while len(theSystemList) > i:
        j = i

        i = len( theSystemList )
        for aSystemID in theSystemList[j:]:
            #message( 'Searching System: ' + aSystemID )
            aSubSystemList = aSession.getEntityList( 'System', aSystemID )
            for aSubSystemID in aSubSystemList:
                newSystemFullID =  aSystemID + '/' + aSubSystemID
                theSystemList.append( newSystemFullID )
                #message( '    Added Path :' + newSystemFullID )

    return theSystemList


def getVariableList( aSession, theSystemList ):
                
    theVariableList = []
    for aSystemID in theSystemList:
        for aVariableID in aSession.getEntityList( 'Variable', aSystemID ):
            theVariableList.append( 'Variable:' + aSystemID + ':' + aVariableID )

    return theVariableList


def getProcessList( aSession, theSystemList ):
            
    theProcessList = []
    for aSystemID in theSystemList:
        for aProcessID in aSession.getEntityList( 'Process', aSystemID ):
            theProcessList.append( 'Process:' + aSystemID + ':' + aProcessID )

    return theProcessList


def getLoggedFullPNList( aSession, aEntityList ):

    v = re.compile( '(^Variable:)' )
    p = re.compile( '(^Process:)' )


    theLoggedFullPNList = []

    for aEntityID in aEntityList:
        if v.search( aEntityID ):
            theLoggedFullPNList.append( aEntityID + ':Value' )
        elif p.search( aEntityID ):
            aProcessStub = aSession.createEntityStub( aEntityID )
            aPropatyList = []
            for aPropaty in aProcessStub.getPropertyList():
                aPropatyList.append( aPropaty )
                
#            theLoggedFullPNList.append( aEntityID + ':Activity' )
            
            try:
                i = aPropatyList.index( 'I' )
                theLoggedFullPNList.append( aEntityID + ':I' )
#                theLoggedFullPNList.append( aEntityID + ':INa' )
#                theLoggedFullPNList.append( aEntityID + ':IK' )
#                theLoggedFullPNList.append( aEntityID + ':ICa' )
            except ValueError ,e:
                theLoggedFullPNList.append( aEntityID + ':Activity' )
                #pass # No property for ionic current.

    return theLoggedFullPNList


def FullPN2FileName( aFullPN ):
    p = re.compile( '(/|:)' )
    return p.sub( '_', aFullPN )
