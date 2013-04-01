#
# Kuchel Model
#

@{
N_A  = 6.02214 * 1.0e+23
Voli = 1.0e-13 * ( 7.0 / 10.0 )
Vole = 1.0e-13
}

Stepper ODEStepper( DE1 )
#Stepper FixedODE1Stepper( DE1 )
{
    MaxStepInterval     10000.0;
}

System System( / )
{
	StepperID	DE1;
}

System System( /ENVIRONMENT )
{
	StepperID	DE1;

### External Parameters ###

	Variable Variable( SIZE )
	{
		Value	@( Vole );
	}

	Variable Variable( Lace )
	{
		Value	@( 1.82e-3 * Vole * N_A );
	}

	Variable Variable( Phose )
	{
		Value	@( 1.92e-3 * Vole * N_A );
	}

	Variable Variable( Pyre )
	{
		Value	@( 85e-6 * Vole * N_A );
	}

}

System System( /CELL )
{
	StepperID	DE1;

	Variable Variable( SIZE )
	{
		Value	@( Voli );
	}

}

System System( /CELL/CYTOPLASM )
{
	StepperID	DE1;

### External Parameters ###

	Variable Variable( SIZE )
	{
		Value	@( Voli );	
	}

	Variable Variable( r )
	{
		Name "Donnan Ratio";
		Value	0.69;
	}

	Variable Variable( pH1 )
	{
		Name "Intracellular pH";
		Value	7.2;
	}

	Variable Variable( k )
	{
		Name "Intracellular K+ quantity";
		Value	@( 0.15 * Voli * N_A );
	}

	Variable Variable( CO2 )
	{
		Name "Intracellular Carbon Dioxide quantity";
		Value	@( 1.2e-3 * Voli * N_A );
	}

	Variable Variable( Glc )
	{
		Value	@( 5e-3 * Voli * N_A );
	}

### Initial Conditions ###

	Variable Variable( ADP )
	{
		Value	@( 0.31e-3 * Voli * N_A );
	}

	Variable Variable( AMP )
	{
		Value	@( 30e-6 * Voli * N_A );
	}

	Variable Variable( ATP )
	{
		Value	@( 2.1e-3 * Voli * N_A );
	}

	Variable Variable( B13PG )
	{
		Value	@( 0.7e-6 * Voli * N_A );
	}

	Variable Variable( B23PG )
	{
		Value	@( 6.70e-3 * Voli * N_A );
	}

	Variable Variable( BPGSP )
	{
		Value	@( 3.8e-6 * Voli * N_A );
	}

	Variable Variable( BPGSPP )
	{
		Value	0;
	}

	Variable Variable( BPGSPP_P2GA )
	{
		Value	0;
	}

	Variable Variable( BPGSPP_P3GA )
	{
		Value	0;
	}

	Variable Variable( BPGSPP_Phos )
	{
		Value	0;
	}

	Variable Variable( BPGSP_B13PG )
	{
		Value	0;
	}

	Variable Variable( BPGSP_B23PG )
	{
		Value	0;
	}

	Variable Variable( Ery4P )
	{
		Value	@( 10e-6 * Voli * N_A );
	}

	Variable Variable( Fru16P2 )
	{
		Value	@( 2.7e-6 * Voli * N_A );
	}

	Variable Variable( Fru6P )
	{
		Value	@( 13e-6 * Voli * N_A );
	}

	Variable Variable( Glc16P2 )
	{
		Value	@( 122e-6 * Voli * N_A );
	}

	Variable Variable( Glc6P )
	{
		Value	@( 40e-6 * Voli * N_A );
	}

	Variable Variable( GraP )
	{
		Value	@( 5.7e-6 * Voli * N_A );
	}

	Variable Variable( GrnP )
	{
		Value	@( 19.0e-6 * Voli * N_A );
	}

	Variable Variable( GSH )
	{
		Value	@( 3.2e-3 * Voli * N_A );
	}

	Variable Variable( GSSG )
	{
		Value	@( 0.09e-6 * Voli * N_A );
	}

	Variable Variable( Hb )
	{
		Value	@( 7e-3 * Voli * N_A );
	}

	Variable Variable( Hb_ADP )
	{
		Value	0;
	}

	Variable Variable( Hb_ATP )
	{
		Value	0;
	}

	Variable Variable( Hb_B13PG )
	{
		Value	0;
	}

	Variable Variable( Hb_B23PG )
	{
		Value	0;
	}

	Variable Variable( Hb_MgATP )
	{
		Value	0;
	}

	Variable Variable( Lac )
	{
		Value	@( 1.4e-3 * Voli * N_A );
	}

	Variable Variable( Mg )
	{
		Value	@( 3.0e-3 * Voli * N_A );
	}

	Variable Variable( MgADP )
	{
		Value	0;
	}

	Variable Variable( MgATP )
	{
		Value	0;
	}

	Variable Variable( Mg_B13PG )
	{
		Value	0;
	}

	Variable Variable( Mg_B23PG )
	{
		Value	0;
	}

	Variable Variable( Mg_Fru16P2 )
	{
		Value	0;
	}

	Variable Variable( Mg_Glc16P2 )
	{
		Value	0;
	}

	Variable Variable( Mg_Phos )
	{
		Value	0;
	}

	Variable Variable( NAD )
	{
		Value	@( 60e-6 * Voli * N_A );
	}

	Variable Variable( NADH )
	{
		Value	@( 0.14e-6 * Voli * N_A );
	}

	Variable Variable( NADP )
	{
		Value	@( 0.125e-6 * Voli * N_A );
	}

	Variable Variable( NADPH )
	{
		Value	@( 64e-6 * Voli * N_A );
	}

	Variable Variable( P2GA )
	{
		Value	@( 10e-6 * Voli * N_A );
	}

	Variable Variable( P3GA )
	{
		Value	@( 64e-6 * Voli * N_A );
	}

	Variable Variable( P6G )
	{
		Value	@( 1.4e-7 * Voli * N_A );
	}

	Variable Variable( P6GL )
	{
		Value	@( 1.4e-10 * Voli * N_A );
	}

	Variable Variable( PEP )
	{
		Value	@( 23e-6 * Voli * N_A );
	}

	Variable Variable( Phos )
	{
		Value	@( 1.0e-3 * Voli * N_A );
	}

	Variable Variable( Pyr )
	{
		Value	@( 60e-6 * Voli * N_A );
	}

	Variable Variable( Rib5P )
	{
		Value	@( 10e-6 * Voli * N_A );
	}

	Variable Variable( Ru5P )
	{
		Value	@( 10e-6 * Voli * N_A );
	}

	Variable Variable( Sed7P )
	{
		Value	@( 10e-6 * Voli * N_A );
	}

	Variable Variable( TK )
	{
		Value	@( 3.3e-7 * Voli * N_A );
	}

	Variable Variable( TKG )
	{
		Value	0;
	}

	Variable Variable( TKG_Ery4P )
	{
		Value	0;
	}

	Variable Variable( TKG_Rib5P )
	{
		Value	0;
	}

	Variable Variable( TK_Xu5P )
	{
		Value	0;
	}

	Variable Variable( Xu5P )
	{
		Value	@( 1e-6 * Voli * N_A );
	}

### Glycolytic Reactions ###

        Process ExpressionFluxProcess( HK )
        {
		Name 	"Hexokinase";

                Expression "( ( ( HK / (( 1 + ( S1.MolarConc / KiMgATP ) + ( S0.MolarConc / KiGlc ) + ( ( S1.MolarConc * S0.MolarConc ) / ( KiGlc * KmMgATP ) ) + ( P1.MolarConc / KiMgADP ) + ( P0.MolarConc / KiGlc6P ) + ( ( P1.MolarConc * P0.MolarConc ) / ( KiGlc6P * KmMgADP ) ) + ( ( E1.MolarConc * S0.MolarConc ) / ( KdiB23PG * KiGlc ) ) + ( ( E2.MolarConc * S0.MolarConc ) / ( KdiGlc16P2 * KiGlc ) ) + ( ( P0.MolarConc * S0.MolarConc ) / ( KdiGlc6P * KiGlc ) ) + ( ( E3.MolarConc * S0.MolarConc ) / ( KdiGSH * KiGlc ) ) )) * ( ( (( kcatf * 1.662 ) / ( 1 + ( pow( 10, -1.0 * E0.Value ) / pow( 10, -7.02 ) ) + ( pow( 10, -9.55 ) / pow( 10, -1.0 * E0.Value ) ) )) * S0.MolarConc * S1.MolarConc ) / ( KiGlc * KmMgATP ) - ( (( kcatr * 1.662 ) / ( 1 + ( pow( 10, -1.0 * E0.Value ) / pow( 10, -7.02 ) ) + ( pow( 10, -9.55 ) / pow( 10, -1.0 * E0.Value ) ) )) * P0.MolarConc * P1.MolarConc ) / ( KiGlc6P * KmMgADP ) ) ) )  * self.getSuperSystem().SizeN_A )";

		KiMgATP	1.0e-3;
		KmMgATP	1.0e-3;
		KiGlc	4.7e-5;
		KiGlc6P	4.7e-5;
		KiMgADP	1.0e-3;
		KmMgADP	1.0e-3;
		KdiB23PG	4.0e-3;
		KdiGlc16P2	30e-6;
		KdiGlc6P	10.0e-6;
		KdiGSH	3.0e-3;
		
		HK	25e-9;

		kcatf	180;
		kcatr	1.16;
		
                VariableReferenceList   
		[ S0 :.:Glc 0 ]
		[ S1 :.:MgATP -1 ]
		[ P0 :.:Glc6P 1 ]
		[ P1 :.:MgADP 1 ]
		[ E0 :.:pH1 0 ]
		[ E1 :.:B23PG 0 ]
		[ E2 :.:Glc16P2 0 ]
		[ E3 :.:GSH 0 ];
	}

        Process ExpressionFluxProcess( GPI )
        {
		Name	"Glucose Phosphate Isomerase";

                Expression "( ( ( GPI / (1 + ( S0.MolarConc / KmGlc6P ) + ( P0.MolarConc / KmFru6P )) ) * ( ( ( kcatf * S0.MolarConc ) / KmGlc6P ) - ( ( kcatr * P0.MolarConc ) / KmFru6P ) ) ) * self.getSuperSystem().SizeN_A )";
                
		KmGlc6P	1.81e-4;
		KmFru6P	7.1e-5;
		
		GPI	2.18e-7;

		kcatf	1.47e+3;
		kcatr	1.76e+3;

                VariableReferenceList   
		[ S0 :.:Glc6P -1 ]
		[ P0 :.:Fru6P 1 ];
	}

#note: this Process has mistake.
        Process ExpressionFluxProcess( PFK )
        {
		Name 	"Phosphofructokinase";

                Expression "( ( ( PFK / ( ( 1 + (( pow( pow( 10, -1 * E0.Value ) / Ka, n ) * pow( 1 + E1.MolarConc / KTATP, 4 ) * pow( 1 + E2.MolarConc / KTMg, 4 ) * pow( 1 + E3.MolarConc / KTB23PG, 4 ) ) / ( pow( 1 + ( S0.MolarConc / KmFru6P ) + ( P0.MolarConc / KmFru16P2 ), 4 ) * pow( 1 + E4.MolarConc / KRAMP, 4 ) * pow( 1 + E5.MolarConc / KRPhos, 4 ) * pow( 1 + E6.MolarConc / KRGlc16P2, 4 ) )) ) * (1 + ( S0.MolarConc / KmFru6P ) + ( S1.MolarConc / KmMgATP ) + ( ( S0.MolarConc * S1.MolarConc ) / ( KmFru6P * KmMgATP ) ) + ( P0.MolarConc / KmFru16P2 ) + ( P1.MolarConc / KmMgADP ) + ( ( P0.MolarConc * P1.MolarConc ) / ( KmFru16P2 * KmMgADP ) )) ) ) * ( ( kcatf * S0.MolarConc * S1.MolarConc ) / ( KmFru6P * KmMgATP ) - ( kcatf * P0.MolarConc * P1.MolarConc ) / ( KmFru16P2 * KmMgADP ) ) ) * self.getSuperSystem().SizeN_A )";
                
		KmFru6P	7.5e-5;
		KmMgATP	6.8e-5;
		KmFru16P2	5.0e-4;
		KmMgADP	5.4e-4;
		KTATP	100e-6;
		KTMg	4.0e-3;
		KTB23PG	5e-3;
		KRAMP	300e-6;
		KRPhos	30e-3;
		KRGlc16P2	10.0e-3;

		PFK	1.1e-7;
		
		kcatf	822;
		kcatr	36;
		
		Ka	@( pow( 10, -7.05 ) );
		n	5;
		
                VariableReferenceList   
		[ S0 :.:Fru6P -1 ]
		[ S1 :.:MgATP -1 ]
		[ P0 :.:Fru16P2 1 ]
		[ P1 :.:MgADP 1 ]
		[ E0 :.:pH1 0 ]	
		[ E1 :.:ATP 0 ]
		[ E2 :.:Mg 0 ]
		[ E3 :.:B23PG 0 ]
		[ E4 :.:AMP 0 ]
		[ E5 :.:Phos 0 ]
		[ E6 :.:Glc16P2 0 ];
	}

        Process ExpressionFluxProcess( ALD )
	{
		Name 	"Aldolase";

                Expression "( ( ( ALD / (1 + ( ( E0.MolarConc + E1.MolarConc ) / KiB23PG ) + ( S0.MolarConc / KmFru16P2 ) + ( ( KmGrnP * P1.MolarConc ) / ( KmGraP * KiGrnP ) ) * ( 1 + ( E0.MolarConc + E1.MolarConc ) / KiB23PG ) + ( P0.MolarConc / KiGrnP ) + ( ( KmGrnP * S0.MolarConc * P1.MolarConc ) / ( KiFru16P2 * KmGraP * KiGrnP ) ) + ( ( P1.MolarConc * P0.MolarConc ) / ( KmGraP * KiGrnP ) )) ) * ( ( ( kcatf * S0.MolarConc ) / KmFru16P2 ) - ( ( kcatr * P0.MolarConc * P1.MolarConc ) / ( KiGrnP * KmGraP ) ) ) ) * self.getSuperSystem().SizeN_A )";
                
		KmFru16P2	7.1e-6;
		KiFru16P2	19.8e-6;
		KmGrnP	35e-6;
		KiGrnP	11e-6;
		KmGraP	189e-6;
		KiB23PG	1.5e-3;
		
		ALD	0.37e-6;

		kcatf	68;
		kcatr	234;

                VariableReferenceList   
		[ S0 :.:Fru16P2 -1 ]
		[ P0 :.:GrnP 1 ]
		[ P1 :.:GraP 1 ]
		[ E0 :.:B23PG 0 ]
		[ E1 :.:Mg_B23PG 0 ];
	}

        Process ExpressionFluxProcess( TPI )
        {
		Name	"Triosphosphate Isomerase";

                Expression "( ( ( TPI / (1 + ( S0.MolarConc / KmGraP ) + ( P0.MolarConc / KmGrnP )) ) * ( ( ( kcatf * S0.MolarConc ) / KmGraP ) -	( ( kcatr * P0.MolarConc ) / KmGrnP ) ) ) * self.getSuperSystem().SizeN_A )";
                
		KmGraP	446e-6;
		KmGrnP	162.4e-6;
		
		TPI	1.14e-6;
		
		kcatf	14560;
		kcatr	1280;

                VariableReferenceList   
		[ S0 :.:GraP -1 ]
		[ P0 :.:GrnP 1 ];
	}

        Process ExpressionFluxProcess( GAPDH )
        {
 		Name "Glyceraldehyde Phosphate Dehydrogenase";

                Expression "( ( ( GDH / (( S0.MolarConc / (( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) ) * ( 1 + S0.MolarConc / KidGraP ) +( P0.MolarConc / (( KiB13PG * 2.997 ) /( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) ) * ( 1 + S0.MolarConc / KidGraP ) + ( ( KmB13PG * P1.MolarConc ) / ( (( KiB13PG * 2.997 ) /( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * (KmNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) )) ) ) + ( ( KmGraP * S2.MolarConc * S1.MolarConc ) / ( (( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * KmNAD * KiPhos ) ) + ( ( S2.MolarConc * S0.MolarConc ) / ( KiNAD * (( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) ) ) + ( ( S1.MolarConc * S0.MolarConc ) / ( KiPhos * (( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) ) ) * ( 1 + S0.MolarConc / KidGraP ) + ( ( S2.MolarConc * P0.MolarConc ) / ( KiNAD * (( KiB13PG * 2.997 ) /( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) ) ) + ( ( KmB13PG * S1.MolarConc * P1.MolarConc ) / ( KiPhos * (( KiB13PG * 2.997 ) /( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * (KmNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) )) ) ) + ( ( S0.MolarConc * P1.MolarConc ) / ( (( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * (KiNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) )) ) ) + ( ( P0.MolarConc * P1.MolarConc ) / ( (( KiB13PG * 2.997 ) /( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * (KmNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) )) ) ) + ( ( S2.MolarConc * S1.MolarConc * S0.MolarConc ) / ( KmNAD * KiPhos * (( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) ) ) + ( ( KmGraP * S2.MolarConc * S1.MolarConc * P0.MolarConc ) / ( (( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * KmNAD * KiPhos * KidB13PG ) ) + ( ( S1.MolarConc * S0.MolarConc * P1.MolarConc ) / ( KiPhos * (( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * (KiNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) )) ) ) + ( ( KmB13PG * S1.MolarConc * P0.MolarConc * P1.MolarConc ) / ( (( KiB13PG * 2.997 ) /( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * (KmNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) )) * KiPhos * KidB13PG ) )) ) * ( ( (( kcatf * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * S0.MolarConc * S1.MolarConc * S2.MolarConc ) / ( KmNAD * KiPhos * (( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) ) - ( (( kcatr * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * P0.MolarConc * P1.MolarConc ) /	( (( KiB13PG * 2.997 ) /( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) )) * (KmNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) )) ) ) ) * self.getSuperSystem().SizeN_A )";


 		KmNAD	45e-6;
 		KiNAD	45e-6;
 		KmPhos	3.16e-3;
 		KiPhos	3.16e-3;
 		KmGraP	95e-6;
 		KiGraP	1.59e-19;
 		KidGraP	31e-6;
 		KmB13PG	0.671e-6;
 		KiB13PG	1.52e-21;
 		KidB13PG	1e-6;
 		KmNADH	3.3e-6;
 		KiNADH	10e-6;
		
 		GDH	7.66e-6;
		
 		kcatf	232;
 		kcatr	171;	

                 VariableReferenceList   
 		[ S0 :.:GraP -1 ]
 		[ S1 :.:Phos -1 ]
 		[ S2 :.:NAD -1 ]
		[ P0 :.:B13PG 1 ]
 		[ P1 :.:NADH 1 ]
 		[ E0 :.:pH1 0 ];
 	}

        Process ExpressionFluxProcess( PGK )
        {
		Name "Phosphoglycerate Kinase";

                Expression "( ( ( PGK / (1 + S1.MolarConc / KiMgADP + S0.MolarConc / KiB13PG + ( S1.MolarConc * S0.MolarConc ) / ( KiMgADP * KmB13PG ) + P1.MolarConc / KiMgATP + P0.MolarConc / KiP3GA + ( P1.MolarConc * P0.MolarConc ) / ( KiMgATP * KmP3GA )) ) * ( ( ( kcatf * S0.MolarConc * S1.MolarConc ) / ( KiMgADP * KmB13PG ) ) - ( ( kcatr * P0.MolarConc * P1.MolarConc ) / ( KiMgATP * KmP3GA ) ) ) ) * self.getSuperSystem().SizeN_A )";
                
		KmMgADP	100e-6;
		KiMgADP	80e-6;
		KmB13PG	2e-6;
		KiB13PG	1.6e-6;
		KmMgATP	1e-3;
		KiMgATP	0.186e-3;
		KmP3GA	1.1e-3;
		KiP3GA	0.205e-3;
		
		PGK	2.74e-6;
		
		kcatf	2290;
		kcatr	917;

                VariableReferenceList   
		[ S0 :.:B13PG -1 ]
		[ S1 :.:MgADP -1 ]
		[ P0 :.:P3GA 1 ]
		[ P1 :.:MgATP 1 ];
	}

        Process ExpressionFluxProcess( PGM )
        {
		Name	"Phosphoglycerate Mutase";		

                Expression "( ( ( PGM / (1 + ( S0.MolarConc / KmP3GA ) + ( P0.MolarConc / KmP2GA )) ) * ( ( ( kcatf * S0.MolarConc ) / KmP3GA ) -	( ( kcatr * P0.MolarConc ) / KmP2GA ) ) ) * self.getSuperSystem().SizeN_A )";
                
		KmP3GA	168e-6;
		KmP2GA	25.6e-6;
		
		PGM	410e-9;
		
		kcatf	0.795e+3;
		kcatr	0.714e+3;

                VariableReferenceList   
		[ S0 :.:P3GA -1 ]
		[ P0 :.:P2GA 1 ];
	}

        Process ExpressionFluxProcess( ENO )
        {
                Expression "( ( ( ENO / (1 + ( S0.MolarConc / KiP2GA ) + ( E0.MolarConc / KiMg ) + ( P0.MolarConc / KiPEP ) + ( ( S0.MolarConc * E0.MolarConc ) / ( KmP2GA * KiMg ) ) + ( ( P0.MolarConc * E0.MolarConc ) / ( KiPEP * KmMg ) )) ) * ( ( ( kcatf * S0.MolarConc * E0.MolarConc ) / ( KmP2GA * KiMg )  ) - ( ( kcatr * P0.MolarConc * E0.MolarConc ) / ( KiPEP * KmMg ) ) ) ) * self.getSuperSystem().SizeN_A )";
    
		KiP2GA	140e-6;
		KmP2GA	140e-6;
		KiPEP	110.5e-6;
		KmPEP	110.5e-6;
		KiMg	46e-6;
		KmMg	46e-6;
		
		ENO	0.22e-6;
		
		kcatf	190;
		kcatr	50;		

                VariableReferenceList   
		[ S0 :.:P2GA -1 ]
		[ P0 :.:PEP 1 ]
		[ E0 :.:Mg 0 ];
		
	}

        Process ExpressionFluxProcess( PK )
        {
                Expression "( ( ( PK / ( ( 1 + (( ( pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) * pow( 1 + ( E1.MolarConc / KTATP ), 4 ) ) / ( ( pow( 1 + ( S0.MolarConc / KRPEP ) + ( P0.MolarConc / KRPyr ), 4 ) ) * ( pow( 1 + ( E2.MolarConc / KRF16P2 ) + ( E3.MolarConc / KRG16P2 ), 4 ) ) )) ) * (1 + ( S0.MolarConc / KRPEP ) + ( S1.MolarConc / KRMgADP ) + ( ( S0.MolarConc * S1.MolarConc ) / ( KRPEP * KRMgADP ) ) + ( P0.MolarConc / KRPyr ) + ( P1.MolarConc / KRMgATP ) + ( ( P0.MolarConc * P1.MolarConc ) / ( KRPyr * KRMgATP ) )) ) ) * ( ( kcatf * S0.MolarConc * S1.MolarConc ) / ( KRPEP * KRMgADP ) - ( kcatr * P0.MolarConc * P1.MolarConc ) / ( KRMgATP * KRPyr ) ) ) * self.getSuperSystem().SizeN_A )";
    
		KTATP	3.39e-3;
		KRPyr	2.0e-3;
		KRPEP	0.225e-3;
		KRMgATP	3.0e-3;
		KRMgADP	0.474e-3;
		KRF16P2	5.0e-6;
		KRG16P2	100e-6;
		
		PK	87.0e-9;
		
		kcatf	1386;
		kcatr	3.26;
		
                VariableReferenceList   
		[ S0 :.:PEP -1 ]
		[ S1 :.:MgADP -1 ]
		[ P0 :.:Pyr 1 ]
		[ P1 :.:MgATP 1 ]
		[ E0 :.:pH1 0 ]
		[ E1 :.:ATP 0 ]
		[ E2 :.:Fru16P2 0 ]
		[ E3 :.:Glc16P2 0 ];
	}

        Process ExpressionFluxProcess( LDH )
        {
                Expression "( ( ( LDH / (( 1 + ( ( KmNADH * S0.MolarConc ) / ( KiNADH * (KmPyr * ( ( 1 + pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) / ( 1 + pow( 10, -6.8 ) / pow( 10, -7.2 ) ) )) ) ) + ( ( KmNAD * P0.MolarConc ) / ( (KmLac * ( ( 1 + pow( 10, -1 * E0.Value ) / pow( 10, -6.8 ) ) / ( 1 + pow( 10, -7.2 ) / pow( 10, -6.8 ) ) )) * KiNAD ) ) ) * ( 1 + ( S0.MolarConc / KidPyr ) ) + ( S1.MolarConc / KiNADH ) + ( P1.MolarConc / KiNAD ) + ( ( S1.MolarConc * S0.MolarConc ) / ( KiNADH * (KmPyr * ( ( 1 + pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) / ( 1 + pow( 10, -6.8 ) / pow( 10, -7.2 ) ) )) ) ) + ( ( KmNAD * S1.MolarConc * P0.MolarConc ) / ( KiNADH * (KmLac * ( ( 1 + pow( 10, -1 * E0.Value ) / pow( 10, -6.8 ) ) / ( 1 + pow( 10, -7.2 ) / pow( 10, -6.8 ) ) )) * KiNAD ) ) + ( ( KmNADH * S0.MolarConc * P1.MolarConc ) / ( KiNADH * (KmPyr * ( ( 1 + pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) / ( 1 + pow( 10, -6.8 ) / pow( 10, -7.2 ) ) )) * KiNAD ) ) + ( ( P0.MolarConc * P1.MolarConc ) / ( (KmLac * ( ( 1 + pow( 10, -1 * E0.Value ) / pow( 10, -6.8 ) ) / ( 1 + pow( 10, -7.2 ) / pow( 10, -6.8 ) ) )) * KiNAD ) ) + ( ( S1.MolarConc * S0.MolarConc * P0.MolarConc ) / ( KiNADH * (KmPyr * ( ( 1 + pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) / ( 1 + pow( 10, -6.8 ) / pow( 10, -7.2 ) ) )) * (KiLac * ( ( 1 + pow( 10, -1 * E0.Value ) / pow( 10, -6.8 ) ) / ( 1 + pow( 10, -7.2 ) / pow( 10, -6.8 ) ) )) ) ) + ( ( S0.MolarConc * P0.MolarConc * P1.MolarConc ) / ( (KiPyr * ( ( 1 + pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) / ( 1 + pow( 10, -6.8 ) / pow( 10, -7.2 ) ) )) * (KmLac * ( ( 1 + pow( 10, -1 * E0.Value ) / pow( 10, -6.8 ) ) / ( 1 + pow( 10, -7.2 ) / pow( 10, -6.8 ) ) )) * KiNAD ) )) ) * ( ( ( kcatf * S0.MolarConc * S1.MolarConc ) / ( KiNADH * (KmPyr * ( ( 1 + pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) / ( 1 + pow( 10, -6.8 ) / pow( 10, -7.2 ) ) )) ) ) - ( ( kcatr * P0.MolarConc * P1.MolarConc ) / ( KiNAD * (KmLac * ( ( 1 + pow( 10, -1 * E0.Value ) / pow( 10, -6.8 ) ) / ( 1 + pow( 10, -7.2 ) / pow( 10, -6.8 ) ) )) ) ) ) ) * self.getSuperSystem().SizeN_A )";
    
		KmNADH	8.44e-6;
		KiNADH	2.45e-6;
		KmNAD 	0.107e-3;
		KiNAD	0.503e-3;
		KmPyr	137e-6;
		KiPyr	228e-6;
		KidPyr	0.101e-3;
		KmLac	1.07e-3;
		KiLac	7.33e-3;

		LDH	3.43e-6;
		
		kcatf	458;
		kcatr	115;

                VariableReferenceList   
		[ S0 :.:Pyr -1 ]
		[ S1 :.:NADH -1 ]
		[ P0 :.:Lac 1 ]
		[ P1 :.:NAD 1 ]
		[ E0 :.:pH1 0 ];
	}

        Process ExpressionFluxProcess( LDHP )
        {
                Expression "( ( ( 1/ (1 + ( S0.MolarConc / KmPyr ) + ( P0.MolarConc / KmLac )) ) * ( ( ( kf * S0.MolarConc * S1.MolarConc ) / KmPyr ) - ( ( kr * P0.MolarConc * P1.MolarConc ) / KmLac ) ) ) * self.getSuperSystem().SizeN_A )";
    
		KmPyr	4.14e-4;
		KmLac	4.14e-4;
		kf	3.46e-3;
		kr	5.43e-7;		
		
                VariableReferenceList   
		[ S0 :.:Pyr -1 ]
		[ S1 :.:NADPH -1 ]
		[ P0 :.:Lac 1 ]
		[ P1 :.:NADP 1 ];
	}

### Reactions of 2,3BPG synthase-phosphatase ###

        Process ExpressionFluxProcess( BPGSP1 )
        {

                Expression "( ((k1 * ( ( 1 + pow( 10, -6.8 ) / pow( 10, -7.20 ) ) / ( 1 + pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) )) * S0.MolarConc * S1.MolarConc - k2 * P0.MolarConc) * self.getSuperSystem().SizeN_A )";
                
		k1	0.8e+8;
		k2	4.0e+2;

                VariableReferenceList   
		[ S0 :.:B13PG -1 ]
		[ S1 :.:BPGSP -1 ]
		[ P0 :.:BPGSP_B13PG 1 ]
		[ E0 :.:pH1 0 ];
		
	}

        Process ExpressionFluxProcess( BPGSP2 )
        {

                Expression "( ( (k3 * ( ( 1 + pow( pow( 10, -7.2 ) / pow( 10, -7.17 ), 4 ) ) / ( 1 + pow( pow( 10, -1 * E0.Value ) / pow( 10, -7.17 ), 4 ) ) )) * S0.MolarConc )  * self.getSuperSystem().SizeN_A )";
                
		k3	9.9;		

                VariableReferenceList   
		[ S0 :.:BPGSP_B13PG -1 ]
		[ P0 :.:BPGSPP 1 ]
		[ P1 :.:P3GA 1 ]
		[ E0 :.:pH1 0 ];
	}

        Process ExpressionFluxProcess( BPGSP3 )
        {

                Expression "( ((k4 * ( ( 1 + pow( pow( 10, -7.2 ) / pow( 10, -7.17 ), 4 ) ) /( 1 + pow( pow( 10, -1 * E0.Value ) / pow( 10, -7.17 ), 4 ) ) )) * S0.MolarConc * S1.MolarConc - k5 * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
                
		k4	1.85e+8;
		k5	1.0e+8;		

                VariableReferenceList   
		[ S0 :.:BPGSPP -1 ]
		[ S1 :.:P3GA -1 ]
		[ P0 :.:BPGSPP_P3GA 1 ]
		[ E0 :.:pH1 0 ];
	}

        Process ExpressionFluxProcess( BPGSP4 )
        {
                Expression "( ( (k6 * ( ( 1 + pow( pow( 10, -7.2 ) / pow( 10, -7.17 ), 4 ) ) / ( 1 + pow( pow( 10, -1 * E0.Value ) / pow( 10, -7.17 ), 4 ) ) )) * S0.MolarConc * S1.MolarConc - k7 * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
                
		k6	1e+3;
		k7	1e+3;	

                VariableReferenceList   
		[ S0 :.:BPGSPP -1 ]
		[ S1 :.:P2GA -1 ]
		[ P0 :.:BPGSPP_P2GA 1 ]
		[ E0 :.:pH1 0 ];
	}

        Process ExpressionFluxProcess( BPGSP5 )
        {
                Expression "( ( k8* S0.MolarConc - k9 * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k8	1e+4;
		k9	0.55;		

                VariableReferenceList   
		[ S0 :.:BPGSPP_P3GA -1 ]
		[ P0 :.:BPGSP_B23PG 1 ];
	}

        Process ExpressionFluxProcess( BPGSP6 )
        {
                Expression "( ( k10 * S0.MolarConc - k11 * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k10	1.979e+3;
		k11	1e-2;

                VariableReferenceList   
		[ S0 :.:BPGSPP_P2GA -1 ]
		[ P0 :.:BPGSP_B23PG 1 ];
	}

        Process ExpressionFluxProcess( BPGSP7 )
        {
                Expression "( ( k12 * S0.MolarConc - (k13 * ( ( 1 + pow( 10, -6.8 ) / pow( 10, -7.20 ) ) / ( 1 + pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) )) * P0.MolarConc * P1.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k12	1e+3;
		k13	1.8e+6;	

                VariableReferenceList   
		[ S0 :.:BPGSP_B23PG -1 ]
		[ P0 :.:BPGSP 1 ]
		[ P1 :.:B23PG 1 ]
		[ E0 :.:pH1 0 ];
	}

        Process ExpressionFluxProcess( BPGSP8 )
        {
                Expression "( ( k14 * S0.MolarConc * S1.MolarConc - k15 * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k14	1.0e+9;
		k15	6.1e+5;		

                VariableReferenceList   
		[ S0 :.:BPGSPP -1 ]
		[ S1 :.:Phos -1 ]
		[ P0 :.:BPGSPP_Phos 1 ];
	}

        Process ExpressionFluxProcess( BPGSP9 )
        {
                Expression "( ( k16 * S0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k16	0.19;		

                VariableReferenceList   
		[ S0 :.:BPGSPP_Phos -1 ]
		[ P0 :.:BPGSP 1 ]
		[ P1 :.:Phos 2 ];
	}

### Pentose phosphate pathway reactions. ###

        Process ExpressionFluxProcess( G6PDH )
        {
                Expression "( ( G6PDH * ( (k1 * k3 * k5 * k7 * k9) * S0.MolarConc * S1.MolarConc - (k2 * k4 * k6 * k8 * k10) * P0.MolarConc * P1.MolarConc ) / ( (k2 * k9 * ( k4 * k6 + k4 * k7 + k5 * k7 )) + (k1 * k9 * ( k4 * k6 + k4 * k7 + k5 * k7 )) * S1.MolarConc + (k3 * k5 * k7 * k9) * S0.MolarConc + (k2 * k4 * k6 * k8) * P0.MolarConc + (k2 * k10 * ( k4 * k6 + k5 * k6 + k5 * k7 )) * P1.MolarConc + (k1 * k3 * ( k5 * k7 + k5 * k9 + k6 * k9 + k7 * k9 )) * S0.MolarConc * S1.MolarConc +  (k1 * k4 * k6 * k8) * S1.MolarConc * P0.MolarConc + (k3 * k5 * k7 * k10) * S0.MolarConc * P1.MolarConc + (k8 * k10 * ( k2 * k4 + k2 * k5 + k2 * k6 + k4 * k6 )) * P0.MolarConc * P1.MolarConc + (k1 * k3 * k8 * ( k5 + k6 )) * S0.MolarConc * S1.MolarConc * P0.MolarConc + (k3 * k8 * k10 * ( k5 + k6 )) * P0.MolarConc * P1.MolarConc * S0.MolarConc ) ) * self.getSuperSystem().SizeN_A )";
    
    		k1	1.1e+8;
		k2	8.7e+2;
		k3	2.6e+7;
		k4	3.0e+2;
		k5	7.5e+2;
		k6	2.0e+3;
		k7	2.2e+5;
		k8	1.1e+9;
		k9	1.0e+4;
		k10	1.4e+9;
		
		G6PDH	9.3e-8;
    
                VariableReferenceList   
		[ S0 :.:Glc6P -1 ]
		[ S1 :.:NADP -1 ]
		[ P0 :.:P6GL 1 ]
		[ P1 :.:NADPH 1 ];
	}

        Process ExpressionFluxProcess( PGLH )
        {
                Expression "( ( ( Lactonase * k3 * S0.MolarConc ) / ( (( k2 + k3 ) / k1) + S0.MolarConc ) + s6pgh * S0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k1	1.3e+7;
		k2	1.0e+3;
		k3	2.9e+1;
		
		Lactonase	14.0e-6;

		s6pgh	7.1e-4;

                VariableReferenceList   
		[ S0 :.:P6GL -1 ]
		[ P0 :.:P6G 1 ];
	}

        Process ExpressionFluxProcess( P6GDH )
        {
#note: parameter tuning?
                Expression "( ( P6GDH * ( (k1 * k3 * k5 * k7 * k9 * k11) * S0.MolarConc * S1.MolarConc - (k2 * k4 * k6 * k8 * k10 * k12) * P0.MolarConc * P1.MolarConc * P2.MolarConc ) / ( (k2 * k9 * k11 * ( k4 * k6 + k4 * k7 + k5 * k7 )) + (k1 * k9 * k11 * ( k4 * k6 + k4 * k7 + k5 * k7 )) * S1.MolarConc + (k3 * k5 * k7 * k9 * k11) * S0.MolarConc + (k2 * k4 * k6 * k8 * k11) * P0.MolarConc + (k2 * k9 * k12 * ( k4 * k6 + k4 * k7 + k5 * k7 )) * P2.MolarConc +	(k1 * k3 * ( k5 * k7 * k9 + k5 * k7 * k11 + k5 * k9 * k11 + k6 * k9 * k11 + k7 * k9 * k11 )) * S0.MolarConc * S1.MolarConc + (k1 * k4 * k6 * k8 * k11) * S1.MolarConc * P0.MolarConc + (k3 * k5 * k7 * k9 * k12) * S0.MolarConc * P2.MolarConc + (k2 * k4 * k6 * k8 * k10) * P0.MolarConc * P1.MolarConc + (k2 * k4 * k6 * k8 * k12) * P0.MolarConc * P2.MolarConc + (k2 * k10 * k12 * ( k4 * k6 + k4 * k7 + k5 * k7 )) * P1.MolarConc * P2.MolarConc +	(k1 * k3 * k8 * k11 * ( k5 + k6 )) * S0.MolarConc * S1.MolarConc * P0.MolarConc + (k1 * k3 * k5 * k7 * k10) * S0.MolarConc * S1.MolarConc * P1.MolarConc + (k1 * k4 * k6 * k8 * k10) * S1.MolarConc * P0.MolarConc * P1.MolarConc + (k3 * k5 * k7 * k10 * k12) * S0.MolarConc * P1.MolarConc * P2.MolarConc + (k8 * k10 * k12 * ( k2 * k4 + k2 * k5 + k2 * k6 + k4 * k6 )) * P0.MolarConc * P1.MolarConc * P2.MolarConc + (k1 * k3 * k8 * k10 * ( k5 + k6 )) * S0.MolarConc * S1.MolarConc * P0.MolarConc * P1.MolarConc + (k3 * k8 * k10 * k12 * ( k5 + k6 )) * S0.MolarConc * P0.MolarConc * P1.MolarConc * P2.MolarConc ) ) * self.getSuperSystem().SizeN_A )";
    
		k1	@( 2 * 1.2e+6 );
		k2	4.1e+2;
		k3	@( 2 * 1e+9 );
		k4	2.6e+4;
		k5	4.8e+1;
		k6	3.0e+1;
		k7	6.3e+2;
		k8	3.6e+4;
		k9	8.0e+2;
		k10	@( 0.5 * 4.5e+5 );
		k11	3.0e+2;
		k12	@( 0.5 * 9.9e+6 );

		P6GDH	2.1e-6;

                VariableReferenceList   
		[ S0 :.:P6G -1 ]
		[ S1 :.:NADP -1 ]
		[ P0 :.:CO2 0 ]
		[ P1 :.:Ru5P 1 ]
		[ P2 :.:NADPH 1 ];
	}

        Process ExpressionFluxProcess( GSSGR )
        {
                Expression "( ( GSSGR * ( (k1 * k3 * k5 * k7 * k9 * k11) * S0.MolarConc * S1.MolarConc - (k2 * k4 * k6 * k8 * k10 * k12) * pow( P0.MolarConc, 2 ) * P1.MolarConc ) / ( (k2 * k9 * k11 * ( k4 * k6 + k4 * k7 + k5 * k7 )) + (k1 * k9 * k11 * ( k4 * k6 + k4 * k7 + k5 * k7 )) * S1.MolarConc + (k3 * k5 * k7 * k9 * k11) * S0.MolarConc + (k2 * k4 * k6 * k8 * k11) * P0.MolarConc + (k2 * k9 * k12 * ( k4 * k6 + k4 * k7 + k5 * k7 )) * P1.MolarConc + (k1 * k3 * ( k5 * k7 * k9 + k5 * k7 * k11 + k5 * k9 * k11 + k6 * k9 * k11 + k7 * k9 * k11 )) * S0.MolarConc * S1.MolarConc +	(k1 * k4 * k6 * k8 * k11) * S1.MolarConc * P0.MolarConc + (k3 * k5 * k7 * k9 * k12) * S0.MolarConc * P1.MolarConc + (k2 * k4 * k6 * k8 * k10) * P0.MolarConc * P0.MolarConc + (k2 * k4 * k6 * k8 * k12) * P0.MolarConc * P1.MolarConc +	(k2 * k10 * k12 * ( k4 * k6 + k4 * k7 + k5 * k7 )) * P0.MolarConc * P1.MolarConc + (k1 * k3 * k8 * k11 * ( k5 + k6 )) * S0.MolarConc * S1.MolarConc * P0.MolarConc + (k1 * k3 * k5 * k7 * k10) * S0.MolarConc * S1.MolarConc * P0.MolarConc + (k1 * k4 * k6 * k8 * k10) * S1.MolarConc * P0.MolarConc * P0.MolarConc + (k3 * k5 * k7 * k10 * k12) * S0.MolarConc * P0.MolarConc * P1.MolarConc + (k8 * k10 * k12 * ( k2 * k4 + k2 * k5 + k2 * k6 + k4 * k6 )) * P0.MolarConc * P0.MolarConc * P1.MolarConc + (k1 * k3 * k8 * k10 * ( k5 + k6 )) * S0.MolarConc * S1.MolarConc * P0.MolarConc * P0.MolarConc + (k3 * k8 * k10 * k12 * ( k5 + k6 )) * S0.MolarConc * P0.MolarConc * P0.MolarConc * P1.MolarConc ) ) * self.getSuperSystem().SizeN_A )";
    
		k1	8.5e+7;
		k2	5.1e+2;
		k3	1.0e+9;
		k4	7.2e+4;
		k5	8.1e+2;
		k6	1.0e+3;
		k7	1.0e+6;
		k8	5.0e+7;
		k9	1.0e+6;
		k10	5.0e+7;
		k11	7.0e+3;
		k12	1.0e+8;
		
		GSSGR	1.25e-7;		

                VariableReferenceList   
		[ S0 :.:GSSG -1 ]
		[ S1 :.:NADPH -1 ]
		[ P0 :.:GSH 2 ]
		[ P1 :.:NADP 1 ];
	}

        Process ExpressionFluxProcess( RU5PE )
        {
                Expression "( ( ( Ru5P / (1 + ( S0.MolarConc / (( k2 + k3 ) / k1) ) + ( P0.MolarConc / (( k2 + k3 ) / k4) )) ) * ( ( k3 * S0.MolarConc ) / ( (( k2 + k3 ) / k1) ) -	( k2 * P0.MolarConc ) / ( (( k2 + k3 ) / k4) ) ) ) * self.getSuperSystem().SizeN_A )";
    
		k1	3.91e+6;
		k2	4.38e+2;
		k3	3.05e+2;
		k4	1.49e+6;
		
		Ru5P	4.22e-6;		

                VariableReferenceList   
		[ S0 :.:Ru5P -1 ]
		[ P0 :.:Xu5P 1 ];
	}

        Process ExpressionFluxProcess( RU5PI )
        {
                Expression "( ( ( Ru5P / (1 + ( S0.MolarConc / (( k2 + k3 ) / k1) ) + ( P0.MolarConc / (( k2 + k3 ) / k4) )) ) * ( ( k3 * S0.MolarConc ) / ( (( k2 + k3 ) / k1) ) -	( k2 * P0.MolarConc ) / ( (( k2 + k3 ) / k4) ) ) ) * self.getSuperSystem().SizeN_A )";
    
		k1	6.09e+4;
		k2	3.33e+1;
		k3	1.42e+1;
		k4	2.16e+4;
		
		Ru5P	1.42e-5;		

                VariableReferenceList   
		[ S0 :.:Ru5P -1 ]
		[ P0 :.:Rib5P 1 ];
	}


        Process ExpressionFluxProcess( TK1 )
        {
                Expression "( ( k1 * S0.MolarConc * S1.MolarConc - k2 * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k1	2.16e+5;
		k2	3.8e+1;

                VariableReferenceList   
		[ S0 :.:TK -1 ]
		[ S1 :.:Xu5P -1 ]
		[ P0 :.:TK_Xu5P 1 ];
	}

        Process ExpressionFluxProcess( TK2 )
        {
                Expression "( ( k3 * S0.MolarConc - k4 * P0.MolarConc * P1.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k3	3.4e+1;
		k4	1.56e+5;

                VariableReferenceList   
		[ S0 :.:TK_Xu5P -1 ]
		[ P0 :.:TKG 1 ]
		[ P1 :.:GraP 1 ];
	}

        Process ExpressionFluxProcess( TK3 )
        {
                Expression "( ( k5 * S0.MolarConc * S1.MolarConc - k6 * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k5	3.29e+5;
		k6	1.75e+2;
	
                VariableReferenceList   
		[ S0 :.:TKG -1 ]
		[ S1 :.:Rib5P -1 ]
		[ P0 :.:TKG_Rib5P 1 ];
	}

        Process ExpressionFluxProcess( TK4 )
        {
                Expression "( ( k7 * S0.MolarConc - k8 * P0.MolarConc * P1.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k7	4.0e+1;
		k8	4.48e+4;		

                VariableReferenceList   
		[ S0 :.:TKG_Rib5P -1 ]
		[ P0 :.:TK 1 ]
		[ P1 :.:Sed7P 1 ];
	}

        Process ExpressionFluxProcess( TK5 )
        {
                Expression "( ( k9 * S0.MolarConc * S1.MolarConc - k10 * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k9	2.24e+6;
		k10	1.75e+2;
	
                VariableReferenceList   
		[ S0 :.:TKG -1 ]
		[ S1 :.:Ery4P -1 ]
		[ P0 :.:TKG_Ery4P 1 ];
	}

        Process ExpressionFluxProcess( TK6 )
        {
                Expression "( ( k11 * S0.MolarConc - k12 * P0.MolarConc * P1.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		k11	4.0e+1;
		k12	2.13e+4;

                VariableReferenceList   
		[ S0 :.:TKG_Ery4P -1 ]
		[ P0 :.:TK 1 ]
		[ P1 :.:Fru6P 1 ];
	}

        Process ExpressionFluxProcess( TA )
        {
                Expression "( ( TA * ( (k1 * k3 * k5 * k7) * S0.MolarConc * S1.MolarConc - (k2 * k4 * k6 * k8) * P0.MolarConc * P1.MolarConc ) / ( (k1 * k3 * ( k6 + k7 )) * S0.MolarConc + (k5 * k7 * ( k2 + k3 )) * S1.MolarConc + (k2 * k4 * ( k6 + k7 )) * P0.MolarConc + (k6 * k8 * ( k2 + k3 )) * P1.MolarConc + (k1 * k5 * ( k3 + k7 )) * S0.MolarConc * S1.MolarConc + (k4 * k8 * ( k2 + k6 )) * P0.MolarConc * P1.MolarConc + (k5 * k8 * ( k2 + k3 )) * S1.MolarConc * P1.MolarConc + (k1 * k4 * ( k6 + k7 )) * S0.MolarConc * P0.MolarConc ) ) * self.getSuperSystem().SizeN_A )";
    
		k1	5.8e+5;
		k2	4.53e+1;
		k3	1.63e+1;
		k4	1.01e+6;
		k5	4.9e+5;
		k6	6.0e+1;
		k7	1.7e+1;
		k8	7.9e+4;
		
		TA	0.69e-6;
		
                VariableReferenceList   
		[ S0 :.:Sed7P -1 ]
		[ S1 :.:GraP -1 ]
		[ P0 :.:Ery4P 1 ]
		[ P1 :.:Fru6P 1 ];
	}

### Energy consumption and oxidative reactions. ###

        Process ExpressionFluxProcess( AK )
        {
		Name "Adenylate Kinase";
                
                Expression "( ( (kak1 * ( 1 + ( pow( 10, -1 * E0.Value ) * Khadp ) + ( E1.MolarConc ) * Kkadp )) * S0.MolarConc * S1.MolarConc - (kak2 * ( 1 + ( pow( 10, -1 * E0.Value ) * Khamp ) + ( E1.MolarConc ) * Kkamp )) * P0.MolarConc * P1.MolarConc ) * self.getSuperSystem().SizeN_A )";

		Khamp	3.09e+6;
		Kkamp	1.8;

		## from A3.6.2
		Khadp	5.42e+6;
		Kkadp	4.8;
		
		kak1	4.3e+3;
		kak2	1.4e+3;
		
                VariableReferenceList   
		[ S0 :.:MgADP -1 ]
		[ S1 :.:ADP -1 ]
		[ P0 :.:MgATP 1 ]
		[ P1 :.:AMP 1 ]
		[ E0 :.:pH1 0 ]
		[ E1 :.:k 0 ];
	}

#        Process UniBiATPaseFluxProcess( ATPase )
        Process ExpressionFluxProcess( ATPase )
        {
		Name "ATP Consuming Processes";

                Expression "( (S0.MolarConc * k) * self.getSuperSystem().SizeN_A )";                
		k	5.85e-4;		

                VariableReferenceList   
		[ S0 :.:MgATP -1 ]
		[ P0 :.:MgADP 1 ]
		[ P1 :.:Phos 1 ];
	}

#note: this process is maybe MassAction, but the book is not MassAction.
        Process ExpressionFluxProcess( OX )
#        Process MassActionFluxProcess( OX )	 
       	{
		Name	"Glutathione Oxidation";

                Expression "( ( k * S0.MolarConc ) * self.getSuperSystem().SizeN_A )";
                
		k	3.4e-5;		

                VariableReferenceList   
		[ S0 :.:GSH -2 ]
		[ P0 :.:GSSG 1 ];
	}

#        Process UniUniOXNADHFluxProcess( OXNADH )
        Process ExpressionFluxProcess( OXNADH )
        {
		Name	"Non-Glycolytic NADH Consumption";

                Expression "( (S0.MolarConc * k) * self.getSuperSystem().SizeN_A )";                
		k	16.3e-3;

                VariableReferenceList   
		[ S0 :.:NADH -1 ]
		[ P0 :.:NAD 1 ];
	}

### Mg-metabolite binding ###
	
        Process ExpressionFluxProcess( MgATP )
        {
                Expression "( ((kmgatpa * ( ( Kmgatp + ( pow( 10, -1 * E0.Value ) * Khatp * Kmghatp ) ) / ( 1 + ( pow( 10, -1 * E0.Value ) * Khatp ) +  E1.MolarConc * Kkatp ) )) * S0.MolarConc * S1.MolarConc - kmgatpd * P0.MolarConc)  * self.getSuperSystem().SizeN_A )";
                
		Kmgatp	4.32e+4;
		Khatp	9.07e+6;
		Kmghatp	7.48e+2;
		Kkatp	14;
		
		kmgatpa	@( 3.12e+7 * 8.4e-5 );
		kmgatpd	1.2e+3;

                VariableReferenceList   
		[ S0 :.:Mg -1 ]
		[ S1 :.:ATP -1 ]
		[ P0 :.:MgATP 1 ]
		[ E0 :.:pH1 0 ]
		[ E1 :.:k 0 ];
	}

        Process ExpressionFluxProcess( MgADP )
        {
                Expression "( ( (kmgadpa * ( ( Kmgadp + ( pow( 10, -1 * E0.Value ) * Khadp * Kmghadp ) ) / ( 1 + ( pow( 10, -1 * E0.Value ) * Khadp ) +  E1.MolarConc * Kkadp ) )) * S0.MolarConc * S1.MolarConc - kmgadpd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		Kmgadp	3.29e+3;
		Khadp	5.42e+6;
		Kmghadp	1.07e+2;
		Kkadp	4.8;

		kmgadpa	@( 2.76e+6 * 6.2e-4 );
		kmgadpd	1.2e+3;

                VariableReferenceList   
		[ S0 :.:Mg -1 ]
		[ S1 :.:ADP -1 ]
		[ P0 :.:MgADP 1 ]
		[ E0 :.:pH1 0 ]
		[ E1 :.:k 0 ];

	}

        Process ExpressionFluxProcess( MgB23PG )
        {
                Expression "( ( (kmgbpga * (3.2 * 0.001 * ( Kmgbpg + pow( 10, -1 * E0.Value ) * Khbpg * Kmghbpg ) / ( 1 + ( pow( 10, -1 * E0.Value ) * Khbpg ) + ( pow( 10, -2 * E0.Value ) * Khbpg * Kh2bpg ) + ( E1.MolarConc * Kkbpg ) +	( E1.MolarConc * pow( 10, -1 * E0.Value ) * Khbpg * Kkhbpg ) ))) * S0.MolarConc * S1.MolarConc - kmgbpgd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		Kmgbpg	7.41e+3;
		Khbpg	1.62e+8;
		Kmghbpg	5.13e+2;
		Kh2bpg	4.27e+6;
		Kkbpg	85.1;
		Kkhbpg	8.9;
		
		kmgbpga	8.04e+5;
		kmgbpgd	1.2e+3;

                VariableReferenceList   
		[ S0 :.:Mg -1 ]
		[ S1 :.:B23PG -1 ]
		[ P0 :.:Mg_B23PG 1 ]
		[ E0 :.:pH1 0 ]
		[ E1 :.:k 0 ];
	}

        Process ExpressionFluxProcess( MgB13PG )
        {
                Expression "( ( (kmgbpga * (3.2 * 0.001 * ( Kmgbpg + pow( 10, -1 * E0.Value ) * Khbpg * Kmghbpg ) / ( 1 + ( pow( 10, -1 * E0.Value ) * Khbpg ) + ( pow( 10, -2 * E0.Value ) * Khbpg * Kh2bpg ) + ( E1.MolarConc * Kkbpg ) +	( E1.MolarConc * pow( 10, -1 * E0.Value ) * Khbpg * Kkhbpg ) ))) * S0.MolarConc * S1.MolarConc - kmgbpgd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		Kmgbpg	7.41e+3;
		Khbpg	1.62e+8;
		Kmghbpg	5.13e+2;
		Kh2bpg	4.27e+6;
		Kkbpg	85.1;
		Kkhbpg	8.9;
		
		kmgbpga	2.28e+5;
		kmgbpgd	1.2e+3;

                VariableReferenceList   
		[ S0 :.:Mg -1 ]
		[ S1 :.:B13PG -1 ]
		[ P0 :.:Mg_B13PG 1 ]
		[ E0 :.:pH1 0 ]
		[ E1 :.:k 0 ];
	}

        Process ExpressionFluxProcess( MgFru16P2 )
        {
                Expression "( ( (kmgf16p2a * (8.3 * 0.001 * ( Kmgfru16p2 + pow( 10, -1 * E0.Value ) * Khf * Kmghf ) / ( 1 + ( pow( 10, -1 * E0.Value ) * Khf ) + ( pow( 10, -2 * E0.Value ) * Khf * Kh2f ) + ( E1.MolarConc * Kkf ) + ( E1.MolarConc * pow( 10, -1 * E0.Value ) * Khf * Kkhf ) ))) * S0.MolarConc * S1.MolarConc - kmgf16p2d * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		Kmgfru16p2	3.63e+2;
		Khf	7.56e+6;
		Kmghf	8.9e+1;
		Kh2f	1.12e+6;
		Kkf	10.7;
		Kkhf	3.3;

		kmgf16p2a	4.80e+5;
		kmgf16p2d	1.2e+3;

                VariableReferenceList   
		[ S0 :.:Mg -1 ]
		[ S1 :.:Fru16P2 -1 ]
		[ P0 :.:Mg_Fru16P2 1 ]
		[ E0 :.:pH1 0 ]
		[ E1 :.:k 0 ];
	}

#note: use same process from MgFru16P2Process.
#        Process BiUniMgGlc16P2FluxProcess( MgGlc16P2 )
        Process ExpressionFluxProcess( MgGlc16P2 )
        {
                Expression "( ( (kmgf16p2a * (8.3 * 0.001 * ( Kmgfru16p2 + pow( 10, -1 * E0.Value ) * Khf * Kmghf ) / ( 1 + ( pow( 10, -1 * E0.Value ) * Khf ) + ( pow( 10, -2 * E0.Value ) * Khf * Kh2f ) + ( E1.MolarConc * Kkf ) + ( E1.MolarConc * pow( 10, -1 * E0.Value ) * Khf * Kkhf ) ))) * S0.MolarConc * S1.MolarConc - kmgf16p2d * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		Kmgfru16p2	3.63e+2;
		Khf	7.56e+6;
		Kmghf	8.9e+1;
		Kh2f	1.12e+6;
		Kkf	10.7;
		Kkhf	3.3;

		kmgf16p2a	4.80e+5;
		kmgf16p2d	1.2e+3;

                VariableReferenceList   
		[ S0 :.:Mg -1 ]
		[ S1 :.:Glc16P2 -1 ]
		[ P0 :.:Mg_Glc16P2 1 ]
		[ E0 :.:pH1 0 ]
		[ E1 :.:k 0 ];
	}

        Process ExpressionFluxProcess( MgPhos )
        {
                Expression "( ( (kmgphosa * ( ( 1 + pow( 10, -7.2 ) * Khphos + 0.15 * Kkphos ) / ( 1 + pow( 10, -1 * E0.Value ) * Khphos + E1.MolarConc * Kkphos ) )) * S0.MolarConc * S1.MolarConc - kmgphosd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		Khphos	5.68e+6;
		Kkphos	3.0;
		
		kmgphosa	4.08e+4;
		kmgphosd	1.2e+3;

                VariableReferenceList 
		[ S0 :.:Mg -1 ]
		[ S1 :.:Phos -1 ]
		[ P0 :.:Mg_Phos 1 ]
		[ E0 :.:pH1 0 ]
		[ E1 :.:k 0 ];
	}

### Hb-metabolite binding. ###

        Process ExpressionFluxProcess( HbMgATP )
        {
                Expression "( ( (ka * (( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ))) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		Kahb	1e-6.6;		
		ka	4.68e+4;
		kd	1.2e+3;
	
                VariableReferenceList   
		[ S0 :.:Hb -1 ]
		[ S1 :.:MgATP -1 ]
		[ P0 :.:Hb_MgATP 1 ]
		[ E0 :.:pH1 0 ];
	}

        Process ExpressionFluxProcess( HbATP )
        {
                Expression "( ( (ka * (( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ))) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";    
    
		Kahb	1e-6.6;
		ka	4.32e+5;
		kd	1.2e+3;
		
                VariableReferenceList   
		[ S0 :.:Hb -1 ]
		[ S1 :.:ATP -1 ]
		[ P0 :.:Hb_ATP 1 ]
		[ E0 :.:pH1 0 ];
	}

        Process ExpressionFluxProcess( HbADP )
        {
                Expression "( ( (ka * (( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ))) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		Kahb	1e-6.6;		
		ka	3.0e+5;
		kd	1.2e+3;

                VariableReferenceList   
		[ S0 :.:Hb -1 ]
		[ S1 :.:ADP -1 ]
		[ P0 :.:Hb_ADP 1 ]
		[ E0 :.:pH1 0 ];
	}

        Process ExpressionFluxProcess( HbB23PG )
        {
                Expression "( ( (ka * (( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ))) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		Kahb	1e-6.6;
		ka	3.0e+5;
		kd	1.2e+3;

                VariableReferenceList   
		[ S0 :.:Hb -1 ]
		[ S1 :.:B23PG -1 ]
		[ P0 :.:Hb_B23PG 1 ]
		[ E0 :.:pH1 0 ];
	}

        Process ExpressionFluxProcess( HbB13PG )
        {
                Expression "( ( (ka * (( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ))) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
    
		Kahb	1e-6.6;
		ka	3.8e+5;
		kd	1.2e+3;

                VariableReferenceList   
		[ S0 :.:Hb -1 ]
		[ S1 :.:B13PG -1 ]
		[ P0 :.:Hb_B13PG 1 ]
		[ E0 :.:pH1 0 ];
	}

}

