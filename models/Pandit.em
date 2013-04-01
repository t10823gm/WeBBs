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
		Value	140;
	}

	Variable Variable( Ca_o )
	{
		Value	1.2;
	}

#constants
	Variable Variable( R )
	{
		Value	8314.5; #Membrane Components J/(mol * K)
	}

	Variable Variable( T )
	{
		Value	295.0; #Membrane Components mV
	}

	Variable Variable( F )
	{
		Value	96487; #Membrane Components C/mmol
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

		t_start  0;
		t_end    5;
		I_test   -0.6;

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

#state variables

	Variable Variable( rGt )
	{
		Value	0.002191519;
	}

	Variable Variable( sGt )
	{
		Value	0.9842542;
	}

	Variable Variable( dGt )
	{
		Value	0.000002171081;
	}

	Variable Variable( f11 )
	{
		Value	0.9999529;
	}

	Variable Variable( f12 )
	{
		Value	0.9999529;
	}

	Variable Variable( inactGt )
	{
		Value	0.9913102;
	}

	Variable Variable( rss )
	{
		Value	0.002907171;
	}

	Variable Variable( mGt )
	{
		Value	0.004164108;
	}

	Variable Variable( hGt )
	{
		Value	0.6735613;
	}

	Variable Variable( jGt )
	{
		Value	0.6729362;
	}

	Variable Variable( yGt )
	{
		Value	0.003578708;
	}

	Variable Variable( rKs )
	{
		Value	0.642;
	}

	Variable Variable( sKs )
	{
		Value	0.314;
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

	Variable Variable( E_Ca )
	{
		Value	65.0;
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

	Variable Variable( i_B_Na )
	{
		Value	0; #tmp
	}

	Variable Variable( i_B_Ca )
	{
		Value	0; #tmp
	}

	Variable Variable( i_B_K )
	{
		Value	0; #tmp
	}

	Variable Variable( i_B )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_B_K )
	{
	        StepperID   PSV;
		Priority 15;

		VariableReferenceList
			[ V :.:V 0]
			[ E_K :.:E_K 0]
	                [ i_B_K :.:i_B_K 1 ];
				        
		g_B_K 0.000138;		

		Expression "g_B_K * (V.Value - E_K.Value)";
	}

	Process ExpressionAssignmentProcess( i_B_Ca )
	{
	        StepperID   PSV;
		Priority 15;

		VariableReferenceList
			[ V :.:V 0]
			[ E_Ca :.:E_Ca 0]
	                [ i_B_Ca :.:i_B_Ca 1 ];
				        
		g_B_Ca 0.0000324;

		Expression "g_B_Ca * (V.Value - E_Ca.Value)";
	}

	Process ExpressionAssignmentProcess( i_B_Na )
	{
	        StepperID   PSV;
		Priority 15;

		VariableReferenceList
			[ V :.:V 0]
			[ E_Na :.:E_Na 0]
	                [ i_B_Na :.:i_B_Na 1 ];
				        
		g_B_Na 0.00008015;

		Expression "g_B_Na * (V.Value - E_Na.Value)";
	}

	Process ExpressionAssignmentProcess( i_B )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ i_B_Ca :.:i_B_Ca 0 ]
			[ i_B_K :.:i_B_K 0 ]
			[ i_B_Na :.:i_B_Na 0 ]
	                [ i_B :.:i_B 1 ];

		Expression "i_B_Ca.Value + i_B_K.Value + i_B_Na.Value";
	}

#IK1

	Variable Variable( i_K1 )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_K1 )
	{
	        StepperID   PSV;
		Priority 15;

		VariableReferenceList
			[ R :/:R 0 ]
			[ T :/:T 0 ]
			[ F :/:F 0 ]
			[ K_o :/:K_o 0 ]
			[ K_i :../CYTOPLASM:K_i 0 ]
			[ V :.:V 0]
			[ E_K :.:E_K 0]
	                [ i_K1 :.:i_K1 1 ];
				        
		g_K1 0.024;		

		Expression "(48.0 / (exp((V.Value + 37.0) / 25.0 ) + exp(-1.0 * (V.Value + 37.0) / 25.0)) + 10.0) * 0.001 / (1.0 + exp((V.Value + (E_K.Value + 76.77)) / 17.0 )) + g_K1 * (V.Value - (E_K.Value + 1.73)) / ((1.0 + exp(1.613 * F.Value * (V.Value - (E_K.Value + 1.73)) / (R.Value * T.Value))) * (1.0 + exp(-1.0 * (K_o.Value - 0.9988) / 0.124 )))";
	}

#I_Ca_P
	Variable Variable( i_Ca_P )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_Ca_P )
	{
	        StepperID   PSV;
		Priority 15;

		VariableReferenceList
			[ Ca_i :../CYTOPLASM:Ca_i 0 ]
	                [ i_Ca_P :.:i_Ca_P 1 ];
				        
		i_Ca_P_max 0.004;

		Expression "i_Ca_P_max * Ca_i.Value / (Ca_i.Value + 0.0004 )";
	}

