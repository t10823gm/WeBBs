Stepper FixedODE1Stepper( ODE )
{
	StepInterval 0.0001;
	# no property
}

Stepper PassiveStepper( PSV )
{
	# no property
}


System System( / )
{
	StepperID	ODE;

	Variable Variable( K_o )
	{
		Value	5.4;
	}

	Variable Variable( Na_o )
	{
		Value	140.0;
	}

	Variable Variable( Ca_o )
	{
		Value	2.0;
	}

	Variable Variable( R )
	{
		Value	8314.472; #Membrane Components J/(mol * K)
	}

	Variable Variable( T )
	{
		Value	310.0; #Membrane Components mV
	}

	Variable Variable( F )
	{
		Value	96485.3415; #Membrane Components C/mmol
	}

	Variable Variable( I )
	{
		Name "applied current";
		Value	0.0;
	}	

	Variable Variable( t )
	{
		Name "current time";
		Value	0.0;
	}	

	Process ExpressionFluxProcess( clock )
	{
		Priority 15;
		VariableReferenceList
			[ t :.:t 1 ];
		
		Expression "1.0";
	}
	
	Process ExpressionAssignmentProcess( I_ext )
	{
		StepperID	PSV;
		Priority 10;
		
		VariableReferenceList
			[ I :.:I 1 ]
			[ t :.:t 0 ];

		t_start  50;
		t_end    51;
		I_test   -52;

		Expression " geq( t.Value, t_start ) * leq(t.Value, t_end) * I_test";
	}
}

System System( /CELL )
{
	StepperID	ODE;

}

System System( /CELL/MEMBRANE )
{
	StepperID	ODE;

#spatially coupled variable

	Variable Variable( V )
	{
		Value	-80.50146;
	}

	Variable Variable( mGt )
	{
		Value	0.00172;
	}

	Variable Variable( hGt )
	{
		Value	0.7444;
	}

	Variable Variable( jGt )
	{
		Value	0.7045;
	}

#temporary variables

	Variable Variable( E_Na )
	{
		Value	1.0; #tmp
	}

	Variable Variable( E_K )
	{
		Value	1.0; #tmp
	}

	Variable Variable( E_Ks )
	{
		Value	1.0; #tmp
	}

	Variable Variable( E_Ca )
	{
		Value	1.0;
	}

	Process ExpressionAssignmentProcess( E_Na )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ R :/:R 0 ]
			[ T :/:T 0 ]
			[ F :/:F 0 ]
			[ Na_o :/:Na_o 0 ]
			[ Na_i :../CYTOPLASM:Na_i 0 ]
	                [ E_Na :.:E_Na 1 ];
				        
		Expression "(R.Value * T.Value / F.Value )* log( Na_o.Value / Na_i.Value )";
	}

	Process ExpressionAssignmentProcess( E_K )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ R :/:R 0 ]
			[ T :/:T 0 ]
			[ F :/:F 0 ]
			[ K_o :/:K_o 0 ]
			[ K_i :../CYTOPLASM:K_i 0 ]
	                [ E_K :.:E_K 1 ];
				        
		Expression "(R.Value * T.Value / F.Value )* log( K_o.Value / K_i.Value )";
	}

	Process ExpressionAssignmentProcess( E_Ks )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ R :/:R 0 ]
			[ T :/:T 0 ]
			[ F :/:F 0 ]
			[ K_o :/:K_o 0 ]
			[ K_i :../CYTOPLASM:K_i 0 ]
			[ Na_o :/:Na_o 0 ]
			[ Na_i :../CYTOPLASM:Na_i 0 ]
	                [ E_Ks :.:E_Ks 1 ];
				        
		P_kna 0.03;
		
		Expression "(R.Value * T.Value / F.Value )* log( (K_o.Value + P_kna * Na_o.Value )/ (K_i.Value + P_kna * Na_i.Value ) )";
	}

	Process ExpressionAssignmentProcess( E_Ca )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ R :/:R 0 ]
			[ T :/:T 0 ]
			[ F :/:F 0 ]
			[ Ca_o :/:Ca_o 0 ]
			[ Ca_i :../CYTOPLASM:Ca_i 0 ]
	                [ E_Ca :.:E_Ca 1 ];
				        
		Expression "(0.5 * R.Value * T.Value / F.Value )* log( Ca_o.Value / Ca_i.Value )";
	}
	
