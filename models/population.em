Stepper FixedODE1Stepper( DE )
{
	# no property
}

System System( / )
{
	StepperID	DE;

	Variable Variable( N )
	{
		Value	5.6e7;     # N0
	}
	
	Process ExpressionFluxProcess( Malthus )
	{
		VariableReferenceList [ N :.:N 1 ];

		gamma 0.0640;

		Expression "gamma * N.Value";
	}

	
}