#I_K_slow
	Variable Variable( rKs_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_rKs )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( rKs_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ rKs_inf :.:rKs_inf 1 ];
				        
		Expression "1.0  / (1.0  + exp(-1.0 * (V.Value + 12.5 ) / 7.7 ))";
	}

	Process ExpressionAssignmentProcess( tau_rKs )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_rKs :.:tau_rKs 1 ];
				        
		Expression "1.0 / (45.16  * exp(0.03577 * (V.Value + 50.0)) + 98.9  * exp(-0.1 * (V.Value + 38.0 )))";
	}

	Process ExpressionFluxProcess( rKs )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ rKs_inf :.:rKs_inf 0 ]
			[ tau_rKs :.:tau_rKs 0 ]
			[ rKs :.:rKs 1 ];
				
		Expression "(rKs_inf.Value - rKs.Value) / tau_rKs.Value / 1000.0";
	}



	Variable Variable( sKs_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_sKs )
	{
		Value	1.174; 
	}

	Process ExpressionAssignmentProcess( sKs_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ sKs_inf :.:sKs_inf 1 ];
				        
		Expression "1.0 / (1.0  + exp((V.Value + 37.6 ) / 5.9 ))";
	}

	Process ExpressionFluxProcess( sKs )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ sKs_inf :.:sKs_inf 0 ]
			[ tau_sKs :.:tau_sKs 0 ]
			[ sKs :.:sKs 1 ];
				
		Expression "(sKs_inf.Value - sKs.Value) / tau_sKs.Value / 1000.0";
	}

	Variable Variable( i_K_slow )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_K_slow )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0]
			[ E_K :.:E_K 0]
			[ rKs :.:rKs 0]	
			[ sKs :.:sKs 0]	
	                [ i_K_slow :.:i_K_slow 1 ];
		     
		g_K_slow 0.014;

		Expression "g_K_slow * rKs.Value * sKs.Value * (V.Value - E_K.Value)";
	}


# I_f
	Variable Variable( y_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_y )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( y_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ y_inf :.:y_inf 1 ];
				        
		Expression "1.0  / (1.0  + exp((V.Value + 138.6 ) / 10.48 ))";
	}

	Process ExpressionAssignmentProcess( tau_y )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_y :.:tau_y 1 ];
				        
		Expression "1.0 / (0.11885 * exp((V.Value + 80.0 ) / 28.37 ) + 0.5623  * exp(-1.0 * (V.Value + 80.0 ) / 14.19 ))";
	}

	Process ExpressionFluxProcess( yGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ y_inf :.:y_inf 0 ]
			[ tau_y :.:tau_y 0 ]
			[ yGt :.:yGt 1 ];
				
		Expression "(y_inf.Value - yGt.Value) / tau_y.Value / 1000.0";
	}

	Variable Variable( i_f_Na )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_f_Na )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0]
			[ E_Na :.:E_Na 0]
			[ yGt :.:yGt 0]			
	                [ i_f_Na :.:i_f_Na 1 ];
				        
		g_f 0.00145;
		f_Na 0.2;

		Expression "g_f * yGt.Value * f_Na * (V.Value - E_Na.Value)";
	}

	Variable Variable( i_f_K )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_f_K )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0]
			[ E_K :.:E_K 0]
			[ yGt :.:yGt 0]			
	                [ i_f_K :.:i_f_K 1 ];
				        
		g_f 0.00145;
		f_K 0.8;

		Expression "g_f * yGt.Value * f_K * (V.Value - E_K.Value)";
	}

	Variable Variable( i_f )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_f )
	{
	        StepperID   PSV;
		Priority 8;

		VariableReferenceList
			[ i_f_Na :.:i_f_Na 0]
			[ i_f_K  :.:i_f_K  0]			
	                [ i_f :.:i_f 1 ];
				        
		Expression "i_f_Na.Value + i_f_K.Value";
	}


# I_ss
	Variable Variable( i_ss )
	{
		Value	0; #tmp
	}

	Variable Variable( rss_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_rss )
	{
		Value	1.0; #tmp
	}
	
	Process ExpressionAssignmentProcess( rss_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ rss_inf :.:rss_inf 1 ];
				        
		Expression "1.0  / (1.0  - exp((V.Value + 12.5 ) / 7.7 ))";
	}

	Process ExpressionAssignmentProcess( tau_rss )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_rss :.:tau_rss 1 ];
				        
		Expression "3.0  / (45.16  * exp(0.03577  * (V.Value + 50.0 )) + 98.9  * exp(-0.1 * (V.Value + 38.0 )))";
	}

	
	Process ExpressionFluxProcess( rss )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ rss_inf :.:rss_inf 0 ]
			[ tau_rss :.:tau_rss 0 ]
			[ rss :.:rss 1 ];
				
		Expression "(rss_inf.Value - rss.Value) / tau_rss.Value / 1000.0";
	}

	Process ExpressionAssignmentProcess( i_ss )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0]
			[ E_K :.:E_K 0]
			[ rss :.:rss 0]			
	                [ i_ss :.:i_ss 1 ];
				        
		g_ss 0.005;

		Expression "g_ss * rss.Value * (V.Value - E_K.Value)";
	}

