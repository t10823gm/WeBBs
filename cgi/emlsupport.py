
"""
A program for supporting Eml object, ecell.eml.
This program is the extension package for E-Cell Simulation Environment Version 3.
"""

__program__ = 'emlsupport'
__version__ = '0.1'
__author__ = 'Kazunari Kaizu <t00220kk@sfc.keio.ac.jp>'
__copyright__ = ''
__license__ = 'GPL'


import ecell.eml
import ecell.ecs
import ecell.emc
import ecell.Session

import os


class EmlSupport( ecell.eml.Eml ):


    def __init__( self, aFileName ):
        '''
        read EML file and set the file name
        aFileName: (str) EML file name
        '''

        if type( aFileName ) == str:
            self.setEmlFileName( aFileName )
            aFileObject = open( self.getEmlFileName() )
            ecell.eml.Eml.__init__( self, aFileObject )

        else:
            raise TypeError, ' The type of aFileName must be string (file name) '

    # end of __init__


    def createInstance( self ):
        '''
        create and return the instance from file name
        return aSession
        '''
        
        aSimulator = ecell.emc.Simulator()
        aSession = ecell.Session( aSimulator )
        # aSession.loadModel( self )

        ##
        ## Session can't recieve an ecell.eml.Eml instance, now
        ##

        ## WARNING!! : calling Session's private functions        
        aSession._Session__loadStepper( self )
        aSession._Session__loadEntity( self )
        aSession._Session__loadProperty( self )
        
        aSession.theModelName = self.getEmlFileName()
        aSession.theSimulator.initialize()
        
        return aSession

    # end of createInstance


    def setEmlFileName( self, aFileName ):
        '''
        set the eml file name
        aFileName: (str) an EML file name
        '''

        if type( aFileName ) == str:
            self.__theEmlFileName = os.path.abspath( aFileName )
            os.chdir( os.path.dirname( self.getEmlFileName() ) )
        else:
            raise TypeError, ' The type of aFileName must be string (file name) '

    # end of setEmlFileName


    def getEmlFileName( self ):
        '''
        simply return the eml file name handled now
        return theEmlFileName
        '''

        return self.__theEmlFileName

    # end of getEmlFileName
    

    def save( self, aFileName=None ):
        '''
        save domtree as an EML file
        aFileName: (str) an output file name
        when you don\'t set a file name, save it to self.getEmlFileName()
        '''

        if aFileName:
            ecell.eml.Eml.save( self, aFileName )
        else:
            ecell.eml.Eml.save( self, self.getEmlFileName() )

    # end of save
    

    def getEntityList( self, anEntityType, aSystemPath ):
        '''
        ecell.eml.Eml.getEntityList( self, anEntityType, aSystemPath )
        '''

        return ecell.eml.Eml.getEntityList( self, anEntityType, aSystemPath )

    # end of getEntityList


    def getAllEntityList( self, anEntityType, aRootSystemPath ):
        '''
        get the list of all entities under the root system path
        anEntityType: (str) \'Variable\' or \'Process\' or \'System\'
        aRootSystemPath: (str) the root system path
        return anEntityList
        '''
        
        anEntityList = self.getEntityList( anEntityType, aRootSystemPath )
        anEntityList.sort()

        aSize = len( anEntityList )
        for anIndex in range( aSize ):
            anEntityList[ anIndex ] = aRootSystemPath + ':' + anEntityList[ anIndex ]

        aSubSystemList = self.getEntityList( 'System', aRootSystemPath )

        for aSubSystem in aSubSystemList:
            aSubSystemPath = ecell.ecssupport.joinSystemPath( aRootSystemPath, aSubSystem )
            # recursive call
            anEntityList.extend( self.getAllEntityList( anEntityType, aSubSystemPath ) )

        return anEntityList

    # end of getFullEntityList


    def getVariableList( self ):
        '''
        getAllEntityList( \'Variable\', \'/\' )
        '''
        
        return self.getAllEntityList( 'Variable', '/' )

    # end of getVariableList


    def getProcessList( self ):
        '''
        getAllEntityList( \'Process\', \'/\' )
        '''
        
        return self.getAllEntityList( 'Process', '/' )

    # end of getProcessList


    def getVariableReferenceList( self, anID ):
        '''
        get the variable reference list from Process, anID
        anID: (str) Process ID
        '''

        aVariableReferenceList = []

        aFullPN = 'Process:' + anID + ':VariableReferenceList'
        return ecell.eml.Eml.getEntityProperty( self, aFullPN )

    # end of getVariableReferenceList


# end of EmlSupport


if __name__ == '__main__':

    from emlsupport import EmlSupport
    import sys
    import os

    def main( aFileName ):
        
        anEmlSupport = EmlSupport( aFileName )

        print anEmlSupport.getAllEntityList( 'System', '/' )
        print anEmlSupport.getVariableList()
        print anEmlSupport.getProcessList()

    if ( len( sys.argv ) > 1 ):
        main( sys.argv[ 1 ] )
    else:
        main( os.path.abspath( '../demos/sample/sample.eml' ) )