#I_to
	Variable Variable( s_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_s )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( s_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ s_inf :.:s_inf 1 ];
	
		Expression "(1.0/(1.0 + exp((V.Value + 20.0)/5.0)))"; #s Gate	s_inf
	}

	Process ExpressionAssignmentProcess( tau_s )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_s :.:tau_s 1 ];

		Expression "85.0 * exp(-1.0 * pow((V.Value + 45.00),2.0)/320.0 )+ 5.0/(1.0 + exp((V.Value - 20.0)/5.0))+ 3.0";
	}

	Variable Variable( sGt )
	{
		Value	0.999998;
	}

	Process ExpressionFluxProcess( sGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ s_inf :.:s_inf 0 ]
			[ tau_s :.:tau_s 0 ]
			[ sGt :.:sGt 1 ];
				
		Expression "(s_inf.Value - sGt.Value) / tau_s.Value";	
	}

	Variable Variable( r_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_r )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( r_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ r_inf :.:r_inf 1 ];
	
		Expression "1.0 / (1.0 + (exp(((20.0 - V.Value)/6.0))))";
	}

	Process ExpressionAssignmentProcess( tau_r )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_r :.:tau_r 1 ];

		Expression "9.5 * (exp((-1.0 * (pow((V.Value + 40.0),2.0))/1800.0)))+ 0.8";
	}

	Variable Variable( rGt )
	{
		Value 2.42e-8;
	}

	Process ExpressionFluxProcess( rGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ r_inf :.:r_inf 0 ]
			[ tau_r :.:tau_r 0 ]
			[ rGt :.:rGt 1 ];
				
		Expression "(r_inf.Value - rGt.Value) / tau_r.Value";	
	}

	Variable Variable( i_to )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_to )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_K :.:E_K 0 ]
			[ rGt  :.:rGt 0 ]
			[ sGt  :.:sGt 0 ]
	                [ i_to :.:i_to 1 ];
        
		g_to 0.294;
		
		Expression "g_to * rGt.Value * sGt.Value * ( V.Value - E_K.Value )";
	}

#I_Kr
	Variable Variable( alpha_xr1 )
	{
		Value	1.0; #tmp
	}

	Variable Variable( beta_xr1 )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( alpha_xr1 )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ alpha_xr1 :.:alpha_xr1 1 ];

		Expression "450.0 / (1.0 + (exp(((-45.0 - V.Value )/10.0))))";
	}

	Process ExpressionAssignmentProcess( beta_xr1 )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ beta_xr1 :.:beta_xr1 1 ];

		Expression "6.0 /(1.0 + (exp(((V.Value + 30.0)/11.5))))";
	}

	Variable Variable( xr1_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_xr1 )
	{
		Value	0.00621;
	}

	Process ExpressionAssignmentProcess( xr1_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ xr1_inf :.:xr1_inf 1 ];
		
		Expression "1.0 / (1.0+(exp(((-26.0 - V.Value )/7.0))))";
	}

	Process ExpressionAssignmentProcess( tau_xr1 )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
			[ alpha_xr1 :.:alpha_xr1 0 ]
			[ beta_xr1 :.:beta_xr1 0 ]
	                [ tau_xr1 :.:tau_xr1 1 ];

		Expression " alpha_xr1.Value * beta_xr1.Value";
	}

	Variable Variable( xr1 )
	{
		Value 0.00621;
	}

	Process ExpressionFluxProcess( xr1 )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ xr1_inf :.:xr1_inf 0 ]
			[ tau_xr1 :.:tau_xr1 0 ]
			[ xr1 :.:xr1 1 ];
				
		Expression "(xr1_inf.Value - xr1.Value) / tau_xr1.Value";	
	}

	Variable Variable( alpha_xr2 )
	{
		Value	1.0; #tmp
	}

	Variable Variable( beta_xr2 )
	{
		Value	1.0; #tmp
	}


	Process ExpressionAssignmentProcess( alpha_xr2 )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ alpha_xr2 :.:alpha_xr2 1 ];

		Expression "3.0 /(1.0 + (exp(((-60.0 - V.Value)/20.0))))";
	}

	Process ExpressionAssignmentProcess( beta_xr2 )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ beta_xr2 :.:beta_xr2 1 ];

		Expression "1.12/(1.0+(exp(((V.Value - 60.0)/20.0))))";
	}

	Variable Variable( xr2_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_xr2 )
	{
		Value	0.00621;
	}

	Process ExpressionAssignmentProcess( xr2_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ xr2_inf :.:xr2_inf 1 ];

		Expression "1.0 / (1.0 + (exp(((V.Value + 88.0)/24.0))))";
	}

	Process ExpressionAssignmentProcess( tau_xr2 )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
			[ alpha_xr2 :.:alpha_xr2 0 ]
			[ beta_xr2 :.:beta_xr2 0 ]
	                [ tau_xr2 :.:tau_xr2 1 ];

		Expression " alpha_xr2.Value * beta_xr2.Value";
	}

	Variable Variable( xr2 )
	{
		Value 0.4712;
	}

	Process ExpressionFluxProcess( xr2 )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ xr2_inf :.:xr2_inf 0 ]
			[ tau_xr2 :.:tau_xr2 0 ]
			[ xr2 :.:xr2 1 ];
				
		Expression "(xr2_inf.Value - xr2.Value) / tau_xr2.Value";	
	}

	Variable Variable( i_Kr )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_Kr )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_K :.:E_K 0 ]
			[ K_o :/:K_o 0 ]
			[ Xr1  :.:xr1 0 ]
			[ Xr2  :.:xr2 0 ]
	                [ i_Kr :.:i_Kr 1 ];
        
		g_Kr 0.153;
		
		Expression "g_Kr * pow((K_o.Value/5.4),0.5) * Xr1.Value * Xr2.Value * (V.Value - E_K.Value)";
	}