# g_t
	Variable Variable( i_t )
	{
		Value	0; #tmp
	}

	Variable Variable( r_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_r )
	{
		Value	1.0; #tmp
	}

	Variable Variable( s_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_s )
	{
		Value	0.0572;
	}

	Process ExpressionAssignmentProcess( r_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ r_inf :.:r_inf 1 ];
				        
		Expression "1.0  / (1.0  + exp(-1.0 * (V.Value + 12.5 ) / 7.7 ))";
	}

	Process ExpressionAssignmentProcess( tau_r )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_r :.:tau_r 1 ];
				        
		Expression "1.0  / (45.16  * exp(0.03577  * (V.Value + 50.0 )) + 98.9  * exp(-0.1 * (V.Value + 38.0 )))";
	}

	Process ExpressionFluxProcess( rGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ r_inf :.:r_inf 0 ]
			[ tau_r :.:tau_r 0 ]
			[ rGt :.:rGt 1 ];
				
		Expression "(r_inf.Value - rGt.Value) / tau_r.Value / 1000.0";
	}

	Process ExpressionAssignmentProcess( s_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ s_inf :.:s_inf 1 ];
				        
		Expression "1.0  / (1.0  + exp((V.Value + 24.8 ) / 3.5 ))";
	}

	Process ExpressionFluxProcess( sGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ s_inf :.:s_inf 0 ]
			[ tau_s :.:tau_s 0 ]
			[ sGt :.:sGt 1 ];
				
		Expression "(s_inf.Value - sGt.Value) / tau_s.Value / 1000.0";
	}


	Process ExpressionAssignmentProcess( i_t )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0]
			[ E_K :.:E_K 0]
			[ rGt :.:rGt 0]	
			[ sGt :.:sGt 0]	
	                [ i_ss :.:i_ss 1 ];
				        
		g_t 0.033;

		Expression "g_t * rGt.Value * sGt.Value * (V.Value - E_K.Value)";
	}
	
#i_Na
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
				        
		Expression "1.0  / (1.0  + exp(-1.0 * (V.Value + 45.0 ) / 6.5 ))";
	}

	Process ExpressionAssignmentProcess( tau_m )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_m :.:tau_m 1 ];
				        
		Expression "0.00136 / (0.32  * (V.Value + 47.13 ) / (1.0 - exp(-0.1 * (V.Value + 47.13 ))) + 0.08  * exp(-1.0 * V.Value / 11.0 ))";
	}

	Process ExpressionFluxProcess( mGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ m_inf :.:m_inf 0 ]
			[ tau_m :.:tau_m 0 ]
			[ mGt :.:mGt 1 ];
				
		Expression "(m_inf.Value - mGt.Value) / tau_m.Value / 1000.0";
	}

#hGt
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
				        
		Expression "1.0  / (1.0  + exp((V.Value + 76.1 ) / 6.07 ))";
	}

	Process ExpressionAssignmentProcess( tau_h )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_h :.:tau_h 1 ];
				        
		Expression "(1.0 - geq(V.Value, -40.0)) * 0.00349/ (0.135  * exp(-1.0 * (V.Value + 80.0 ) / 6.8 ) + 3.56  * exp(0.079  * V.Value) + 310000.0  * exp(0.35  * V.Value)) + geq(V.Value, -40.0) * 0.0004537  * (1.0  + exp(-1.0 * (V.Value + 10.66 ) / 11.1 ))";
	}

	Process ExpressionFluxProcess( hGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ h_inf :.:h_inf 0 ]
			[ tau_h :.:tau_h 0 ]
			[ hGt :.:hGt 1 ];
				
		Expression "(h_inf.Value - hGt.Value) / tau_h.Value / 1000.0";
	}

#jGt
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
				        
		Expression "1.0  / (1.0  + exp((V.Value + 76.1 ) / 6.07 ))";

	}

	Process ExpressionAssignmentProcess( tau_j )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_j :.:tau_j 1 ];
				        
		Expression "(1.0 - geq(V.Value, -40.0)) * 0.00349  / ((V.Value + 37.78 ) / (1.0  + exp(0.311  * (V.Value + 79.23 ))) * (-127140.0  * exp(0.2444  * V.Value) - 0.00003474  * exp(-0.04391 * V.Value)) + 0.1212  * exp(-0.01052 * V.Value) / (1.0  + exp(-0.1378 * (V.Value + 40.14 )))) + geq(V.Value, -40.0) * 0.01163  * (1.0  + exp(-0.1 * (V.Value + 32.0 ))) / exp(-0.0000002535 * V.Value)";
	}

	Process ExpressionFluxProcess( jGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ j_inf :.:j_inf 0 ]
			[ tau_j :.:tau_j 0 ]
			[ jGt :.:jGt 1 ];
				
		Expression "(j_inf.Value - jGt.Value) / tau_j.Value / 1000.0";
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
				        
		g_Na 1.064;
		
		Expression "g_Na * pow(mGt.Value, 3.0 ) * hGt.Value * jGt.Value * (V.Value - E_Na.Value)";
	}