System System( /CELL/MEMBRANE )
{
	StepperID	DE1;

        Process ExpressionFluxProcess( PyrTransport )
        {
                Expression "( (( (ki / E0.Value * ( 10.0 / 7.0 )) * S0.MolarConc ) * 0.35 - ( ki * P0.MolarConc ) * 0.5 ) * self.getSuperSystem().SizeN_A  * ( 20.0 / 7.0 ))";
    
		ki	1.8e-2;		

                VariableReferenceList   
		[ S0 :/CELL/CYTOPLASM:Pyr -1 ]
		[ P0 :/ENVIRONMENT:Pyre 0 ]
		[ E0 :/CELL/CYTOPLASM:r 0 ];
	}

        Process ExpressionFluxProcess( LacTransport )
        {
                Expression "( ( ( (ki / (( 1 + pow( 10, E0.Value - 3.73 ) ) / ( ( 1 + pow( 10, E0.Value - 3.73 ) ) / E1.Value )) * ( 10.0 / 7.0 )) * S0.MolarConc ) * 0.35 - ( ki * P0.MolarConc ) * 0.5 )* self.getSuperSystem().SizeN_A * ( 20.0 / 7.0 ))";
    
		ki	3.6e-3;

                VariableReferenceList   
		[ S0 :/CELL/CYTOPLASM:Lac -1 ]
		[ P0 :/ENVIRONMENT:Lace 0 ]
		[ E0 :/CELL/CYTOPLASM:pH1 0 ]
		[ E1 :/CELL/CYTOPLASM:r 0 ];

	}
	
        Process ExpressionFluxProcess( PhosTransport )
        {
                Expression "( ( ( (ki / (( 1 + pow( 10, E0.Value - 6.75 ) ) / ( ( 1 / E1.Value ) + ( pow( 10, E0.Value - 6.75 ) / pow( E1.Value, 2 ) ) )) * ( 10.0 / 7.0 )) * S0.MolarConc ) * 0.35 - ( ki * P0.MolarConc ) * 0.5 ) * self.getSuperSystem().SizeN_A * ( 20.0 / 7.0 ))";
    
		ki	5.6e-4;

                VariableReferenceList   
		[ S0 :/CELL/CYTOPLASM:Phos -1 ]
		[ P0 :/ENVIRONMENT:Phose 0 ]
		[ E0 :/CELL/CYTOPLASM:pH1 0 ]
		[ E1 :/CELL/CYTOPLASM:r 0 ];
	}
	
}