#I_Ks
	Variable Variable( alpha_xs )
	{
		Value	1.0; #tmp
	}

	Variable Variable( beta_xs )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( alpha_xs )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ alpha_xs :.:alpha_xs 1 ];

		Expression "1400.0 / sqrt((1.0 + (exp(((5.0 - V.Value)/6.0)))))";
	}

	Process ExpressionAssignmentProcess( beta_xs )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ beta_m :.:beta_m 1 ];

		Expression "1.0 / (1.0 + (exp(((V.Value - 35.0)/15.0))))";
	}

	Variable Variable( xs_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_xs )
	{
		Value 1.0; #tmp
	}

	Process ExpressionAssignmentProcess( xs_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ xs_inf :.:xs_inf 1 ];
		
		Expression "1.0/(1.0 + (exp(((-5.0 - V.Value)/14))))";
	}

	Process ExpressionAssignmentProcess( tau_xs )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
			[ alpha_xs :.:alpha_xs 0 ]
			[ beta_xs :.:beta_xs 0 ]
	                [ tau_xs :.:tau_xs 1 ];

		Expression "(alpha_xs.Value * beta_xs.Value) + 80.0";
	}

	Variable Variable( xs )
	{
		Value 0.0095;
	}

	Process ExpressionFluxProcess( xs )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ xs_inf :.:xs_inf 0 ]
			[ tau_xs :.:tau_xs 0 ]
			[ xs :.:xs 1 ];
				
		Expression "(xs_inf.Value - xs.Value) / tau_xs.Value";	
	}

	Variable Variable( i_Ks )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_Ks )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_Ks :.:E_Ks 0 ]
			[ Xs  :.:xs 0 ]
	                [ i_Ks :.:i_Ks 1 ];
        
		g_Ks 0.392;
		
		Expression "g_Ks * (pow(Xs.Value,2.0)) * (V.Value - E_Ks.Value)";
	}

#I_CaL
	Variable Variable( alpha_d )
	{
		Value	1.0; #tmp
	}

	Variable Variable( beta_d )
	{
		Value	1.0; #tmp
	}

	Variable Variable( gamma_d )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( alpha_d )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ alpha_d :.:alpha_d 1 ];

		Expression "(1.4 /(1.0 + (exp(((-35.0 - V.Value)/13.0))))) + 0.25";
	}

	Process ExpressionAssignmentProcess( beta_d )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ beta_d :.:beta_d 1 ];

		Expression "1.4/(1.0 + (exp(((V.Value + 5.0)/5.0))))";
	}

	Process ExpressionAssignmentProcess( gamma_d )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ gamma_d :.:gamma_d 1 ];

		Expression "1.0 / (1.0 + (exp(((50.0 - V.Value)/20.0))))";
	}

	Variable Variable( d_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_d )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( d_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ d_inf :.:d_inf 1 ];
	
		Expression "1.0/(1.0 + (exp(((-8.0 - V.Value)/7.5))))";
	}

	Process ExpressionAssignmentProcess( tau_d )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ alpha_d :.:alpha_d 0 ]
	                [ beta_d :.:beta_d 0 ]
	                [ gamma_d :.:gamma_d 0 ]
	                [ tau_d :.:tau_d 1 ];

		Expression "alpha_d.Value * beta_d.Value + gamma_d.Value";
	}

	Variable Variable( dGt )
	{
		Value 3.373e-5;
	}

	Process ExpressionFluxProcess( dGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ d_inf :.:d_inf 0 ]
			[ tau_d :.:tau_d 0 ]
			[ dGt :.:dGt 1 ];
				
		Expression "(d_inf.Value - dGt.Value) / tau_d.Value";
	}

	Variable Variable( f_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_f )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( f_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ f_inf :.:f_inf 1 ];
	
		Expression "1.0/(1.0 + (exp(((V.Value + 20.0)/7.0))))";
	}

	Process ExpressionAssignmentProcess( tau_f )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_f :.:tau_f 1 ];

		Expression "1102.5 * (exp((-(pow((V.Value + 27.0),2.0))/225.0))) + 200.0/(1.0 + (exp(((13.0 - V.Value)/10.0)))) + 180.0 / (1.0 + (exp(((V.Value + 30.0)/10.0))))+20.0";
	}

	Variable Variable( fGt )
	{
		Value 0.7888;
	}

	Process ExpressionFluxProcess( fGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ f_inf :.:f_inf 0 ]
			[ tau_f :.:tau_f 0 ]
			[ fGt :.:fGt 1 ];
				
		Expression "(f_inf.Value - fGt.Value) / tau_f.Value";
	}

	Variable Variable( f2_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_f2 )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( f2_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ f2_inf :.:f2_inf 1 ];
	
		Expression "(0.67/(1.0 + (exp(((V.Value + 35.0)/7.0))))) + 0.33";
	}

	Process ExpressionAssignmentProcess( tau_f2 )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_f2 :.:tau_f2 1 ];

		Expression "(562.0 * (exp((-(pow((V.Value + 27.0),2.0))/240.0))))+(31.0/(1.0 + (exp(((25.0 - V.Value)/10.0)))))+(80.0/(1.0 + (exp(((V.Value + 30.0)/10.0)))))";
	}

	Variable Variable( f2Gt )
	{
		Value 0.9755;
	}

	Process ExpressionFluxProcess( f2Gt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ f2_inf :.:f2_inf 0 ]
			[ tau_f2 :.:tau_f2 0 ]
			[ f2Gt :.:f2Gt 1 ];
				
		Expression "(f2_inf.Value - f2Gt.Value) / tau_f2.Value";
	}

	Variable Variable( Cass_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_Cass )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( Cass_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ Ca_ss :../CYTOPLASM:Ca_ss 0 ]
	                [ Cass_inf :.:Cass_inf 1 ];
	
		Expression "(0.6 /(1+(pow((Ca_ss.Value/0.05), 2.0)))) + 0.4";
	}

	Process ExpressionAssignmentProcess( tau_Cass )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ Ca_ss :../CYTOPLASM:Ca_ss 0 ]
	                [ tau_Cass :.:tau_Cass 1 ];

		Expression "(80.0/(1.0+(pow((Ca_ss.Value/0.05),2.0)))) + 2.0";
	}

	Variable Variable( fCass )
	{
		Value 0.9953;
	}

	Process ExpressionFluxProcess( CassGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ Cass_inf :.:Cass_inf 0 ]
			[ tau_Cass :.:tau_Cass 0 ]
			[ fCass :.:fCass 1 ];
				
		Expression "(Cass_inf.Value - fCass.Value) / tau_Cass.Value";
	}

	Variable Variable( i_CaL )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_CaL )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ Ca_ss :../CYTOPLASM:Ca_ss 0 ]
			[ Ca_o :/:Ca_o 0 ]
			[ R :/:R 0 ]
			[ T :/:T 0 ]
			[ F :/:F 0 ]
			[ d  :.:dGt 0 ]
			[ f  :.:fGt 0 ]
			[ f2  :.:f2Gt 0 ]
			[ fCass  :.:fCass 0 ]
	                [ i_CaL :.:i_CaL 1 ];
        
		g_CaL 0.0000398;
		
		Expression "(((g_CaL * d.Value * f.Value * f2.Value * fCass.Value * 4.0 * (V.Value - 15) * pow(F.Value, 2.0))/(R.Value * T.Value)) * (0.25 * Ca_ss.Value * (exp((( 2.0 * (V.Value - 15.0) * F.Value)/(R.Value * T.Value)))) - Ca_o.Value))/((exp((( 2.0 * (V.Value - 15.0) * F.Value)/(R.Value * T.Value)))) - 1.0)";
	}