#i_CaL
## dGt
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
				        
		Expression "1.0  / (1.0  + exp(-1.0 * (V.Value + 15.3 ) / 5.0 ))";
	}

	Process ExpressionAssignmentProcess( tau_d )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_d :.:tau_d 1 ];
				        
		Expression "0.00305  * exp(-0.0045 * pow(V.Value + 7.0, 2.0 )) + 0.00105  * exp(-0.002 * pow(V.Value - 18.0, 2.0 )) + 0.00025";
	}

	Process ExpressionFluxProcess( dGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ d_inf :.:d_inf 0 ]
			[ tau_d :.:tau_d 0 ]
			[ dGt :.:dGt 1 ];
				
		Expression "(d_inf.Value - dGt.Value) / tau_d.Value / 1000.0";
	}

## f11
	Variable Variable( f11_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_f11 )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( f11_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ f11_inf :.:f11_inf 1 ];
				        
		Expression "1.0  / (1.0  + exp((V.Value + 26.7 ) / 5.4 ))";
	}

	Process ExpressionAssignmentProcess( tau_f11 )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_f11 :.:tau_f11 1 ];
				        
		Expression "0.105  * exp(-(pow((V.Value + 45.0 ) / 12.0, 2.0 ))) + 0.04  / (1.0  + exp((-1.0 * V.Value + 25.0 ) / 25.0 )) + 0.015  / (1.0  + exp((V.Value + 75.0 ) / 25.0 )) + 0.0017";
	}

	Process ExpressionFluxProcess( f11 )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ f11_inf :.:f11_inf 0 ]
			[ tau_f11 :.:tau_f11 0 ]
			[ f11 :.:f11 1 ];
				
		Expression "(f11_inf.Value - f11.Value) / tau_f11.Value / 1000.0";
	}

#f12
	Variable Variable( f12_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_f12 )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( f12_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ f12_inf :.:f12_inf 1 ];
				        
		Expression "1.0  / (1.0  + exp((V.Value + 26.7 ) / 5.4 ))";
	}

	Process ExpressionAssignmentProcess( tau_f12 )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ V :.:V 0 ]
	                [ tau_f12 :.:tau_f12 1 ];
				        
		Expression "0.041  * exp(-1.0 * pow((V.Value + 47.0 ) / 12.0 , 2.0 )) + 0.08  / (1.0 - exp((V.Value + 55.0 ) / 5.0 )) + 0.015  / (1.0  + exp((V.Value + 75.0 ) / 25.0 )) + 0.0017";
	}

	Process ExpressionFluxProcess( f12 )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ f12_inf :.:f12_inf 0 ]
			[ tau_f12 :.:tau_f12 0 ]
			[ f12 :.:f12 1 ];
				
		Expression "(f12_inf.Value - f12.Value) / tau_f12.Value / 1000.0";
	}

#inactgt
	Variable Variable( inactGt_inf )
	{
		Value	1.0; #tmp
	}

	Variable Variable( tau_inactGt )
	{
		Value	0.009;
	}

	Process ExpressionAssignmentProcess( inactGt_inf )
	{
	        StepperID   PSV;
		Priority 20;

		VariableReferenceList
			[ Ca_ss :../CYTOPLASM:Ca_ss 0 ]
	                [ inactGt_inf :.:inactGt_inf 1 ];
				        
		Expression "1.0  / (1.0  + Ca_ss.Value / 0.01 )";
	}

	Process ExpressionFluxProcess( inactGt )
	{
	        StepperID   ODE;
		Priority 15;

		VariableReferenceList
			[ inactGt_inf :.:inactGt_inf 0 ]
			[ tau_inactGt :.:tau_inactGt 0 ]
			[ inactGt :.:inactGt 1 ];
				
		Expression "(inactGt_inf.Value - inactGt.Value) / tau_inactGt.Value / 1000.0";
	}

	Variable Variable( i_Ca_L )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_Ca_L )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0]
			[ E_Ca :.:E_Ca 0]
			[ dGt :.:dGt 0]
			[ f11 :.:f11 0]
			[ f12 :.:f12 0]
			[ inactGt :.:inactGt 0]
	                [ i_Ca_L :.:i_Ca_L 1 ];
        
		g_Ca_L 0.0341;
				
		Expression "g_Ca_L * dGt.Value * ((0.9  + inactGt.Value / 10.0 ) * f11.Value + (0.1  - inactGt.Value / 10.0 ) * f12.Value) * (V.Value - E_Ca.Value)";
	}



