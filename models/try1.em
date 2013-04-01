#
#Epo-GATA1 "Receptor Feedback in Cell Commitment" 
#2012 Apr 11th ~ 
#Author: Gembu Maryu
#

#Stepper ODE1Stepper( DE1 )
Stepper FixedODE1Stepper( DE1 )
{
###
}

System System( / )
{
	Name	The;

	StepperID	DE1;

	Variable Variable( SIZE )
	{
		Fixed	0;
		Value	1.0;
	}
}

System System( /CELL ) 
{
	Name	a;

	StepperID	DE1;
}

#^^^^^^^^^^^#
# Cytoplasm #
#^^^^^^^^^^^#

System System( /CELL/CYTOPLASM )
{
	StepperID	DE1;

	Variable Variable( EpoR )
	{
		Fixed	0;
		Value	0.0833;
	}

	Variable Variable( JAK2 )	
	{
		Fixed	0;
		Value	12.0;
	}

	Variable Variable( EpoRJ )	
	{
		Fixed	0;
		Value	0.7500;
	}

       	Variable Variable( EpoRJD )
	{
		Fixed	0;
		Value	3.7504;
	}

	Variable Variable( EpoRJD_Ast)
	{
		Fixed	0;
		Value	0.0;
	}

	Variable Variable( PI3K )	
	{
		Fixed	0;
		Value	10.0;
	}

	Variable Variable( PI3K_Ast )	
	{
		Fixed	0;
		Value	0.0;
	}

	Variable Variable( PIP2 )
	{
		Fixed	0;
		Value	800.0;
	}

	Variable Variable( PIP3 )
	{
		Fixed	0;
		Value	0.0;
	}

		Variable Variable( AKT )
	{
		Fixed	0;
		Value	10.0;
	}

		Variable Variable( AKT_PIP3 )	
	{
		Fixed	0;
		Value	0.0;
	}

		Variable Variable( AKTp )	
	{
		Fixed	0;
		Value	0.0;
	}

		Variable Variable( AKTpp )	
	{
		Fixed	0;
		Value	0.0;
	}

	Variable Variable( GATA1 )	
	{
		Fixed	0;
		Value	10.0;
	}

	Variable Variable( GATA1_Ast )
	{
		Fixed	0;
		Value	0.0;
	}

	Variable Variable( GATA1mRNAc )
	{
		Fixed	0;
		Value	0.0;
	}

	Variable Variable( GATA1mRNAn )
	{
		Fixed	0;
		Value	0.0;
	}

	Variable Variable( EpoRmRNAn )
	{
		Fixed	0;
		Value	0.0;
	}

	Variable Variable( EpoRmRNAc )
	{
		Fixed	0;
		Value	0.0;
	}

##############
# Expression #
##############

}