#i_NaCa
	Variable Variable( i_NaCa )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_NaCa )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ Ca_i :../CYTOPLASM:Ca_i 0 ]
			[ Na_i :../CYTOPLASM:Na_i 0 ]
			[ Ca_o :/:Ca_o 0 ]
			[ Na_o :/:Na_o 0 ]
			[ R :/:R 0 ]
			[ T :/:T 0 ]
			[ F :/:F 0 ]
	                [ i_NaCa :.:i_NaCa 1 ];
        
		alpha 2.5;
		gamma 0.35;
		K_NaCa 1000.0;
		Km_Ca 1.38;
		Km_Nai 87.5;
		K_sat 0.1;
		
		Expression "( K_NaCa * ((exp(((gamma*V.Value*F.Value)/(R.Value*T.Value))))*pow(Na_i.Value, 3)*Ca_o.Value - (exp((((gamma - 1.0)*V.Value*F.Value)/( R.Value*T.Value))))*pow(Na_o.Value, 3.0)*Ca_i.Value*alpha))/( (pow(Km_Nai, 3.0)+pow(Na_o.Value, 3))*(Km_Ca+Ca_o.Value)*(1.0 + K_sat*(exp((((gamma - 1.0)*V.Value*F.Value)/( R.Value*T.Value))))))";
	}

#i_NaK

	Variable Variable( i_NaK )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_NaK )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ Na_i :../CYTOPLASM:Na_i 0 ]
			[ K_o :/:K_o 0 ]
			[ R :/:R 0 ]
			[ T :/:T 0 ]
			[ F :/:F 0 ]
	                [ i_NaK :.:i_NaK 1 ];
        
		P_NaK 2.724;
		K_mk 1.0;
		K_mNa 40.0;
		
		Expression "((((P_NaK * K_o.Value)/(K_o.Value + K_mk)) * Na_i.Value)/(Na_i.Value + K_mNa))/(1.0 + 0.1245 * (exp(((-0.1*V.Value*F.Value)/(R.Value*T.Value))))+ 0.0353*(exp(((-V.Value*F.Value)/(R.Value*T.Value)))))";
	}

#I_b_Na
	Variable Variable( i_b_Na )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_b_Na )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_Na :.:E_Na 0 ]
	                [ i_NaK :.:i_NaK 1 ];
        
		g_bna 0.00029;
		
		Expression "g_bna * (V.Value - E_Na.Value)";
	}

#I_b_Ca
	Variable Variable( i_b_Ca )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_b_Ca )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_Ca :.:E_Ca 0 ]
	                [ i_b_Ca :.:i_b_Ca 1 ];
        
		g_bca 0.000592;
		
		Expression "g_bca * (V.Value - E_Ca.Value)";
	}

#I_p_K
	Variable Variable( i_p_K )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_p_K )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_K :.:E_K 0 ]
	                [ i_p_K :.:i_p_K 1 ];
        
		g_pK 0.0146;
		
		Expression "(g_pK * (V.Value - E_K.Value))/(1.0+(exp(((25.0 - V.Value)/5.98))))";
	}