#I_NaK
	Variable Variable( sigma )
	{
		Value	1.0; #tmp
	}

	Variable Variable( i_NaK )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( sigma )
	{
	        StepperID   PSV;
		Priority 15;

		VariableReferenceList
			[ Na_o :/:Na_o 0]
	                [ sigma :.:sigma 1 ];
				        
		Expression "(exp(Na_o.Value / 67.3 ) - 1.0 ) / 7.0";
	}

	Process ExpressionAssignmentProcess( i_NaK )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0]
			[ sigma :.:sigma 0]
			[ R :/:R 0]
			[ T :/:T 0]
			[ F :/:F 0]
			[ K_o :/:K_o 0]
			[ Na_i :../CYTOPLASM:Na_i 0]
	                [ i_NaK :.:i_NaK 1 ];
				        
		i_NaK_max 0.08;
		K_m_K 1.5;
		K_m_Na 10;
				
		Expression "i_NaK_max / (1.0  + 0.1245  * exp(-0.1 * V.Value * F.Value / (R.Value * T.Value)) + 0.0365  * sigma.Value * exp(-(V.Value) * F.Value / (R.Value * T.Value))) * K_o.Value / (K_o.Value + K_m_K) * 1.0  / (1.0  + pow(K_m_Na / Na_i.Value, 1.5 ))";
	}

#I_NaCa
	Variable Variable( i_NaCa )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( i_NaCa )
	{
	        StepperID   PSV;
		Priority 10;

		VariableReferenceList
			[ V :.:V 0]
			[ Ca_o :/:Ca_o 0]
			[ Na_o :/:Na_o 0]
			[ Ca_i :../CYTOPLASM:Ca_i 0]
			[ Na_i :../CYTOPLASM:Na_i 0]
	                [ i_NaCa :.:i_NaCa 1 ];
				        
		K_NaCa 0.000009984;
		d_NaCa 0.0001;
		gamma_NaCa 0.5;

		Expression "K_NaCa * (pow(Na_i.Value, 3.0 ) * Ca_o.Value * exp(0.03743  * V.Value * gamma_NaCa) - pow(Na_o.Value, 3.0 ) * Ca_i.Value * exp(0.03743  * V.Value * (gamma_NaCa - 1.0 ))) / (1.0  + d_NaCa * (Ca_i.Value * pow(Na_o.Value, 3.0 ) + Ca_o.Value * pow(Na_i.Value, 3.0 )))";
	}

	Variable Variable( Cm )
	{
		Value	0.1;
	}

	Process ExpressionFluxProcess( V )
	{
		Priority 5;

		VariableReferenceList
			[ V :.:V 0]
			[ i_Na :.:i_Na 0]
			[ i_Ca_L :.:i_Ca_L 0]
			[ i_t :.:i_t 0]
			[ i_ss :.:i_ss 0]
			[ i_K_slow :.:i_K_slow 0]
			[ i_f :.:i_f 0]
			[ i_K1 :.:i_K1 0]
			[ i_B :.:i_B 0]
			[ i_NaK :.:i_NaK 0]
			[ i_NaCa :.:i_NaCa 0]
			[ i_Ca_P :.:i_Ca_P 0]
			[ i_Stim :/:I 0]
			[ Cm :.:Cm 0]
	                [ V :.:V 1 ];


		Expression "(-1.0) * ( i_Na.Value + i_Ca_L.Value  + i_t.Value + i_ss.Value + i_K_slow.Value + i_f.Value + i_K1.Value + i_B.Value + i_NaK.Value + i_NaCa.Value +  i_Ca_P.Value + i_Stim.Value ) / Cm.Value";
	}

	

#	Process ExpressionFluxProcess( dv_dt )
#	{
#		VariableReferenceList
#			[ v :.:v 1 ]
#			[ U :.:U 0 ]
#			[ i :..:I 0 ];
#				
#		Expression "0.04 * pow(v.Value,2.0) + 5.0 * v.Value + 140.0 - U.Value + i.Value";
#	}
#
#	Process ExpressionAssignmentProcess( v )
#	{
#	        StepperID   PSV;
#		Priority -1;
#
#		VariableReferenceList
#	                [ v :.:v 1 ];
#			
#		c  -65.0;
#	        
#		Expression "geq(v.Value, 30.0) * c + lt(v.Value, 30.0) * v.Value";
#	}


}

