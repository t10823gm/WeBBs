#!/usr/bin/python

from xml.dom.minidom import parse
import sys

def getFixedODE1StepperStepInterval( aStepper ):
	
	StepIntervalValue = '0.001'
	
	for aProperty in aStepper.getElementsByTagName( 'property' ):
		if aProperty.getAttribute( 'name' ) == "StepInterval":
			StepIntervalValue = aProperty.getElementsByTagName( 'value' ).item(0).childNodes[0].data

	return StepIntervalValue

def setFixedODE1StepperStepInterval( aStepper, value ):
	
	for aProperty in aStepper.getElementsByTagName( 'property' ):
		if aProperty.getAttribute( 'name' ) == "StepInterval":
			aProperty.getElementsByTagName( 'value' ).item(0).childNodes[0].data = value


def cellstatefixer( original_eml, saved_eml, out_eml ):	
	#original_eml = sys.argv[1]
	#saved_eml = sys.argv[2]
	
	# original_eml = "kuzumoto_et_al_2007_2.5Hz.eml"
	# saved_eml = "kuzumoto_et_al_2007_2.5Hz_500msec.org.eml"
	
	original_obj = parse( original_eml )
	saved_obj = parse( saved_eml )
	
	FixedODE1Steppers = {}
	
	for aStepper in original_obj.getElementsByTagName( 'stepper' ):
		if aStepper.getAttribute( 'class' ) == "FixedODE1Stepper":
			FixedODE1Steppers[ aStepper.getAttribute( 'id' ) ] = getFixedODE1StepperStepInterval( aStepper )
	for aStepper in saved_obj.getElementsByTagName( 'stepper' ):
		if aStepper.getAttribute( 'class' ) == "FixedODE1Stepper":
			if FixedODE1Steppers.has_key( aStepper.getAttribute( 'id' )):
				setFixedODE1StepperStepInterval( aStepper, FixedODE1Steppers[ aStepper.getAttribute( 'id' ) ] ) 
				
	#	print saved_obj.toxml( 'utf-8' )
		
	output_eml = open( out_eml, 'w' )
	output_eml.write( saved_obj.toxml( 'utf-8' ))
	output_eml.close()


