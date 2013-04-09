#----------------------------------------------------------------------
'''
File: ecdhandler.py

A modeule to manipulate ecd files.
'''
#----------------------------------------------------------------------

import os
import string
import re

def getValueList( aEcdPath, aLabel = '' ):

    aEcdFile = open( aEcdPath, 'r' )

    aValueList = []
    if aLabel != '':
        aValueList.append( aLabel )

    aEcdLineList = aEcdFile.readlines()
    for aEcdLine in aEcdLineList:
        if aEcdLine[ 0 ] != '#':
            aValueList.append( aEcdLine.split( '\t' )[ 1 ] )

    aEcdFile.close()

    return aValueList

def getIthValueList( aEcdPath, i, aLabel = '' ):

    aEcdFile = open( aEcdPath, 'r' )

    aValueList = []
    if aLabel != '':
        aValueList.append( aLabel )

    aEcdLineList = aEcdFile.readlines()
    for aEcdLine in aEcdLineList:
        if aEcdLine[ 0 ] != '#':
            aValueList.append( aEcdLine.split( '\t' )[ i ] )

    aEcdFile.close()

    return aValueList


def getValueAtTime( aEcdPath, theTime ):
    aFile = open( aEcdPath, 'r' )
    aECD = aFile.readlines()
    aFile.close()

    theFullPN = string.strip( aECD[0][7:] )
    
    for aLine in aECD:
        if aLine[ 0 ] == '#':
            continue
        
        aTimePointData = aLine.split( '\t' )
        theValue = aTimePointData[ 1 ]
        
        if float( aTimePointData[ 0 ] ) > theTime:
            break

    return [ theFullPN, theValue]


def getECDList( aPath ):
    ecd = re.compile( '(.*\.ecd)' )
    aECDList = []

    aFileList = os.listdir( aPath )
    
    for aFile in aFileList:
        if ecd.search( aFile ):
            aECDList.append( aFile )

    return aECDList