#I_pCa
	Variable Variable( i_pCa )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_pCa )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ Ca_i :../CYTOPLASM:Ca_i 0 ]
	                [ i_pCa :.:i_pCa 1 ];
        
		g_pCa 0.1238;
		K_pCa 0.0005;
		
		Expression "(g_pCa * Ca_i.Value)/(Ca_i.Value + K_pCa)";
	}



#I_Na
	Variable Variable( alpha_m )
	{
		Value	1.0; #tmp
	}

	Variable Variable( beta_m )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( alpha_m )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ alpha_m :.:alpha_m 1 ];

		Expression "1.0 / (1.0 +(exp(((-60.0 - V.Value) / 5.0))))"; #	m Gate alpha_m

	}

	Process ExpressionAssignmentProcess( beta_m )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ beta_m :.:beta_m 1 ];

		Expression "(0.1/(1.0 + (exp((V.Value + 35.0)/5.0))))+(0.1/(1.0+(exp((V.Value - 50.0)/200.0))))";	#m Gate	beta_m
	}

	Variable Variable( m_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_m )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( m_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ m_inf :.:m_inf 1 ];
	
		Expression "1.0 / pow((1.0 + ( exp(((-56.86 - V.Value)/9.03)))),2.0)"; #	m Gate			m_inf

	}

	Process ExpressionAssignmentProcess( tau_m )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ alpha_m :.:alpha_m 0 ]
	                [ beta_m :.:beta_m 0 ]
	                [ tau_m :.:tau_m 1 ];

		Expression "alpha_m.Value * beta_m.Value";

	}

	Process ExpressionFluxProcess( mGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ m_inf :.:m_inf 0 ]
			[ tau_m :.:tau_m 0 ]
			[ mGt :.:mGt 1 ];
				
		Expression "(m_inf.Value - mGt.Value) / tau_m.Value";
	}

#hGt
	Variable Variable( alpha_h )
	{
		Value	1.0; #tmp
	}

	Variable Variable( beta_h )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( alpha_h )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ alpha_h :.:alpha_h 1 ];

		Expression "(1.0 - geq(V.Value, -40.0)) * 0.057 * ( exp((-(V.Value + 80.0)/6.8 )))";#	h Gate	alpha_h
	}

	Process ExpressionAssignmentProcess( beta_h )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ beta_h :.:beta_h 1 ];

		Expression "(1.0 - geq(V.Value, -40.0)) * (2.7 * exp( 0.079 * V.Value) + 310000.0 *exp(0.3485 * V.Value)) + (geq(V.Value,-40.0) * 0.77/( 0.130*(1.0 + (exp(((V.Value+10.66)/ - 11.1))))))";	#h Gate beta_h
	}

	Variable Variable( h_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_h )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( h_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ h_inf :.:h_inf 1 ];
				        
		Expression "1.0 / pow(( 1.0 + (exp(((V.Value + 71.55)/7.43)))),2.0)";#	h Gate	h_inf
	}

	Process ExpressionAssignmentProcess( tau_h )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ alpha_h :.:alpha_h 0 ]
	                [ beta_h :.:beta_h 0 ]
	                [ tau_h :.:tau_h 1 ];
				
		Expression "1.0 / (alpha_h.Value + beta_h.Value)";
	}

	Process ExpressionFluxProcess( hGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ h_inf :.:h_inf 0 ]
			[ tau_h :.:tau_h 0 ]
			[ hGt :.:hGt 1 ];
				
		Expression "(h_inf.Value - hGt.Value) / tau_h.Value";
	}

#jGt
	Variable Variable( alpha_j )
	{
		Value	1.0; #tmp
	}

	Variable Variable( beta_j )
	{
		Value	1.0; #tmp
	}


	Process ExpressionAssignmentProcess( alpha_j )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ alpha_j :.:alpha_j 1 ];

		Expression "(1.0 - geq(V.Value, -40.0)) * ((((-25428.0*exp(0.2444*V.Value)) - (6.948e-6*exp(-0.04391*V.Value)) )*(V.Value + 37.78) ) / (1.0 + exp( 0.311*(V.Value + 79.23)) ))"; #j Gate	alpha_j
	}

	Process ExpressionAssignmentProcess( beta_j )
	{
	        StepperID   PSV;
		Priority 25;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ beta_j :.:beta_j 1 ];

		Expression "((1.0 - geq(V.Value, -40.0))* ( 0.02424*(exp((-0.01052 * V.Value))))/(1.0 + (exp((-0.1378*(V.Value + 40.14)))))) + (geq(V.Value, -40.0) * ( 0.6*(exp((0.057*V.Value))))/(1.0 + (exp((-0.1*(V.Value + 32.0))))))";	#j Gate	beta_j
	}

	Variable Variable( j_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_j )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( j_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ j_inf :.:j_inf 1 ];
				        
		Expression "1.0 / pow((1.0 + (exp(((V.Value + 71.55) / 7.43)))),2.0)";#	j Gate	j_inf
	}

	Process ExpressionAssignmentProcess( tau_j )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
			[ alpha_j :.:alpha_j 0 ]
			[ beta_j :.:beta_j 0 ]
	                [ tau_j :.:tau_j 1 ];
				 
		Expression "1.0 / (alpha_j.Value + beta_j.Value)";  
	}

	Process ExpressionFluxProcess( jGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ j_inf :.:j_inf 0 ]
			[ tau_j :.:tau_j 0 ]
			[ jGt :.:jGt 1 ];
				
		Expression "(j_inf.Value - jGt.Value) / tau_j.Value";
	}

	Variable Variable( i_Na )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_Na )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_Na :.:E_Na 0 ]
			[ mGt  :.:mGt 0 ]
			[ hGt  :.:hGt 0 ]
			[ jGt  :.:jGt 0 ]
	                [ i_Na :.:i_Na 1 ];
        
		g_Na 14.838;
		
		Expression "g_Na * pow(mGt.Value, 3.0 ) * hGt.Value * jGt.Value * (V.Value - E_Na.Value)";
	}