System System( /CELL/CYTOPLASM )
{
	StepperID	ODE;

	Variable Variable( V_myo )
	{
		Value 0.00000936;
	}

	Variable Variable( V_JSR )
	{
		Value 0.000000056;
	}

	Variable Variable( V_NSR )
	{
		Value 0.000000504;
	}

	Variable Variable( V_SS )
	{
		Value 0.0000000012;
	}

	Variable Variable( K_i )
	{
		Value	139.2751;
	}

	Variable Variable( Na_i )
	{
		Value	10.73519;
	}
	
	Process ExpressionFluxProcess( K_i )
	{
		Priority 5;
		
		VariableReferenceList
			[ F :/:F 0 ]
			[ V_myo :.:V_myo 0 ]
			[ i_ss :../MEMBRANE:i_ss 0 ]
			[ i_B_K :../MEMBRANE:i_B_K 0 ]
			[ i_t :../MEMBRANE:i_t 0 ]
			[ i_K_slow :../MEMBRANE:i_K_slow 0 ]
			[ i_K1 :../MEMBRANE:i_K1 0 ]
			[ i_f_K :../MEMBRANE:i_f_K 0 ]
			[ i_NaK :../MEMBRANE:i_NaK 0 ]
			[ K_i :.:K_i 1 ];

		Expression "((i_ss.Value + i_B_K.Value + i_t.Value + i_K_slow.Value + i_K1.Value + i_f_K.Value + i_NaK.Value * (-2.0) )) * (-1.0)  / (V_myo.Value * F.Value) /1000.0";
	}


	Process ExpressionFluxProcess( Na_i )
	{
		Priority 5;
		
		VariableReferenceList
			[ F :/:F 0 ]
			[ V_myo :.:V_myo 0 ]
			[ i_Na :../MEMBRANE:i_Na 0 ]
			[ i_B_Na :../MEMBRANE:i_B_Na 0 ]
			[ i_NaCa :../MEMBRANE:i_NaCa 0 ]
			[ i_NaK :../MEMBRANE:i_NaK 0 ]
			[ i_f_Na :../MEMBRANE:i_f_Na 0 ]
			[ Na_i :.:Na_i 1 ];

		Expression "((i_Na.Value + i_B_Na.Value + i_NaCa.Value * 3.0  + i_NaK.Value * 3.0 + i_f_Na.Value )) * (-1.0)  / (V_myo.Value * F.Value) /1000.0";
	}


	Variable Variable( Ca_i )
	{
		Value	0.00007901351;
	}

	Variable Variable( Ca_ss )
	{
		Value	0.00008737212;
	}

	Variable Variable( Ca_NSR )
	{
		Value	0.06600742;
	}

	Variable Variable( Ca_JSR )
	{
		Value	0.06607948;
	}
	
	Variable Variable( HTRPNCa )
	{
		Value	1.394301e-1;
	}

	Variable Variable( LTRPNCa )
	{
		Value	5.1619e-3;
	}

#I_SERCA
	Variable Variable( fb )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( fb )
	{
		StepperID	PSV;
		Priority 20;
		
		VariableReferenceList
			[ Ca_i :.:Ca_i 0 ]
			[ fb :.:fb 1];

		K_fb  0.000168;
		N_fb 1.2;

		Expression "pow(Ca_i.Value / K_fb, N_fb)";
	}

	Variable Variable( rb )
	{
		Value	1.0; #tmp
	}

	Process ExpressionAssignmentProcess( rb )
	{
		StepperID	PSV;
		Priority 20;
		
		VariableReferenceList
			[ Ca_NSR :.:Ca_NSR 0 ]
			[ rb :.:rb 1];

		K_rb  3.29;
		N_rb 1.0;

		Expression "pow(Ca_NSR.Value / K_rb, N_rb)";
	}

	Variable Variable( J_up )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( J_up )
	{
		StepperID	PSV;
		Priority 15;
		
		VariableReferenceList
			[ fb :.:fb 0 ]
			[ rb :.:rb 0 ]
			[ J_up :.:J_up 1];

		K_SR  1.0;
		Vmaxf 0.04;
		Vmaxr 0.9;

		Expression "K_SR * (Vmaxf * fb.Value - Vmaxr * rb.Value) / (1.0  + fb.Value + rb.Value)";
	}


#SR Ca release
	Variable Variable( P_O1 )
	{
		Value	0.0004327548;
	}

	Variable Variable( P_O2 )
	{
		Value	0.000000000606254;
	}

	Variable Variable( P_C1 )
	{
		Value	0.6348229;
	}

	Variable Variable( P_C2 )
	{
		Value	0.3647471;
	}


	Process ExpressionFluxProcess( P_O1 )
	{
		Priority 20;
		
		VariableReferenceList
			[ Ca_ss :.:Ca_ss 0]
			[ P_O1 :.:P_O1 1]
			[ P_O2 :.:P_O2 0]
			[ P_C1 :.:P_C1 0]
			[ P_C2 :.:P_C2 0];

		k_a_plus 12.15e12;
		k_a_minus 576.0;
		k_b_plus 4.05e9;
		k_b_minus 1930.0;
		k_c_plus 100.0;
		k_c_minus 0.8;
		n 4.0;
		m 3.0;

		Expression "(k_a_plus * pow(Ca_ss.Value, n) * P_C1.Value - (k_a_minus * P_O1.Value + k_b_plus * pow(Ca_ss.Value, m) * P_O1.Value + k_c_plus * P_O1.Value) + k_b_minus * P_O2.Value + k_c_minus * P_C2.Value) /1000.0";
	}


	Process ExpressionFluxProcess( P_O2 )
	{
		Priority 20;
		
		VariableReferenceList
			[ Ca_ss :.:Ca_ss 0]
			[ P_O1 :.:P_O1 0]
			[ P_O2 :.:P_O2 1];

		k_b_plus 4.05e9;
		k_b_minus 1930.0;
		m 3.0;

		Expression "(k_b_plus * pow(Ca_ss.Value, m) * P_O1.Value - k_b_minus * P_O2.Value) /1000.0";
	}

	Process ExpressionFluxProcess( P_C1 )
	{
		Priority 20;
		
		VariableReferenceList
			[ Ca_ss :.:Ca_ss 0]
			[ P_O1 :.:P_O1 0]
			[ P_C1 :.:P_C1 1];

		k_a_plus 12.15e12;
		k_a_minus 576.0;
		n 4.0;

		Expression "(-(k_a_plus) * pow(Ca_ss.Value, n) * P_C1.Value + k_a_minus * P_O1.Value) /1000.0";
	}

	Process ExpressionFluxProcess( P_C2 )
	{
		Priority 20;
		
		VariableReferenceList
			[ P_O1 :.:P_O1 0]
			[ P_C2 :.:P_C2 1];

		k_c_plus 100.0;
		k_c_minus 0.8;

		Expression "(k_c_plus * P_O1.Value - k_c_minus * P_C2.Value) /1000.0";
	}


	Variable Variable( J_rel )
	{
		Value	0; #tmp
	}

	Process ExpressionAssignmentProcess( J_rel )
	{
		StepperID	PSV;
		Priority 15;
		
		VariableReferenceList
			[ P_O1 :.:P_O1 0 ]
			[ P_O2 :.:P_O2 0 ]
			[ Ca_JSR :.:Ca_JSR 0 ]
			[ Ca_ss :.:Ca_ss 0 ]
			[ J_rel :.:J_rel 1];

		v1  1800.0;

		Expression "v1 * (P_O1.Value + P_O2.Value) * (Ca_JSR.Value - Ca_ss.Value)";
	}

	Variable Variable( J_HTRPNCa )
	{
		Value	0; #tmp

	}

	Process ExpressionAssignmentProcess( J_HTRPNCa )
	{
		StepperID	PSV;
		Priority 20;
		
		VariableReferenceList
			[ Ca_i :.:Ca_i 0 ]
			[ HTRPNCa :.:HTRPNCa 0 ]
			[ J_HTRPNCa :.:J_HTRPNCa 1];

		HTRPN_tot 0.14;
		k_htrpn_plus 200000;
		k_htrpn_minus 0.066;

		Expression "k_htrpn_plus * Ca_i.Value * (HTRPN_tot - HTRPNCa.Value) - k_htrpn_minus * HTRPNCa.Value";
	}

	Process ExpressionFluxProcess( HTRPNCa )
	{
		Priority 15;
		
		VariableReferenceList
			[ HTRPNCa :.:HTRPNCa 1 ]
			[ J_HTRPNCa :.:J_HTRPNCa 0];

		Expression "J_HTRPNCa.Value/1000.0";
	}

	Variable Variable( J_LTRPNCa )
	{
		Value	0; #tmp

	}

	Process ExpressionAssignmentProcess( J_LTRPNCa )
	{
		StepperID	PSV;
		Priority 20;
		
		VariableReferenceList
			[ Ca_i :.:Ca_i 0 ]
			[ LTRPNCa :.:LTRPNCa 0 ]
			[ J_LTRPNCa :.:J_LTRPNCa 1];

		LTRPN_tot 0.07;
		k_ltrpn_plus 40000;
		k_ltrpn_minus 40;

		Expression "k_ltrpn_plus * Ca_i.Value * (LTRPN_tot - LTRPNCa.Value) - k_ltrpn_minus * LTRPNCa.Value";
	}
	
	Process ExpressionFluxProcess( LTRPNCa )
	{
		Priority 15;
		
		VariableReferenceList
			[ LTRPNCa :.:LTRPNCa 1 ]
			[ J_LTRPNCa :.:J_LTRPNCa 0];

		Expression "J_LTRPNCa.Value/1000.0";
	}

	Variable Variable( J_trpn )
	{
		Value	0; #tmp

	}

	Process ExpressionAssignmentProcess( J_trpn )
	{
		Priority 15;
		
		VariableReferenceList
			[ J_HTRPNCa :.:J_HTRPNCa 0]
			[ J_LTRPNCa :.:J_LTRPNCa 0]
			[ J_TRPN :.:J_trpn 1];

		Expression "J_HTRPNCa.Value + J_LTRPNCa.Value";
	}

	Variable Variable( J_tr )
	{
		Value	0; #tmp

	}

	Process ExpressionAssignmentProcess( J_tr )
	{
		StepperID	PSV;
		Priority 15;
		
		VariableReferenceList
			[ Ca_NSR :.:Ca_NSR 0 ]
			[ Ca_JSR :.:Ca_JSR 0 ]
			[ J_tr :.:J_tr 1];

		tau_tr 0.0005747;

		Expression "(Ca_NSR.Value - Ca_JSR.Value) / tau_tr";
	}

	Variable Variable( J_xfer )
	{
		Value	0; #tmp

	}

	Process ExpressionAssignmentProcess( J_xfer )
	{
		StepperID	PSV;
		Priority 15;
		
		VariableReferenceList
			[ Ca_ss :.:Ca_ss 0 ]
			[ Ca_i :.:Ca_i 0 ]
			[ J_xfer :.:J_xfer 1];

		tau_xfer 0.0267;

		Expression "(Ca_ss.Value - Ca_i.Value) / tau_xfer";
	}

	Variable Variable( beta_i )
	{
		Value	0; #tmp

	}

	Process ExpressionAssignmentProcess( beta_i )
	{
		StepperID	PSV;
		Priority 15;
		
		VariableReferenceList
			[ Ca_i :.:Ca_i 0 ]
			[ beta_i :.:beta_i 1];

		CMDN_tot 0.05;
		K_mCMDN 0.00238;
		EGTA_tot 0;
		K_mEGTA 0.00015;

		Expression "1.0  / (1.0  + CMDN_tot * K_mCMDN / pow(K_mCMDN + Ca_i.Value, 2.0 ) + EGTA_tot * K_mEGTA / pow(K_mEGTA + Ca_i.Value, 2.0 ))";
	}

	Variable Variable( beta_ss )
	{
		Value	0; #tmp

	}

	Process ExpressionAssignmentProcess( beta_ss )
	{
		StepperID	PSV;
		Priority 15;
		
		VariableReferenceList
			[ Ca_ss :.:Ca_ss 0 ]
			[ beta_ss :.:beta_ss 1];

		CMDN_tot 0.05;
		K_mCMDN 0.00238;

		Expression "1.0  / (1.0  + CMDN_tot * K_mCMDN / pow(K_mCMDN + Ca_ss.Value, 2.0 ))";

	}

	Variable Variable( beta_JSR )
	{
		Value	0; #tmp

	}

	Process ExpressionAssignmentProcess( beta_JSR )
	{
		StepperID	PSV;
		Priority 15;
		
		VariableReferenceList
			[ Ca_JSR :.:Ca_JSR 0 ]
			[ beta_JSR :.:beta_JSR 1];

		CSQN_tot 15;
		K_mCSQN 0.8;

		Expression "1.0  / (1.0  + CSQN_tot * K_mCSQN / pow(K_mCSQN + Ca_JSR.Value, 2.0 ))";
	}

	Process ExpressionFluxProcess( Ca_i )
	{
		Priority 5;
		
		VariableReferenceList
			[ F :/:F 0]
			[ V_myo :.:V_myo 0]
			[ i_B_Ca :../MEMBRANE:i_B_Ca 0]
			[ i_NaCa :../MEMBRANE:i_NaCa 0]
			[ i_Ca_P :../MEMBRANE:i_Ca_P 0]
			[ beta_i :.:beta_i 0 ]
			[ J_xfer :.:J_xfer 0 ]
			[ J_up :.:J_up 0 ]
			[ J_trpn :.:J_trpn 0 ]
			[ Ca_i :.:Ca_i 1];


		Expression "beta_i.Value * (J_xfer.Value - (J_up.Value + J_trpn.Value + (i_B_Ca.Value - 2.0  * i_NaCa.Value + i_Ca_P.Value) / (2.0 * V_myo.Value * F.Value)))/1000.0";
	}

	Variable Variable (V_Cass){
		 Value 0; #tmp
	}

	Process ExpressionFluxProcess( Ca_ss )
#	Process ExpressionAssignmentProcess( Ca_ss )
	{
		Priority 5;
		
		VariableReferenceList
			[ F :/:F 0]
			[ V_myo :.:V_myo 0]
			[ V_JSR :.:V_JSR 0]
			[ V_SS :.:V_SS 0]
			[ i_Ca_L :../MEMBRANE:i_Ca_L 0]
			[ beta_SS :.:beta_ss 0 ]
			[ J_xfer :.:J_xfer 0 ]
			[ J_rel :.:J_rel 0 ]
			[ Ca_ss :.:Ca_ss 1];
#			[ V :.:V_Cass 1];

#		Expression "0";
		Expression "beta_SS.Value * (J_rel.Value * V_JSR.Value / V_SS.Value - J_xfer.Value * V_myo.Value / V_SS.Value - i_Ca_L.Value / (2.0  * V_SS.Value * F.Value))/1000.0";
	}

	Process ExpressionFluxProcess( Ca_NSR )
	{
		Priority 5;
		
		VariableReferenceList
			[ V_myo :.:V_myo 0]
			[ V_JSR :.:V_JSR 0]
			[ V_NSR :.:V_NSR 0]
			[ J_up :.:J_up 0 ]
			[ J_tr :.:J_tr 0 ]
			[ Ca_NSR :.:Ca_NSR 1];

		Expression "(J_up.Value * V_myo.Value / V_NSR.Value - J_tr.Value * V_JSR.Value / V_NSR.Value )/1000.0";
	}

	Process ExpressionFluxProcess( Ca_JSR )
	{
		Priority 5;
		
		VariableReferenceList
			[ beta_JSR :.:beta_JSR 0 ]
			[ J_rel :.:J_rel 0 ]
			[ J_tr :.:J_tr 0 ]
			[ Ca_JSR :.:Ca_JSR 1];

		Expression "beta_JSR.Value * (J_tr.Value - J_rel.Value)/1000.0";
	}

}
