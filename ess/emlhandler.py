#!/usr/bin/python

import sys
import xml
import string
import ecdhandler

from xml.dom.ext.reader import Sax2
from xml.dom import EMPTY_NAMESPACE
from xml.dom.ext import Print
from ecdhandler import *

def getModel( doc ):
    #reader = Sax2.Reader()
    #doc = reader.fromStream( open( emlFile, 'r' ) )

    aModel = {}
    
    system_names = doc.getElementsByTagName( 'system' )
    for aSystem in system_names:
        aEntityList = []
        variable_names = aSystem.getElementsByTagName( 'variable' )
        for aVariable in variable_names:
            aEntityList.append( aVariable )
        process_names = aSystem.getElementsByTagName( 'process' )
        for aProcess in process_names:
            aEntityList.append( aProcess )

        aModel[ aSystem.getAttributeNS( EMPTY_NAMESPACE, 'id' ) ] = aEntityList

    return aModel


def getProperty_old( aFullPN ):
    aPropertyDic = parseFullPN( aFullPN )
    
    reader = Sax2.Reader()
    doc = reader.fromStream( open( 'GP.eml', 'r' ) )

    system_names = doc.getElementsByTagName( 'system' )

    for aSystem in system_names:
        if aSystem.getAttributeNS( EMPTY_NAMESPACE, 'id' ) == aPropertyDic[ 'SystemPath' ]:
            entity_names = aSystem.getElementsByTagName( string.lower( aPropertyDic[ 'EntityType' ] ) )
            for aEntity in entity_names:
                if aEntity.getAttributeNS( EMPTY_NAMESPACE, 'id' ) == aPropertyDic[ 'ID' ]:
                    property_names = aEntity.getElementsByTagName( 'property' )
                    for aProperty in property_names:
                        if aProperty.getAttributeNS( EMPTY_NAMESPACE, 'name' ) == aPropertyDic[ 'property_name' ]:
                            value_names = aProperty.getElementsByTagName( 'value' )
                            for aValue in value_names:
                                return aValue.firstChild.data


    return 'None'


def getProperty( aModelDic, aFullPN ):
    aPropertyDic = parseFullPN( aFullPN )
    
    for aEntity in aModelDic[ aPropertyDic[ 'SystemPath' ] ]:
        if aEntity.tagName == aPropertyDic[ 'EntityType' ]:
            if aEntity.getAttributeNS( EMPTY_NAMESPACE, 'id' ) == aPropertyDic[ 'ID' ]:
                property_names = aEntity.getElementsByTagName( 'property' )
                for aProperty in property_names:
                    if aProperty.getAttributeNS( EMPTY_NAMESPACE, 'name' ) == aPropertyDic[ 'property_name' ]:
                        value_names = aProperty.getElementsByTagName( 'value' )
                        for aValue in value_names:
                            return aValue.firstChild.data

    return 'None'

def setProperty( aModelDic, aFullPN, theValue ):
    aPropertyDic = parseFullPN( aFullPN )
    
    try:
        for aEntity in aModelDic[ aPropertyDic[ 'SystemPath' ] ]:
            if aEntity.tagName == string.lower( aPropertyDic[ 'EntityType' ] ):
                if aEntity.getAttributeNS( EMPTY_NAMESPACE, 'id' ) == aPropertyDic[ 'ID' ]:
                    property_names = aEntity.getElementsByTagName( 'property' )
                    for aProperty in property_names:
                        if aProperty.getAttributeNS( EMPTY_NAMESPACE, 'name' ) == aPropertyDic[ 'property_name' ]:
                            value_names = aProperty.getElementsByTagName( 'value' )
                            for aValue in value_names:
                                aValue.firstChild.data = theValue
                                raise RuntimeError, 'escape from nested loop'
                            
    except RuntimeError, e:
        pass



def parseFullPN( aFullPN ):
    properties = aFullPN.split( ':' )
    aFullPNDic = {
        'EntityType'    : properties[ 0 ],
        'SystemPath'    : properties[ 1 ],
        'ID'            : properties[ 2 ],
        'property_name' : properties[ 3 ]
        }
    return aFullPNDic