#I_K1
	Variable Variable( alpha_K1 )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( alpha_K1 )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_K :.:E_K 0 ]
	                [ alpha_K1 :.:alpha_K1 1 ];

		Expression "0.1 / ( 1.0 + exp( 0.06 * (V.Value - E_K.Value - 200.0)))"; 
	}

	Variable Variable( beta_K1 )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( beta_K1 )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_K :.:E_K 0 ]
	                [ beta_K1 :.:beta_K1 1 ];

		Expression "( 3.0 * exp( 0.0002 * (V.Value - E_K.Value + 100.0))+(exp((0.1*((V.Value - E_K.Value) - 10.0)))))/(1.0 + (exp((-0.5 * (V.Value - E_K.Value)))))"; 
	}

	Variable Variable( xK1_inf )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( xK1_inf )
	{
	        StepperID   PSV;
		Priority 15;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_K :.:E_K 0 ]
	                [ alpha_K1 :.:alpha_K1 0 ]
	                [ beta_K1 :.:beta_K1 0 ]
	                [ xK1_inf :.:xK1_inf 1 ];

		Expression "alpha_K1.Value/(alpha_K1.Value + beta_K1.Value)";
	}

	Variable Variable( i_K1 )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_K1 )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0 ]
			[ E_K :.:E_K 0 ]
			[ K_o :/:K_o 0 ]
			[ xK1_inf  :.:xK1_inf 0 ]
	                [ i_K1 :.:i_K1 1 ];
				        
		g_K1 5.405;
		
		Expression "g_K1 * xK1_inf.Value * pow((K_o.Value/5.4), 0.5 ) * (V.Value - E_K.Value)";
	}

	Variable Variable( Cm )
	{
		Value	0.185;
	}

#dVdt
	Process ExpressionFluxProcess( V )
	{
		Priority 5;

		VariableReferenceList
			[ i_Na :.:i_Na 0]
			[ i_CaL :.:i_CaL 0]
			[ i_to :.:i_to 0]
			[ i_Kr :.:i_Kr 0]
			[ i_Ks :.:i_Ks 0]
			[ i_K1 :.:i_K1 0]
			[ i_b_Na :.:i_b_Na 0]
			[ i_b_Ca :.:i_b_Ca 0]
			[ i_p_K :.:i_p_K 0]
			[ i_pCa :.:i_pCa 0]
			[ i_NaK :.:i_NaK 0]
			[ i_NaCa :.:i_NaCa 0]
			[ i_Stim :/:I 0]
			[ Cm :.:Cm 0]
	                [ V :.:V 1 ];

		Expression "(-1.0) * ( i_to.Value + i_Kr.Value + i_Ks.Value + i_CaL.Value + i_Na.Value + i_NaK.Value + i_NaCa.Value + i_K1.Value + i_b_Na.Value + i_b_Ca.Value + i_p_K.Value + i_pCa.Value + i_Stim.Value )";
	}
	#( - 1/1)*( i_K1 + i_to+i_Kr+i_Ks+i_CaL+i_NaK+i_Na+i_b_Na+i_NaCa+i_b_Ca+i_p_K+i_p_Ca+i_Stim)
}

System System( /CELL/CYTOPLASM )
{
	StepperID	ODE;

	Variable Variable( V_myo ) #V_C
	{
		Value 0.016404;
	}

	Variable Variable( V_sr )
	{
		Value 0.001094;
	}

	Variable Variable( V_ss )
	{
		Value 0.00005468;
	}

	Variable Variable( K_i )
	{
		Value	136.89;
	}

	Process ExpressionFluxProcess( K_i )
	{
		Priority 5;

		VariableReferenceList
			[ K_i :.:K_i 1]
			[ V_c :.:V_myo 0]
			[ i_K1 :../MEMBRANE:i_K1 0]
			[ i_to :../MEMBRANE:i_to 0]
			[ i_Kr :../MEMBRANE:i_Kr 0]
			[ i_Ks :../MEMBRANE:i_Ks 0]
			[ i_p_K :../MEMBRANE:i_p_K 0]
			[ i_NaK :../MEMBRANE:i_NaK 0]
			[ i_Stim :/:I 0]
			[ F :/:F 0]
			[ Cm :../MEMBRANE:Cm 0]
	                [ V :../MEMBRANE:V 0 ];

		Expression "((-1.0 * ((i_K1.Value + i_to.Value + i_Kr.Value + i_Ks.Value + i_p_K.Value + i_Stim.Value) -  2.0 * i_NaK.Value))/( 1.0 * V_c.Value * F.Value))*Cm.Value";
	}

	Variable Variable( Na_i )
	{
		Value	8.604;
	}

	Process ExpressionFluxProcess( Na_i )
	{
		Priority 5;

		VariableReferenceList
			[ Na_i :.:Na_i 1]
			[ V_c :.:V_myo 0]
			[ i_Na :../MEMBRANE:i_Na 0]
			[ i_b_Na :../MEMBRANE:i_b_Na 0]
			[ i_NaK :../MEMBRANE:i_NaK 0]
			[ i_NaCa :../MEMBRANE:i_NaCa 0]
			[ F :/:F 0]
			[ Cm :../MEMBRANE:Cm 0]
	                [ V :../MEMBRANE:V 0 ];

		Expression "((-1.0 * (i_Na.Value + i_b_Na.Value + 3.0 * i_NaK.Value + 3.0 * i_NaCa.Value))/( V_c.Value * F.Value)) * Cm.Value";
	}		

	Variable Variable( Ca_i )
	{
		Value	0.000126;
	}

	Variable Variable( Ca_ss )
	{
		Value	0.00036;
	}

	Variable Variable( Ca_SR )
	{
		Value	3.64;
	}

	Variable Variable( kcasr )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( kcasr )
	{
		Priority 20; #may have to fix

		VariableReferenceList
			[ kcasr :.:kcasr 1 ]
			[ Ca_SR :.:Ca_SR 0 ];
			
		max_sr 2.5;
		min_sr 1.0;
		EC 1.5;

		Expression "max_sr - (max_sr - min_sr)/(1.0+(pow((EC/Ca_SR.Value), 2.0)))";
	}		


	Variable Variable( k1 )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( k1 )
	{
		Priority 15; #may have to fix

		VariableReferenceList
			[ k1 :.:k1 1 ]
			[ kcasr :.:kcasr 0 ];
			
		k1_prime 0.15;
		
		Expression "k1_prime/kcasr.Value";
	}		

	Variable Variable( k2 )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( k2 )
	{
		Priority 15; #may have to fix

		VariableReferenceList
			[ k2 :.:k2 1 ]
			[ kcasr :.:kcasr 0 ];
			
		k2_prime 0.045;
		
		Expression "k2_prime*kcasr.Value";
	}		

	Variable Variable( O )
	{
		Value	1.0; #tmp
	}

	Variable Variable( R_prime )
	{
		Value	0.9073; #tmp
	}

	Process ExpressionFluxProcess( R_prime )
	{
		Priority 12; #may have to fix

		VariableReferenceList
			[ O :.:O 0 ]
			[ k2 :.:k2 0 ]
			[ R_prime :.:R_prime 1 ]
			[ Ca_ss :.:Ca_ss 0 ];
	
		k4 0.005;		

		Expression "(-1.0) * k2.Value * Ca_ss.Value * R_prime.Value + k4 * (1.0 - R_prime.Value)";
	}


	Process ExpressionAssignmentProcess( O )
	{
		Priority 10; #may have to fix

		VariableReferenceList
			[ O :.:O 1 ]
			[ k1 :.:k1 0 ]
			[ R_prime :.:R_prime 0 ]
			[ Ca_ss :.:Ca_ss 0 ];
	
		k3 0.06;		

		Expression "( k1.Value * pow(Ca_ss.Value, 2.0) * R_prime.Value)/(k3 + k1.Value * pow(Ca_ss.Value, 2.0))";
	}		


	Variable Variable (i_rel)
	{
		 Value 0;
	}

	Process ExpressionAssignmentProcess( i_rel )
	{
		Priority 5; #may have to fix

		VariableReferenceList
			[ i_rel :.:i_rel 1 ]
			[ O :.:O 0 ]
			[ Ca_SR :.:Ca_SR 0 ]
			[ Ca_ss :.:Ca_ss 0 ];
	
		V_rel 0.102;

		Expression "V_rel * O.Value * (Ca_SR.Value - Ca_ss.Value)";
	}		

	Variable Variable (i_leak)
	{
		 Value 0;
	}

	Process ExpressionAssignmentProcess( i_leak )
	{
		Priority 5; #may have to fix

		VariableReferenceList
			[ i_leak :.:i_leak 1 ]
			[ Ca_SR :.:Ca_SR 0 ]
			[ Ca_i :.:Ca_i 0 ];
	
		V_leak 0.00036;

		Expression "V_leak * (Ca_SR.Value - Ca_i.Value)";
	}

	Variable Variable (i_up)
	{
		 Value 0;
	}

	Process ExpressionAssignmentProcess( i_up )
	{
		Priority 5; #may have to fix

		VariableReferenceList
			[ i_up :.:i_up 1 ]
			[ Ca_SR :.:Ca_SR 0 ]
			[ Ca_i :.:Ca_i 0 ];
	
		Vmax_up 0.006375;
		K_up 0.00025;

		Expression "Vmax_up/(1.0+pow(K_up, 2.0)/pow(Ca_i.Value, 2.0))";
	}		

	Variable Variable (i_xfer)
	{
		 Value 0;
	}

	Process ExpressionAssignmentProcess( i_xfer )
	{
		Priority 5; #may have to fix

		VariableReferenceList
			[ i_xfer :.:i_xfer 1 ]
			[ Ca_ss :.:Ca_ss 0 ]
			[ Ca_i :.:Ca_i 0 ];
	
		V_xfer 0.0038;

		Expression "V_xfer * (Ca_ss.Value - Ca_i.Value )";
	}		

	Variable Variable (Ca_sr_bufsr)
	{
		 Value 0;
	}

	Process ExpressionAssignmentProcess( Ca_sr_bufsr )
	{
		Priority 5; #may have to fix

		VariableReferenceList
			[ Ca_sr_bufsr :.:Ca_sr_bufsr 1 ]
			[ Ca_SR :.:Ca_SR 0 ];

		Buf_sr 10;
		K_buf_sr 0.3;

		Expression "1.0/(1.0 +( Buf_sr * K_buf_sr)/(pow((Ca_SR.Value + K_buf_sr), 2.0)))";
	}		

	Variable Variable (Ca_i_bufc)
	{
		 Value 0;
	}

	Process ExpressionAssignmentProcess( Ca_i_bufc )
	{
		Priority 5; #may have to fix

		VariableReferenceList
			[ Ca_i_bufc :.:Ca_i_bufc 1 ]
			[ Ca_i :.:Ca_i 0 ];

		Buf_c 0.2;
		K_buf_c 0.001;

		Expression "1.0/(1.0 + (Buf_c * K_buf_c)/(pow((Ca_i.Value + K_buf_c), 2.0)))";
	}		

	Variable Variable (Ca_ss_bufss)
	{
		 Value 0;
	}

	Process ExpressionAssignmentProcess( Ca_i_bufss )
	{
		Priority 5; #may have to fix

		VariableReferenceList
			[ Ca_ss_bufss :.:Ca_ss_bufss 1 ]
			[ Ca_ss :.:Ca_ss 0 ];

		Buf_ss 0.4;
		K_buf_ss 0.00025;

		Expression "1.0/(1.0 + ( Buf_ss * K_buf_ss)/(pow((Ca_ss.Value + K_buf_ss), 2.0)))";
	}		

	Process ExpressionFluxProcess( Ca_SR )
	{
		Priority 1; #may have to fix

		VariableReferenceList
			[ Ca_sr_bufsr :.:Ca_sr_bufsr 0 ]
			[ i_up :.:i_up 0 ]
			[ i_rel :.:i_rel 0 ]
			[ i_leak :.:i_leak 0 ]
			[ Ca_SR :.:Ca_SR 1 ];

		Expression "Ca_sr_bufsr.Value * (i_up.Value - (i_rel.Value + i_leak.Value ))";
	}		

	Process ExpressionFluxProcess( Ca_ss )
	{
		Priority 1; #may have to fix

		VariableReferenceList
			[ Ca_ss_bufss :.:Ca_ss_bufss 0 ]
			[ i_CaL :../MEMBRANE:i_CaL 0 ]
			[ i_rel :.:i_rel 0 ]
			[ i_xfer :.:i_xfer 0 ]
			[ V_sr :.:V_sr 0 ]
			[ V_ss :.:V_ss 0 ]
			[ V_c :.:V_myo 0 ]
			[ Cm :../MEMBRANE:Cm 0 ]
			[ F :/:F 0 ]
			[ Ca_ss :.:Ca_ss 1 ];

		Expression "Ca_ss_bufss.Value * (((-1.0 * i_CaL.Value * Cm.Value)/( 2.0 * V_ss.Value * F.Value)+( i_rel.Value * V_sr.Value )/V_ss.Value) - ( i_xfer.Value * V_c.Value )/V_ss.Value)";
	}


	Process ExpressionFluxProcess( Ca_i )
	{
		Priority 1; #may have to fix

		VariableReferenceList
			[ Ca_i_bufc :.:Ca_i_bufc 0 ]
			[ i_CaL :../MEMBRANE:i_CaL 0 ]
			[ i_b_Ca :../MEMBRANE:i_b_Ca 0 ]
			[ i_pCa :../MEMBRANE:i_pCa 0 ]			
			[ i_NaCa :../MEMBRANE:i_NaCa 0 ]
			[ i_leak :.:i_leak 0 ]
			[ i_xfer :.:i_xfer 0 ]
			[ i_up :.:i_up 0 ]
			[ V_sr :.:V_sr 0 ]
			[ V_ss :.:V_ss 0 ]
			[ V_c :.:V_myo 0 ]
			[ Cm :../MEMBRANE:Cm 0 ]
			[ F :/:F 0 ]
			[ Ca_i :.:Ca_i 1 ];

		Expression "Ca_i_bufc.Value *((( (i_leak.Value - i_up.Value)*V_sr.Value)/V_c.Value + i_xfer.Value) - (((i_b_Ca.Value + i_pCa.Value) - 2.0 * i_NaCa.Value) * Cm.Value)/( 2.0 * V_c.Value * F.Value))";
	}

#free diadic subspace Ca2+ concentration	state	[['value', '0.00036']]	dCa_ss_dt = 
#cytosolic Ca2+	state	[['value', '0.000126']]	dCa_i_dt = 

}
