

#
# Edited BAND3-Hb model 08/04/10
# created by eml2em program
# from file: 0701-band3.eml, date: Sun Jul  2 08:23:17 2006
#

Stepper ODEStepper( DE1 )
{

	MaxStepInterval	100.0;
	MinStepInterval	1e-100;
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
	Name	The;
	StepperID	DE1;
}

System System( /CELL/CYTOPLASM )
{
	Name	The;
	StepperID	DE1;

	Variable Variable( ADE )
	{
		Fixed	0;
		Name	Adenine;
		Value	894971.391725;
	}
	
	Variable Variable( ADO )
	{
		Fixed	0;
		Name	Adenosine;
		Value	2695.3994417;
	}
	
	Variable Variable( BPGSP )
	{
		Fixed	0;
		Value	13177.8507416;
	}
	
	Variable Variable( BPGSPP )
	{
		Fixed	0;
		Value	27700.3325174;
	}
	
	Variable Variable( BPGSPP_P2GA )
	{
		Fixed	0;
		Value	0.343196003477;
	}
	
	Variable Variable( BPGSPP_P3GA )
	{
		Fixed	0;
		Value	2.95674213921;
	}
	
	Variable Variable( BPGSPP_Phos )
	{
		Fixed	0;
		Value	46159.7130225;
	}
	
	Variable Variable( BPGSP_B13PG )
	{
		Fixed	0;
		Value	885.893482251;
	}
	
	Variable Variable( BPGSP_B23PG )
	{
		Fixed	0;
		Value	54011.7969339;
	}
	
	Variable Variable( CO2 )
	{
		Fixed	0;
		Name	CO2;
		Value	72265640.4;
	}
	
	Variable Variable( DHAP )
	{
		Fixed	0;
		Name	Dihydroxyacetone_phosphate;
		Value	1218337.23723;
	}
	
	Variable Variable( E4P )
	{
		Fixed	0;
		Name	Erythrose_4_phosphate;
		Value	33162.3714976;
	}

	Variable Variable( F6P )
	{
		Fixed	0;
		Name	Fructose_6_phosphate;
		Value	1189322.88976;
	}
	
	Variable Variable( FDP )
	{
		Fixed	0;
		Name	free_FDP;
		Value	360351.331018;
	}
	
	Variable Variable( G6P )
	{
		Fixed	0;
		Name	Glucose_6_phosphate;
		Value	3646419.11708;
	}
	
	Variable Variable( GA3P )
	{
		Fixed	0;
		Name	Glyceraldehyde_3_phosphate;
		Value	293549.547134;
	}
	
	Variable Variable( GDP )
	{
		Fixed	0;
		Name	free_GDP;
		Value	5774287.25996;
	}
	
	Variable Variable( GL6P )
	{
		Fixed	0;
		Name	Gluconolactone_6_phosphate;
		Value	315.897268678;
	}
	
	Variable Variable( GLC )
	{
		Fixed	0;
		Name	Glucose;
		Value	301106835.0;
	}
	
	Variable Variable( GO6P )
	{
		Fixed	0;
		Name	Gluconate_6_phosphate;
		Value	2678006.43366;
	}
	
	Variable Variable( GSH )
	{
		Fixed	0;
		Name	ReducedGlutathione;
		Value	195606915.85;
	}
	
	Variable Variable( GSSG )
	{
		Fixed	0;
		Name	oxidized_glutathione;
		Value	278134.054355;
	}
	
	Variable Variable( H )
	{
		Fixed	0;
		Name	Proton;
		Value	3798.363214;
	}
	
	Variable Variable( HXi )
	{
		Fixed	0;
		Name	Hypoxanthine_in;
		Value	97464.6949093;
	}
	
	Variable Variable( IMP )
	{
		Fixed	0;
		Name	Inosine_monophosphate;
		Value	494909.138032;
	}
	
	Variable Variable( INO )
	{
		Fixed	0;
		Name	Inosine;
		Value	8780.67666635;
	}
	
	Variable Variable( Ki )
	{
		Fixed	0;
		Name	Ki;
		Value	8304686885.21;
	}
	
	Variable Variable( LACi )
	{
		Fixed	0;
		Name	Lactate_in;
		Value	80301652.0716;
	}
	
	Variable Variable( L_GC )
	{
		Fixed	0;
		Name	L_Glutamyl_cysteine;
		Value	24040.7114698;
	}
	
	Variable Variable( Mg )
	{
		Fixed	0;
		Name	Mg;
		Value	26234067.2587;
	}
	
	Variable Variable( Mg13DPG )
	{
		Fixed	0;
		Name	Mg13DPG;
		Value	1817.22498782;
	}
	
	Variable Variable( Mg23DPG )
	{
		Fixed	0;
		Name	Mg23DPG;
		Value	42362012.5938;
	}
	
	Variable Variable( MgADP )
	{
		Fixed	0;
		Name	MgADP;
		Value	6900782.22224;
	}
	
	Variable Variable( MgAMP )
	{
		Fixed	0;
		Name	MgAMP;
		Value	39963.1155779;
	}
	
	Variable Variable( MgATP )
	{
		Fixed	0;
		Name	MgATP;
		Value	91472806.4996;
	}
	
	Variable Variable( MgFDP )
	{
		Fixed	0;
		Name	MgFDP;
		Value	65965.4279636;
	}
	
	Variable Variable( MgGDP )
	{
		Fixed	0;
		Name	MgGDP;
		Value	1057033.22702;
	}
	
	Variable Variable( MgPi )
	{
		Fixed	0;
		Name	MgPi;
		Value	925245.597526;
	}
	
	Variable Variable( NAD )
	{
		Fixed	0;
		Name	NAD;
		Value	3915811.35499;
	}
	
	Variable Variable( NADH )
	{
		Fixed	0;
		Name	NADH;
		Value	16643.8710818;
	}
	
	Variable Variable( NADP )
	{
		Fixed	0;
		Name	NADP;
		Value	3902.83468684;
	}
	
	Variable Variable( NADPH )
	{
		Fixed	0;
		Name	NADPH;
		Value	3931348.80531;
	}
	
	Variable Variable( Nai )
	{
		Fixed	0;
		Name	Nai;
		Value	1938176767.04;
	}
	
	Variable Variable( PCO2 )
	{
		Fixed	0;
		Name	PO2;
		Value	40.0;
	}
	
	Variable Variable( PEP )
	{
		Fixed	0;
		Name	Phosphoenolpyrvate;
		Value	582645.555217;
	}
	
	Variable Variable( PO2 )
	{
		Fixed	0;
		Name	PO2;
		Value	100.0;
	}
	
	Variable Variable( PRPP )
	{
		Fixed	0;
		Name	5;
		Value	88715.2120946;
	}
	
	Variable Variable( PYRi )
	{
		Fixed	0;
		Name	Pyrvate_in;
		Value	3110331.4457;
	}
	
	Variable Variable( Pi )
	{
		Fixed	0;
		Name	free_Pi;
		Value	61215118.9307;
	}
	
	Variable Variable( R1P )
	{
		Fixed	0;
		Name	Ribose_1_phosphate;
		Value	5061867.67158;
	}
	
	Variable Variable( R5P )
	{
		Fixed	0;
		Name	Ribose_5_phosphate;
		Value	366984.590102;
	}
	
	Variable Variable( RU5P )
	{
		Fixed	0;
		Name	Ribulose_5_phosphate;
		Value	308466.707644;
	}
	
	Variable Variable( S7P )
	{
		Fixed	0;
		Name	Sedoheptulose_7_phosphate;
		Value	1051428.40756;
	}
	
	Variable Variable( SIZE )
	{
		Fixed	0;
		Name	Volume;
		Value	1e-13;
	}
	
	Variable Variable( T )
	{
		Fixed	0;
		Name	temperature;
		Value	37.0;
	}
	
	Variable Variable( X5P )
	{
		Fixed	0;
		Name	Xylulose_5_phosphate;
		Value	563204.916455;
	}
	
	Variable Variable( _13DPG )
	{
		Fixed	0;
		Name	free_13DPG;
		Value	20743.1860754;
	}
	
	Variable Variable( _2PG )
	{
		Fixed	0;
		Name	2;
		Value	1048454.2949;
	}
	
	Variable Variable( _3PG )
	{
		Fixed	0;
		Name	3;
		Value	3474618.64191;
	}
	
	Variable Variable( band3 )
	{
		Fixed	0;
		Name	band3;
		Value	66018.6560696;
	}
	
	Variable Variable( band3ALD )
	{
		Fixed	0;
		Value	11653.0505738;
	}
	
	Variable Variable( band3GAPDH )
	{
		Fixed	0;
		Value	316691.189607;
	}
	
	Variable Variable( band3PFK )
	{
		Fixed	0;
		Value	5602.28410233;
	}
	
	Variable Variable( band3_ka )
	{
		Fixed	0;
		Value	1.0;
	}
	
	Variable Variable( band3_kd )
	{
		Fixed	0;
		Value	1.0;
	}
	
	Variable Variable( band3deoxyHb )
	{
		Fixed	0;
		Value	57742.7401447;
	}
	
	Variable Variable( band3deoxyHb13DPG )
	{
		Fixed	0;
		Value	30.8286098048;
	}
	
	Variable Variable( band3deoxyHb23DPG )
	{
		Fixed	0;
		Value	657413.972772;
	}
	
	Variable Variable( band3deoxyHbADP )
	{
		Fixed	0;
		Value	7699.64809685;
	}
	
	Variable Variable( band3deoxyHbATP )
	{
		Fixed	0;
		Value	19244.569881;
	}
	
	Variable Variable( band3deoxyHbFDP )
	{
		Fixed	0;
		Value	348.974974289;
	}
	
	Variable Variable( band3deoxyHbGDP )
	{
		Fixed	0;
		Value	5591.99196625;
	}
	
	Variable Variable( band3deoxyHbMgATP )
	{
		Fixed	0;
		Value	12279.1080023;
	}
	
	Variable Variable( band3oxyHb )
	{
		Fixed	0;
		Value	23308.1674044;
	}
	
	Variable Variable( band3oxyHb13DPG )
	{
		Fixed	0;
		Value	2.54234996508;
	}
	
	Variable Variable( band3oxyHb23DPG )
	{
		Fixed	0;
		Value	13268.4341728;
	}
	
	Variable Variable( band3oxyHbADP )
	{
		Fixed	0;
		Value	647.500903527;
	}
	
	Variable Variable( band3oxyHbATP )
	{
		Fixed	0;
		Value	1075.59333202;
	}
	
	Variable Variable( band3oxyHbFDP )
	{
		Fixed	0;
		Value	0.0;
	}
	
	Variable Variable( band3oxyHbGDP )
	{
		Fixed	0;
		Value	0.0;
	}
	
	Variable Variable( band3oxyHbMgATP )
	{
		Fixed	0;
		Value	1380.74706917;
	}
	
	Variable Variable( cysteine )
	{
		Fixed	0;
		Name	cysteine;
		Value	12044.2734;
	}
	
	Variable Variable( deoxyHb )
	{
		Fixed	0;
		Name	deoxyHb;
		Value	5267218.31807;
	}
	
	Variable Variable( deoxyHb13DPG )
	{
		Fixed	0;
		Name	deoxyHb13DPG;
		Value	2812.14604429;
	}
	
	Variable Variable( deoxyHb23DPG )
	{
		Fixed	0;
		Name	deoxyHb23DPG;
		Value	59968455.1038;
	}
	
	Variable Variable( deoxyHbADP )
	{
		Fixed	0;
		Name	deoxyHbADP;
		Value	702351.973543;
	}
	
	Variable Variable( deoxyHbATP )
	{
		Fixed	0;
		Name	deoxyHbATP;
		Value	1755464.85578;
	}
	
	Variable Variable( deoxyHbFDP )
	{
		Fixed	0;
		Name	deoxyHbFDP;
		Value	31833.0472803;
	}
	
	Variable Variable( deoxyHbGDP )
	{
		Fixed	0;
		Name	deoxyHbGDP;
		Value	510094.298354;
	}
	
	Variable Variable( deoxyHbMgATP )
	{
		Fixed	0;
		Name	deoxyHbMgATP;
		Value	1120084.4026;
	}
	
	Variable Variable( f23DPG )
	{
		Fixed	0;
		Name	f23DPG;
		Value	137126738.447;
	}
	
	Variable Variable( fADP )
	{
		Fixed	0;
		Name	free_ADP;
		Value	6691798.43574;
	}
	
	Variable Variable( fAMP )
	{
		Fixed	0;
		Name	free_AMP;
		Value	2036562.43934;
	}
	
	Variable Variable( fATP )
	{
		Fixed	0;
		Name	free_ATP;
		Value	7719480.62318;
	}
	
	Variable Variable( glutamate )
	{
		Fixed	0;
		Name	glutamate;
		Value	12044273.4;
	}
	
	Variable Variable( glycine )
	{
		Fixed	0;
		Name	glycine;
		Value	10839846.06;
	}
	
	Variable Variable( oxyHb )
	{
		Fixed	0;
		Name	oxyHb;
		Value	212614098.336;
	}
	
	Variable Variable( oxyHb13DPG )
	{
		Fixed	0;
		Name	oxyHb13DPG;
		Value	23190.9886393;
	}
	
	Variable Variable( oxyHb23DPG )
	{
		Fixed	0;
		Name	oxyHb23DPG;
		Value	121032946.05;
	}
	
	Variable Variable( oxyHbADP )
	{
		Fixed	0;
		Name	oxyHbADP;
		Value	5906419.77065;
	}
	
	Variable Variable( oxyHbATP )
	{
		Fixed	0;
		Name	oxyHbATP;
		Value	9811423.71667;
	}
	
	Variable Variable( oxyHbMgATP )
	{
		Fixed	0;
		Name	oxyHbMgATP;
		Value	12594996.7687;
	}
	
	Variable Variable( pHi )
	{
		Fixed	0;
		Name	pHi;
		Value	7.2;
	}
	
#	Variable Variable( t23DPG )
#	{
#		Fixed	0;
#		Name	t23DPG;
#		Value	361160834.601;
#	}
#
#	Variable Variable( tATP )
#	{
#		Fixed	0;
#		Name	tATP;
#		Value	138223318.056;
#	}
#	
#	Variable Variable( tdeoxyHb )
#	{
#		Fixed	0;
#		Name	tdeoxyHb;
#		Value	70060923.2398;
#	}
#	
#	Variable Variable( toxyHb )
#	{
#		Fixed	0;
#		Name	toxyHb;
#		Value	361999450.448;
#	}

	Variable Variable( E_HK )
	{
		Fixed	0;
		Name	Hexokinase;
		Value	1444.8;
	}

	Variable Variable( AC_HK )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_HK;
		Value	1000.0;
	}

	Variable Variable( E_PGI )
	{
		Fixed	0;
		Name	Phosphoglucoisomerase;
		Value	13123.6;
	}

	Variable Variable( AC_PGI )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_PGI;
		Value	1000.0;
	}

	Variable Variable( E_PFK )
	{
		Fixed	0;
		Name	Phosphofructokinase;
		Value	1022.06626748;
	}

	Variable Variable( AC_PFK )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_PFK;
		Value	1000.0;
	}

	Variable Variable( E_ALD )
	{
		Fixed	0;
		Name	Aldorase;
		Value	10629.7625104;
	}

	Variable Variable( AC_ALD )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_ALD;
		Value	1000.0;
	}

	Variable Variable( E_TPI )
	{
		Fixed	0;
		Name	Triose_Phosphate_Isomerase;
		Value	68628.0;
	}

	Variable Variable( AC_TPI )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_TPI;
		Value	1000.0;
	}

	Variable Variable( E_GAPDH )
	{
		Fixed	0;
		Name	Glyceraldehyde_phosphate_dehydrogenase;
		Value	144440.810299;
	}

	Variable Variable( AC_GAPDH )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_GAPDH;
		Value	1000.0;
	}

	Variable Variable( AC_DPGM )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_DPGM;
		Value	1000.0;
	}

	Variable Variable( AC_DPGase )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_DPGase;
		Value	1000.0;
	}

	Variable Variable( AC_BPGSP1 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_BPGSP1;
		Value	1000.0;
	}
	
	Variable Variable( AC_BPGSP2 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_BPGSP2;
		Value	1000.0;
	}
	
	Variable Variable( AC_BPGSP3 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_BPGSP3;
		Value	1000.0;
	}
	
	Variable Variable( AC_BPGSP4 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_BPGSP4;
		Value	1000.0;
	}
	
	Variable Variable( AC_BPGSP5 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_BPGSP5;
		Value	1000.0;
	}
	
	Variable Variable( AC_BPGSP6 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_BPGSP6;
		Value	1000.0;
	}
	
	Variable Variable( AC_BPGSP7 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_BPGSP7;
		Value	1000.0;
	}

	Variable Variable( AC_BPGSP8 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_BPGSP8;
		Value	1000.0;
	}
	
	Variable Variable( AC_BPGSP9 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_BPGSP9;
		Value	1000.0;
	}

	Variable Variable( E_PGK )
	{
		Fixed	0;
		Name	Phosphoglycerate_kinase;
		Value	164948.0;
	}

	Variable Variable( AC_PGK )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_PGK;
		Value	1000.0;
	}

	Variable Variable( E_PGM )
	{
		Fixed	0;
		Name	Phosphoglyceromutase;
		Value	24682.0;
	}

	Variable Variable( AC_PGM )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_PGM;
		Value	1000.0;
	}

	Variable Variable( E_EN )
	{
		Fixed	0;
		Name	Enolase;
		Value	13244.0;
	}

	Variable Variable( AC_EN )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_EN;
		Value	1000.0;
	}

	Variable Variable( E_PK )
	{
		Fixed	0;
		Name	Pyruvate_kinase;
		Value	5237.4;
	}

	Variable Variable( AC_PK )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_PK;
		Value	1000.0;
	}

	Variable Variable( E_LDH )
	{
		Fixed	0;
		Name	Lactate_dehydrogenase;
		Value	206679.731536;
	}

	Variable Variable( AC_LDH )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_LDH;
		Value	1000.0;
	}

        Variable Variable( E_LDH2 )
        {
                Fixed   0;
                Name    Lactate_dehydrogenase;
                Value   1.0;
               }

	Variable Variable( AC_LDH2 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_LDH2;
		Value	1000.0;
	}

	Variable Variable( E_G6PDH )
	{
		Fixed	0;
		Name	Glucose_6_phosphate_dehydrogenase;
		Value	1.0;
	}

	Variable Variable( AC_G6PDH )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_G6PDH;
		Value	1000.0;
	}

	Variable Variable( E_6PGLase )
	{
		Fixed	0;
		Name	6;
		Value	1.0;
	}

	Variable Variable( AC_6PGLase )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_6PGLase;
		Value	1000.0;
	}

	Variable Variable( E_6PGODH )
	{
		Fixed	0;
		Name	6;
		Value	126465.0;
	}

	Variable Variable( AC_6PGODH )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_6PGODH;
		Value	1000.0;
	}

	Variable Variable( E_TA )
	{
		Fixed	0;
		Name	Transaldolase;
		Value	41553.0;
	}

	Variable Variable( AC_TA )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_TA;
		Value	1000.0;
	}

	Variable Variable( E_TK1 )
	{
		Fixed	0;
		Name	Transketolase_I;
		Value	19873.0;
	}

	Variable Variable( AC_TK1 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_TK1;
		Value	1000.0;
	}

	Variable Variable( E_TK2 )
	{
		Fixed	0;
		Name	Transketolase_II;
		Value	19873.0;
	}

	Variable Variable( AC_TK2 )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_TK2;
		Value	1000.0;
	}

	Variable Variable( E_R5PI )
	{
		Fixed	0;
		Name	Ribose_5_phosphate_isomerase;
		Value	854840.0;
	}

	Variable Variable( AC_R5PI )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_R5PI;
		Value	1000.0;
	}

	Variable Variable( E_X5PI )
	{
		Fixed	0;
		Name	Xylulose_5_phosphate_isomerase;
		Value	254044.0;
	}

	Variable Variable( AC_X5PI )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_X5PI;
		Value	1000.0;
	}

	Variable Variable( E_L_GCS )
	{
		Fixed	0;
		Name	L_Glutamyl_cysteine_synthetase;
		Value	1.0;
	}

	Variable Variable( AC_L_GCS )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_L_GCS;
		Value	1000.0;
	}

	Variable Variable( E_GSH_S )
	{
		Fixed	0;
		Name	glutathione_synthetase;
		Value	1.0;
	}

	Variable Variable( AC_GSH_S )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_GSH_S;
		Value	1000.0;
	}

	Variable Variable( E_GSSGR )
	{
		Fixed	0;
		Name	Glutathione_reductase;
		Value	7528.0;
	}

	Variable Variable( AC_GSSGR )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_GSSGR;
		Value	1000.0;
	}

	Variable Variable( E_ADA )
	{
		Fixed	0;
		Name	Adenosine_deaminase;
		Value	1.0;
	}

	Variable Variable( AC_ADA )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_ADA;
		Value	1000.0;
	}

	Variable Variable( E_ADPRT )
	{
		Fixed	0;
		Name	Adenine_phosphoribosyl_transferase;
		Value	1.0;
	}

	Variable Variable( AC_ADPRT )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_ADPRT;
		Value	1000.0;
	}

	Variable Variable( E_AK )
	{
		Fixed	0;
		Name	Adenosine_kinase;
		Value	1.0;
	}

	Variable Variable( AC_AK )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_AK;
		Value	1000.0;
	}

	Variable Variable( E_AMPDA )
	{
		Fixed	0;
		Name	AMP_deaminase;
		Value	1.0;
	}

	Variable Variable( AC_AMPDA )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_AMPDA;
		Value	1000.0;
	}

	Variable Variable( E_AMPase )
	{
		Fixed	0;
		Name	AMP_phosphohydrolase;
		Value	1.0;
	}

	Variable Variable( AC_AMPase )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_AMPase;
		Value	1000.0;
	}

	Variable Variable( E_APK )
	{
		Fixed	0;
		Name	Adenylate_kinase;
		Value	58394.0;
	}

	Variable Variable( AC_APK )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_APK;
		Value	1000.0;
	}

	Variable Variable( E_HGPRT )
	{
		Fixed	0;
		Name	Hypoxanthine_guanine_phosphoryl_transferase;
		Value	1.0;
	}

	Variable Variable( AC_HGPRT )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_HGPRT;
		Value	1000.0;
	}

	Variable Variable( E_IMPase )
	{
		Fixed	0;
		Name	Inosine_monophosphatase;
		Value	1.0;
	}

	Variable Variable( AC_IMPase )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_IMPase;
		Value	1000.0;
	}

	Variable Variable( E_PNPase )
	{
		Fixed	0;
		Name	Purine_nucleoside_phosphorylase;
		Value	896378.0;
	}

	Variable Variable( AC_PNPase )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_PNPase;
		Value	1000.0;
	}

	Variable Variable( E_PRM )
	{
		Fixed	0;
		Name	Phosphoribomutase;
		Value	1.0;
	}

	Variable Variable( AC_PRM )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_PRM;
		Value	1000.0;
	}

	Variable Variable( E_PRPPsyn )
	{
		Fixed	0;
		Name	Phosphoribosyl_pyrophosphate_synthetase;
		Value	1.0;
	}

	Variable Variable( AC_PRPPsyn )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_PRPPsyn;
		Value	1000.0;
	}

	Variable Variable( E_ATPase )
	{
		Fixed	0;
		Name	ATP_phosphohydrolase;
		Value	1.0;
	}

	Variable Variable( AC_ATPase )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_ATPase;
		Value	2000.0;
	}

        Variable Variable( E_OX )
        {
                Fixed   0;
                Name    Gultathione_turnover;
                Value   1.0;
               }

	Variable Variable( AC_OX )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_OX;
		Value	1000.0;
	}

        Variable Variable( E_OXNADH )
        {
                Fixed    0;
                Name     Non_glycolytic_NADH_consumption_process;
                Value    1.0;
         }

	Variable Variable( AC_OXNADH )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_OXNADH;
		Value	1000.0;
	}

	Variable Variable( E_GSSG_transport )
	{
		Fixed	0;
		Name	GSSG_transport;
		Value	1.0;
	}

	Variable Variable( AC_GSSG_transport )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_GSSG_transport;
		Value	1000.0;
	}


	
##	      ##
## Glycolysis ##
##            ## 

	Process ExpressionFluxProcess( E_HK )
	{
		## EC: 2.7.1.1
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999   
		## PMID: 10477269

		Name	Hexokinase;
		
		StepperID	DE1;
		Priority	0;
		
        	HK	2.5e-08;
		K_GSSG	0.0;
		KdiB23PG	0.0027;
		KdiGSH	0.003;
		KdiGlc16P2	1e-05;
		KdiGlc6P	1e-05;
		KiGlc	4.7e-05;
		KiGlc6P	4.7e-05;
		KiMgADP	0.001;
		KiMgATP	0.001;
		KmMgADP	0.001;
		KmMgATP	0.001;
		kcatf	180.0;
		kcatr	1.16;

		Expression "( ( E3.MolarConc / E4.MolarConc ) / ( K_GSSG + ( E3.MolarConc / E4.MolarConc ) ) ) * ( HK / ( 1 + ( S1.MolarConc / KiMgATP ) + ( S0.MolarConc / KiGlc ) + ( ( S1.MolarConc * S0.MolarConc ) / ( KiGlc * KmMgATP ) ) + ( P1.MolarConc / KiMgADP ) + ( P0.MolarConc / KiGlc6P ) + ( ( P1.MolarConc * P0.MolarConc ) / ( KiGlc6P * KmMgADP ) ) + ( ( E1.MolarConc * S0.MolarConc ) / ( KdiB23PG * KiGlc ) ) + ( ( E2.MolarConc * S0.MolarConc ) / ( KdiGlc16P2 * KiGlc ) ) + ( ( P0.MolarConc * S0.MolarConc ) / ( KdiGlc6P * KiGlc ) ) + ( ( E3.MolarConc * S0.MolarConc ) / ( KdiGSH * KiGlc ) ) ) * ( ( ( ( kcatf * 1.662 ) / ( 1 + ( pow( 10, -1.0 * E0.Value ) / pow( 10, -7.02 ) ) + ( pow( 10, -9.55 ) / pow( 10, -1.0 * E0.Value ) ) ) ) * S0.MolarConc * S1.MolarConc ) / ( KiGlc * KmMgATP ) - ( ( ( kcatr * 1.662 ) / ( 1 + ( pow(10, -1.0 * E0.Value ) / pow( 10, -7.02 ) ) + ( pow( 10, -9.55 ) / pow( 10, -1.0 * E0.Value ) ) ) ) * P0.MolarConc * P1.MolarConc ) / ( KiGlc6P * KmMgADP ) ) ) * pow(10, -13) * N_A";

		VariableReferenceList	
		[ S1 :/CELL/CYTOPLASM:MgATP -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:f23DPG ] 
		[ E2 :/CELL/CYTOPLASM:GDP ] 
		[ E3 :/CELL/CYTOPLASM:GSH ] 
		[ E4 :/CELL/CYTOPLASM:GSSG ] 
		[ S0 :/CELL/CYTOPLASM:GLC ] 
		[ P0 :/CELL/CYTOPLASM:G6P 1 ] 
		[ P1 :/CELL/CYTOPLASM:MgADP 1 ];

	}

	Process ExpressionFluxProcess( E_PGI )
	{
		## EC: 5.3.1.9
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name    Phosphoglucoisomerase;

		StepperID	DE1;
		Priority	0;

		KmA	181.0;
		KmP	71.0;
		kcatf	1470.0;
		kcatr	1760.0;

		Expression "C0.Value * ( kcatf * ( 1000000 * S0.MolarConc ) / KmA - kcatr * (1000000 * P0.MolarConc ) / KmP ) / ( 1 + ( 1000000 * S0.MolarConc ) / KmA + ( 1000000 * P0.MolarConc ) / KmP ) * E0.Value / 1000";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:G6P -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_PGI ] 
		[ E0 :/CELL/CYTOPLASM:AC_PGI ] 
		[ P0 :/CELL/CYTOPLASM:F6P 1 ];

	}

	Process ExpressionFluxProcess( E_PFK )
	{
		## EC: 2.7.1.11
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name    phosphofructokinase;

		StepperID	DE1;
		Priority	0;

		KRAMP	3.5e-05;
		KRGlc16P2	1.51e-05;
		KRPhos	0.000431;
		KTATP	9.8e-06;
		KTB23PG	0.00144;
		KTMg	0.00044;
		K_GSSG	0.0;
		Ka	8.91250938134e-08;
		KmFru16P2	0.00042;
		KmFru6P	0.00027;
		KmMgADP	0.00054;
		KmMgATP	6.8e-05;
		kcatf	822.0;
		kcatr	36.0;
		n	2.0;

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:F6P -1 ] 
		[ S1 :/CELL/CYTOPLASM:MgATP -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_PFK ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:fATP ] 
		[ E2 :/CELL/CYTOPLASM:Mg ]  
		[ E3 :/CELL/CYTOPLASM:f23DPG ] 
		[ E4 :/CELL/CYTOPLASM:fAMP ] 
		[ E5 :/CELL/CYTOPLASM:Pi ] 
		[ E6 :/CELL/CYTOPLASM:GDP ] 
		[ E7 :/CELL/CYTOPLASM:AC_PFK ] 
		[ E8 :/CELL/CYTOPLASM:GSH ] 
		[ E9 :/CELL/CYTOPLASM:GSSG ] 
		[ P0 :/CELL/CYTOPLASM:FDP 1 ] 
		[ P1 :/CELL/CYTOPLASM:MgADP 1 ];


		Expression "(( C0.MolarConc / ( ( 1 + ( ( pow( pow( 10, -1 * E0.Value ) / Ka, n ) * pow( 1 + E1.MolarConc / KTATP, 4 ) * pow( 1 + E2.MolarConc / KTMg, 4 ) * pow( 1 + E3.MolarConc / KTB23PG, 4 ) ) / ( pow( 1 + ( S0.MolarConc / KmFru6P ) + ( P0.MolarConc / KmFru16P2 ), 4 ) * pow( 1 + E4.MolarConc / KRAMP, 4 ) * pow( 1 + E5.MolarConc / KRPhos, 4 ) * pow( 1 + E6.MolarConc / KRGlc16P2, 4 ) ) ) ) *( 1 + ( S0.MolarConc / KmFru6P ) + ( S1.MolarConc / KmMgATP ) + ( ( S0.MolarConc * S1.MolarConc ) / ( KmFru6P * KmMgATP ) ) + ( P0.MolarConc / KmFru16P2 ) + ( P1.MolarConc / KmMgADP ) + ( ( P0.MolarConc * P1.MolarConc ) / ( KmFru16P2 * KmMgADP ) ) ) ) ) * ( ( kcatf * S0.MolarConc * S1.MolarConc ) / ( KmFru6P * KmMgATP ) - ( kcatf * P0.MolarConc * P1.MolarConc ) / ( KmFru16P2 * KmMgADP ) ) )*(E8.MolarConc/E9.MolarConc/(K_GSSG + E8.MolarConc/E9.MolarConc)) * self.getSuperSystem().SizeN_A * E7.Value/1000";
        }
	Process ExpressionFluxProcess( E_ALD )
	{
		## EC: 4.1.2.13
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name	Aldolase;

		StepperID	DE1;
		Priority	0;

		KiA	19.8;
		KiI	1500.0;
		KiQ	11.0;
		KmA	16.5;
		KmP	190.0;
		KmQ	35.0;
		kcatf	68.0;
		kcatr	234.0;


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:FDP -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_ALD ] 
		[ E0 :/CELL/CYTOPLASM:AC_ALD ] 
		[ E1 :/CELL/CYTOPLASM:f23DPG ] 
		[ P0 :/CELL/CYTOPLASM:GA3P 1 ] 
		[ P1 :/CELL/CYTOPLASM:DHAP 1 ];

		Expression "( C0.Value * ( ( kcatf * ( ( 1000000 * S0.MolarConc ) / KmA ) - kcatr * ( ( 1000000 * P0.MolarConc ) / KmP ) * ( ( 1000000 * P1.MolarConc ) / KiQ ) ) / ( 1 + (  ( 1000000 * E1.MolarConc ) / KiI ) + (  ( 1000000 * S0.MolarConc ) / KmA ) + KmQ * ( ( 1000000 * P0.MolarConc ) / KmP ) / KiQ + ( 1 + (  ( 1000000 * E1.MolarConc ) / KiI ) ) + ( ( 1000000 * P1.MolarConc ) / KiQ ) + KmQ *  (  ( 1000000 * S0.MolarConc ) / KiA ) * ( ( 1000000 * P0.MolarConc ) / KmP ) / KiQ + ( ( 1000000 * P0.MolarConc ) / KmP ) * ( ( 1000000 * P1.MolarConc ) / KiQ ) ) ) ) * ( E0.Value / 1000 )";
	}

	Process ExpressionFluxProcess( E_TPI )
	{
		## EC: 5.3.1.1
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name	Triose_phosphate_isomerase;

		StepperID	DE1;
		Priority	0;

		KmA	162.4;
		KmP	446.0;
		kcatf	1280.0;
		kcatr	14560.0;


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:DHAP -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_TPI ] 
		[ E0 :/CELL/CYTOPLASM:AC_TPI ] 
		[ P0 :/CELL/CYTOPLASM:GA3P 1 ]; 		  

	      Expression "( C0.Value * ( kcatf * (1000000 * S0.MolarConc) / KmA -( kcatr * 1000000 ) * P0.MolarConc / KmP ) / ( 1 +( 1000000 * S0.MolarConc )/ KmA + ( 1000000 * P0.MolarConc ) / KmP ) * E0.Value /1000)";

	}

	  Process ExpressionFluxProcess( E_GAPDH )
	  {
	  	## EC: 1.2.1.12
	  	## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
	  	## PMID: 10477269

	  	Name  Glyceraldehyde_phosphate_dehydrogenase;

	  	StepperID	DE1;
	  	Priority	0;

	  	KiB13PG	0.01;
	  	KiGraP	0.065;
	  	KiNAD	4.5e-05;
	  	KiNADH	1e-05;
	  	KiPhos	0.00316;
	  	KidB13PG	1e-06;
	  	KidGraP 3.1e-05;
	  	KmB13PG 6.71e-07;
	  	KmGraP 9.5e-05;
	  	KmNAD 4.5e-05;
	  	KmNADH 3.3e-06;
	  	KmPhos 0.00316;
	  	kcatf 232.0;
	  	kcatr 2765.0;																				            VariableReferenceList 
	  	[ S0 :/CELL/CYTOPLASM:GA3P -1 ] 
	  	[ S1 :/CELL/CYTOPLASM:Pi -1 ] 
	  	[ S2 :/CELL/CYTOPLASM:NAD -1 ] 
	  	[ E0 :/CELL/CYTOPLASM:pHi ] 
	  	[ P0 :/CELL/CYTOPLASM:_13DPG 1 ]              
	  	[ P1 :/CELL/CYTOPLASM:NADH 1 ]
                [ E1 :/CELL/CYTOPLASM:E_GAPDH 0];

	 	Expression "( ( E1.MolarConc / ( ( S0.MolarConc /  ( ( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) ) ) ) * ( 1 + S0.MolarConc / KidGraP ) + ( P0.MolarConc / ( ( KiB13PG * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 * E0.Value ) ) ) ) ) * ( 1 + S0.MolarConc / KidGraP ) + ( ( KmB13PG * P1.MolarConc ) / (( ( KiB13PG * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 * E0.Value ) ) ) )  * ( KmNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) ) ) ) ) + ( ( KmGraP * S2.MolarConc * S1.MolarConc ) / (  ( ( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 * E0.Value ) ) ) ) * KmNAD * KiPhos ) ) + ( ( S2.MolarConc * S0.MolarConc ) / ( KiNAD *  ( ( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) ) ) ) ) +  ( ( S1.MolarConc * S0.MolarConc ) / ( KiPhos *  ( ( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) ) ) ) ) * ( 1 + S0.MolarConc / KidGraP ) + ( ( S2.MolarConc * P0.MolarConc ) / ( KiNAD * ( ( KiB13PG * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 * E0.Value ) ) ) ) ) ) + ( ( KmB13PG * S1.MolarConc * P1.MolarConc ) / ( KiPhos * ( ( KiB13PG * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 * E0.Value ) ) ) ) * ( KmNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) ) ) ) ) + ( ( S0.MolarConc * P1.MolarConc ) / (  ( ( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 * E0.Value ) ) ) ) * ( KiNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) ) ) ) ) + ( ( P0.MolarConc * P1.MolarConc ) / ( ( ( KiB13PG * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 * E0.Value ) ) ) ) * ( KmNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) ) ) ) ) + ( ( S2.MolarConc * S1.MolarConc * S0.MolarConc ) / ( KmNAD * KiPhos *  ( ( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) ) ) ) ) + ( ( KmGraP * S2.MolarConc * S1.MolarConc * P0.MolarConc ) / (  ( ( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) ) ) * KmNAD * KiPhos * KidB13PG ) ) + ( ( S1.MolarConc * S0.MolarConc * P1.MolarConc ) / ( KiPhos *  ( ( KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) ) ) * ( KiNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) ) ) ) ) + ( ( KmB13PG * S1.MolarConc * P0.MolarConc * P1.MolarConc ) / ( ( ( KiB13PG * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 * E0.Value ) ) ) ) * ( KmNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) ) ) * KiPhos * KidB13PG ) ) ) ) * ( ( ( ( kcatf * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) ) ) * S0.MolarConc * S1.MolarConc * S2.MolarConc ) /  ( KmNAD * KiPhos *  ( (KiGraP * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) ) ) ) - ( ( ( kcatr * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 *  E0.Value ) ) ) ) * P0.MolarConc * P1.MolarConc ) / ( ( ( KiB13PG * 2.997 ) / ( 1 + ( pow( 10, -1 * E0.Value ) / pow( 10, -7.5 ) ) + ( pow( 10, -10.0 ) / pow( 10, -1 * E0.Value ) ) ) ) * ( KmNADH * ( pow( 10, -7.2 ) / pow( 10, -1 * E0.Value ) ) ) ) ) ) * (self.getSuperSystem().SizeN_A)";
	  }

	Process ExpressionFluxProcess( E_BPGSP1 )
	{
		## EC: 5.4.2.4
		## Reference: Mulquiney, Bubb and Kuchel, Biochem.J.(342 pt3, 567-80), 1999
		## PMID: 10477268

		Name	Diphosphoglycerate_mutase;

		StepperID	DE1;
		Priority	0;

		k1	80000000.0;
		k2	400.0;

		Expression "( ( ( k1 * ( ( 1 + pow( 10, -6.8 ) / pow( 10, -7.20 ) ) / ( 1 + pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) ) ) * S0.MolarConc * S1.MolarConc - k2 * P0.MolarConc ) * self.getSuperSystem().SizeN_A ) * E1.Value / 1000";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:_13DPG -1 ] 
		[ S1 :/CELL/CYTOPLASM:BPGSP -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:AC_BPGSP1 ] 
		[ P0 :/CELL/CYTOPLASM:BPGSP_B13PG 1 ];

	}
	
	Process ExpressionFluxProcess( E_BPGSP2 )
	{
		## EC: 5.4.2.4
		## Reference: Mulquiney, Bubb and Kuchel, Biochem.J.(342 pt3, 567-80), 1999
		## PMID: 10477268

		Name	Diphosphoglycerate_mutase;


		StepperID	DE1;
		Priority	0;
		
		k3	9.9;

		Expression "( ( k3 * ( ( 1 + pow( pow( 10, -7.2 ) / pow( 10, -7.17 ), 4 ) ) / ( 1 + pow( pow( 10, -1 * E0.Value ) / pow( 10, -7.17 ) , 4 ) ) ) ) * S0.MolarConc ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:BPGSP_B13PG -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:AC_BPGSP2 ] 
		[ P0 :/CELL/CYTOPLASM:BPGSPP 1 ] 
		[ P1 :/CELL/CYTOPLASM:_3PG 1 ];
		
	}
	Process ExpressionFluxProcess( E_BPGSP3 )	
	{
		## EC: 5.4.2.4
		## Reference: Mulquiney, Bubb and Kuchel, Biochem.J.(342 pt3, 567-80), 1999
		## PMID: 10477268

		Name	Diphosphoglycerate_mutase;

		StepperID	DE1;
		Priority	0;

		k4	185000000.0;
		k5	100000000.0;

		Expression "( ( k4 * ( ( 1 + pow( pow( 10, -7.2 ) / pow( 10, -7.17 ), 4 ) ) / ( 1 + pow( pow( 10, -1 * E0.Value ) / pow( 10, -7.17 ), 4 ) ) ) ) * S0.MolarConc * S1.MolarConc - k5 * P0.MolarConc ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:BPGSPP -1 ] 
		[ S1 :/CELL/CYTOPLASM:_3PG -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:AC_BPGSP3 ] 
		[ P0 :/CELL/CYTOPLASM:BPGSPP_P3GA 1 ];

	}
	
	Process ExpressionFluxProcess( E_BPGSP4 )
	{
		## EC: 5.4.2.4
		## Reference: Mulquiney, Bubb and Kuchel, Biochem.J.(342 pt3, 567-80), 1999
		## PMID: 10477268

		Name	Diphosphoglycerate_mutase;

		StepperID	DE1;
		Priority	0;

		k6	1000.0;
		k7	1000.0;

		Expression "( ( k6 * ( ( 1 + pow( pow( 10, -7.2 ) / pow( 10, -7.17 ), 4 ) ) / ( 1 + pow( pow( 10, -1 * E0.Value ) / pow( 10, -7.17 ), 4 ) ) ) ) * S0.MolarConc * S1.MolarConc - k7 * P0.MolarConc ) * self.getSuperSystem().SizeN_A";
		
		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:BPGSPP -1 ]
		[ S1 :/CELL/CYTOPLASM:_2PG -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:AC_BPGSP4 ] 
		[ P0 :/CELL/CYTOPLASM:BPGSPP_P2GA 1 ];

	}
	
	Process ExpressionFluxProcess( E_BPGSP5 )
	{
		## EC: 5.4.2.4
		## Reference: Mulquiney, Bubb and Kuchel, Biochem.J.(342 pt3, 567-80), 1999
		## PMID: 10477268

		Name	Diphosphoglycerate_mutase;

		StepperID	DE1;
		Priority	0;

		k8	10000.0;
		k9	0.55;

		Expression "( k8 * S0.MolarConc - k9 * P0.MolarConc ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:BPGSPP_P3GA -1 ] 
		[ E0 :/CELL/CYTOPLASM:AC_BPGSP5 ] 
		[ P0 :/CELL/CYTOPLASM:BPGSP_B23PG 1 ];

	}
	
	Process ExpressionFluxProcess( E_BPGSP6 )
	{
		## EC: 5.4.2.4
		## Reference: Mulquiney, Bubb and Kuchel, Biochem.J.(342 pt3, 567-80), 1999
		## PMID: 10477268

		Name	Diphosphoglycerate_mutase;

		StepperID	DE1;
		Priority	0;

		k10	1979.0;
		k11	0.01;

		Expression "( k10 * S0.MolarConc - k11 * P0.MolarConc ) * self.getSuperSystem().SizeN_A";
		
		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:BPGSPP_P2GA -1 ] 
		[ E0 :/CELL/CYTOPLASM:AC_BPGSP6 ] 
		[ P0 :/CELL/CYTOPLASM:BPGSP_B23PG 1 ];

	}
	
	Process ExpressionFluxProcess( E_BPGSP7 )
	{
		## EC: 5.4.2.4
		## Reference: Mulquiney, Bubb and Kuchel, Biochem.J.(342 pt3, 567-80), 1999
		## PMID: 10477268

                Name           Diphosphoglycerate_mutase;
 
		StepperID	DE1;
		Priority	0;

		k12	1000.0;
		k13	1800000.0;

		Expression "( k12 * S0.MolarConc - ( ( k13 * (( 1 + pow(10, -6.8) / pow(10, -7.20) ) / ( 1 + pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) ) ) ) * P0.MolarConc * P1.MolarConc ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:BPGSP_B23PG -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:AC_BPGSP7 ] 
		[ P0 :/CELL/CYTOPLASM:BPGSP 1 ] 
		[ P1 :/CELL/CYTOPLASM:f23DPG 1 ];

	}

	Process ExpressionFluxProcess( E_BPGSP8 )	
	{
		## EC: 3.1.3.13
		## Reference: Mulquiney, Bubb and Kuchel, Biochem.J.(342 pt3, 567-80), 1999
		## PMID: 10477268

		Name           diphosphoglycerate_phosphoatase;

		StepperID	DE1;
		Priority	0;

		k14	1000000000.0;
		k15	610000.0;

		Expression "( k14 * S0.MolarConc * S1.MolarConc - k15 * P0.MolarConc ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:BPGSPP -1 ] 
		[ S1 :/CELL/CYTOPLASM:Pi -1 ] 
		[ E0 :/CELL/CYTOPLASM:AC_BPGSP8 ] 
		[ P0 :/CELL/CYTOPLASM:BPGSPP_Phos 1 ];


	}
	
	Process ExpressionFluxProcess( E_BPGSP9 )
	{
		## EC: 3.1.3.13
		## Reference: Mulquiney, Bubb and Kuchel, Biochem.J.(342 pt3, 567-80), 1999
		## PMID: 10477268

		Name	Diphosphoglycerate_phosphoatase;

		StepperID	DE1;
		Priority	0;

		k16	0.19;

		Expression " k16 * S0.MolarConc * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:BPGSPP_Phos -1 ] 
		[ E0 :/CELL/CYTOPLASM:AC_BPGSP9 ] 
		[ P0 :/CELL/CYTOPLASM:BPGSP 1 ] 
		[ P1 :/CELL/CYTOPLASM:Pi 2 ];

	}

	   Process ExpressionFluxProcess( E_PGK )
	   {
	   	## EC: 2.7.2.3
	   	## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3 581-96), 1999
	   	## PMID: 10477269

	   	Name	phosphoglycerate_kinase;

	   	StepperID	DE1;
	   	Priority	0;

	   	KiB13PG	1.6e-06;
	   	KiMgADP	8e-05;
	   	KiMgATP	0.00013;
	   	KiP3GA	0.000205;
	   	KmB13PG	2e-06;
	   	KmMgADP	0.0001;
	   	KmMgATP	0.001;
	   	KmP3GA	0.0011;
	   	PGK	2.74e-06;
	   	kcatf	2290.0;
	   	kcatr	917.0;

	   	VariableReferenceList	
	   	[ S0 :/CELL/CYTOPLASM:_13DPG -1 ] 
	   	[ S1 :/CELL/CYTOPLASM:MgADP -1 ] 
	   	[ P0 :/CELL/CYTOPLASM:_3PG 1 ] 
	   	[ P1 :/CELL/CYTOPLASM:MgATP 1 ];
		
	   	Expression " ( ( PGK / ( 1 + S1.MolarConc / KiMgADP + S0.MolarConc / KiB13PG + ( S1.MolarConc * S0.MolarConc ) / ( KiMgADP * KmB13PG ) + P1.MolarConc / KiMgATP + P0.MolarConc / KiP3GA + ( P1.MolarConc * P0.MolarConc ) / ( KiMgATP * KmP3GA ) ) ) * ( ( ( kcatf * S0.MolarConc * S1.MolarConc ) / ( KiMgADP * KmB13PG ) ) - ( ( kcatr * P0.MolarConc * P1.MolarConc ) / ( KiMgATP * KmP3GA ) ) ) ) * self.getSuperSystem().SizeN_A";
		
	   }
	
	Process ExpressionFluxProcess( E_PGM )
	{
		## EC: 5.4.2.1
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name	Phosphoglyceromutase;

		StepperID	DE1;
		Priority	0;

		KmP2GA	4.6e-05;
		KmP3GA	0.000168;
		PGM	4.1e-07;
		kcatf	795.0;
		kcatr	714.0;

		Expression " ( ( PGM / ( 1 + ( S0.MolarConc / KmP3GA ) + ( P0.MolarConc / KmP2GA ) ) ) * ( ( ( kcatf * S0.MolarConc ) / KmP3GA ) - ( ( kcatr * P0.MolarConc ) / KmP2GA ) ) ) * self.getSuperSystem().SizeN_A";		
		
		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:_3PG -1 ] 
		[ P0 :/CELL/CYTOPLASM:_2PG 1 ];
	
	}

	Process ExpressionFluxProcess( E_EN )
	{
		## EC: 4.2.1.11
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name	Enolase;

		StepperID	DE1;
		Priority	0;

		KiMg	460.0;
		KiPEP	310.0;
		KiPG	140.0;
		KmMg	46.0;
		KmPEP	310.0;
		KmPG	140.0;
		kcatf	190.0;
		kcatr	50.0;

		Expression " C0.Value * ( ( kcatf * ( ( 1000000 * S0.MolarConc ) / KmPG ) * ( ( 1000000 * E1.MolarConc ) / KiMg ) - kcatr * ( ( 1000000 * E1.MolarConc ) / KmMg ) * ( ( 1000000 * P0.MolarConc ) / KiPEP ) ) / ( 1 + ( ( 1000000 * S0.MolarConc ) / KiPG ) + ( ( 1000000 * E1.MolarConc ) / KiMg ) + ( ( 1000000 * S0.MolarConc ) / KmPG ) * ( ( 1000000 * E1.MolarConc ) / KiMg ) + ( ( 1000000 * P0.MolarConc ) / KiPEP ) + ( ( 1000000 * E1.MolarConc ) / KmMg ) * ( ( 1000000 * P0.MolarConc ) / KiPEP ) ) ) * ( E0.Value / 1000 )";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:_2PG -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_EN ] 
		[ E0 :/CELL/CYTOPLASM:AC_EN ] 
		[ E1 :/CELL/CYTOPLASM:Mg ] 
		[ P0 :/CELL/CYTOPLASM:PEP 1 ];

	}

	Process ExpressionFluxProcess( E_PK )
	{
		## EC: 2.7.1.40
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name	Pyruvate_kinase;

		StepperID	DE1;
		Priority	0;

	 	KRF16P2	5e-06;
		KRG16P2	0.0001;
		KRMgADP	0.000474;
		KRMgATP	0.003;
		KRPEP	0.000225;
		KRPyr	0.002;
		KTATP	0.00339;
		PK	8.7e-08;
		kcatf	1386.0;
		kcatr	3.26;
		
		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:PEP -1 ] 
		[ S1 :/CELL/CYTOPLASM:MgADP -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:fATP ] 
		[ E2 :/CELL/CYTOPLASM:FDP ] 
		[ E3 :/CELL/CYTOPLASM:GDP ] 
		[ P0 :/CELL/CYTOPLASM:PYRi 1 ] 
		[ P1 :/CELL/CYTOPLASM:MgATP 1 ];

                Expression "( PK / ( ( 1 + ( ( pow( 10, -6.8 ) / pow( 10, -1 * E0.Value ) ) * pow( 1 + ( E1.MolarConc / KTATP ), 4 ) ) / ( ( pow( 1 + ( S0.MolarConc / KRPEP ) + ( P0.MolarConc / KRPyr ), 4 ) ) * ( pow( 1 + ( E2.MolarConc / KRF16P2 ) + ( E3.MolarConc / KRG16P2 ) , 4 ) ) ) ) * ( 1 + ( S0.MolarConc / KRPEP ) + ( S1.MolarConc / KRMgADP ) + ( ( S0.MolarConc * S1.MolarConc ) / ( KRPEP * KRMgADP ) ) + ( P0.MolarConc / KRPyr ) + ( P1.MolarConc / KRMgATP ) + ( ( P0.MolarConc * P1.MolarConc ) / ( KRPyr * KRMgATP ) ) ) ) ) * ( ( kcatf * S0.MolarConc * S1.MolarConc ) / ( KRPEP * KRMgADP ) - ( kcatr * P0.MolarConc * P1.MolarConc ) / ( KRMgATP * KRPyr ) ) * self.getSuperSystem().SizeN_A";
	}

	Process ExpressionFluxProcess( E_LDH )
	{
		## EC: 1.1.1.27
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name	Lactate_dehydrogenase;

		StepperID	DE1;
		Priority	0;


		KiLAC	7330.0;
		KiNAD	503.0;
		KiNADH	2.45;
		KiaPYR	228.0;
		KibPYR	101.0;
		KmLAC	1070.0;
		KmNAD	107.0;
		KmNADH	8.44;
		KmPYR	137.0;
		Kcatf	458.0;
		Kcatr	115.0;

		Expression "1 * ( ( ( Kcatf * ( ( 1000000 * S1.MolarConc ) / KiNADH ) * ( ( 1000000 * S0.MolarConc ) / KmPYR ) ) - ( Kcatr * ( ( 1000000 * P1.MolarConc ) / KiNAD ) * ( ( 1000000 * P0.MolarConc ) / KmLAC ) ) ) / ( ( 1 + ( ( 1000000 * S0.MolarConc ) / KmPYR ) * ( KmNADH / KiNADH ) + ( ( 1000000 * P0.MolarConc ) / KmLAC ) * ( KmNAD / KiNAD ) ) * (1 + ( ( 1000000 * S0.MolarConc ) / KibPYR ) ) + ( ( 1000000 * S1.MolarConc ) / KiNADH ) + ( ( 1000000 * P1.MolarConc ) / KiNAD) + ( ( 1000000 * S1.MolarConc ) / KiNADH ) * ( ( 1000000 * S0.MolarConc ) / KmPYR ) + ( ( 1000000 * S1.MolarConc ) / KiNADH ) * ( ( 1000000 * P0.MolarConc ) / KmLAC ) * ( KmNAD / KiNAD ) + ( ( 1000000 * P1.MolarConc) / KiNAD ) * ( ( 1000000 * P0.MolarConc ) / KmLAC ) * ( KmNADH / KiNADH ) + ( ( 1000000 * P0.MolarConc ) / KmLAC ) * ( ( 1000000 * P1.MolarConc ) / KiNAD ) + ( ( 1000000 * S1.MolarConc ) / KiNADH ) * ( ( 1000000 * S0.MolarConc ) / KmPYR ) * ( ( 1000000 * P0.MolarConc ) / KiLAC ) + ( ( 1000000 * S0.MolarConc ) / KiaPYR ) * ( ( 1000000 * P0.MolarConc ) / KmLAC ) * ( ( 1000000 * P1.MolarConc ) / KiNAD ) ) ) * C0.Value * ( E0.Value / 1000 )";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:PYRi -1 ] 
		[ S1 :/CELL/CYTOPLASM:NADH -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_LDH ] 
		[ E0 :/CELL/CYTOPLASM:AC_LDH ] 
		[ E1 :/CELL/CYTOPLASM:pHi ] 
		[ P0 :/CELL/CYTOPLASM:LACi 1 ] 
		[ P1 :/CELL/CYTOPLASM:NAD 1 ];
	}

	Process ExpressionFluxProcess( E_LDH2 )
	{
		## EC: 1.1.1.27
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name	Lactate_dehydrogenase;

		StepperID	DE1;
		Priority	0;

		KmLac	0.000414;
		KmPyr	0.000414;
		kf	0.00346;
		kr	5.43e-07;

		Expression "E0.Value * ( ( 1 / ( 1 + ( S0.MolarConc / KmPyr ) + ( P0.MolarConc / KmLac ) ) ) * ( ( ( kf * S0.MolarConc * S1.MolarConc ) / KmPyr ) - ( ( kr * P0.MolarConc * P1.MolarConc ) / KmLac ) ) ) * self.getSuperSystem().SizeN_A / 1000";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:PYRi -1 ] 
		[ S1 :/CELL/CYTOPLASM:NADPH -1 ] 
		[ E0 :/CELL/CYTOPLASM:AC_LDH2 ] 
		[ P0 :/CELL/CYTOPLASM:LACi 1 ] 
		[ P1 :/CELL/CYTOPLASM:NADP 1 ];

	}

##                           ##
## pentose phosphate pathway ##
##                           ##  

	  Process ExpressionFluxProcess( E_G6PDH )
	  {
	  	## EC: 1.1.1.49
	  	## Reference: Buckwitz, Jacobasch, Kuckelkorn, Plonka and Gerth, Exp.Parasitol(70 3, 264-75), 1990
	  	## PMID: 2178950

	  	Name	Glucose_6_phosphate_dehydrogenase;

	  	StepperID	DE1;
	  	Priority	0;

	  	K_ATP	749.0;
	  	K_DPG	2289.0;
	  	K_G6P	66.7;
	  	K_GSSG	0.0;
	  	K_NADP	3.67;
	  	K_NADPH	3.12;
	  	Vm	64.0;


	  	VariableReferenceList	
	  	[ S0 :/CELL/CYTOPLASM:NADP -1 ] 
	  	[ S1 :/CELL/CYTOPLASM:G6P -1 ] 
	  	[ C0 :/CELL/CYTOPLASM:E_G6PDH ] 
	  	[ E0 :/CELL/CYTOPLASM:AC_G6PDH ] 
	  	[ E1 :/CELL/CYTOPLASM:MgATP ] 
	  	[ E2 :/CELL/CYTOPLASM:f23DPG ] 
	  	[ E3 :/CELL/CYTOPLASM:GSH ] 
	  	[ E4 :/CELL/CYTOPLASM:GSSG ] 
	 	[ P0 :/CELL/CYTOPLASM:GL6P 1 ] 
	  	[ P1 :/CELL/CYTOPLASM:NADPH 1 ];

      	 	Expression "( ( Vm * ( ( 1000000 * S0.MolarConc ) * ( 1000000 * S1.MolarConc ) / ( K_NADP * K_G6P ) ) / ( 1 + ( 1000000 * S0.MolarConc ) * ( 1 + ( 1000000 * S1.MolarConc ) / K_G6P ) / K_NADP + ( 1000000 * P1.MolarConc ) / K_NADPH + ( 1000000 * E1.MolarConc ) / K_ATP + ( 1000000 * E2.MolarConc ) / K_DPG ) ) ) * ( E0.Value / 1000 / 1000000 ) * ( self.getSuperSystem().SizeN_A )";

	  }

	  Process ExpressionFluxProcess ( E_6PGLase )
	  {
	  	## EC: 3.1.1.31
	  	## Reference: McIntyre, Thorburn, Bubb and Kuchel, Eur.J.Biochem(180 2, 399-420), 1989
	  	## PMID: 2924774

	  	Name	"6_Phosphogluconolactonase";

	  	StepperID	DE1;
	  	Priority	0;

	  	Km	0.079882812;
	  	Vm	2251.8;


	  	VariableReferenceList	
	  	[ S0 :/CELL/CYTOPLASM:GL6P -1 ] 
	  	[ C0 :/CELL/CYTOPLASM:E_6PGLase ] 
	  	[ E0 :/CELL/CYTOPLASM:AC_6PGLase ] 
	  	[ P0 :/CELL/CYTOPLASM:GO6P 1 ];
 
	  	Expression "( ( (1000 * S0.MolarConc) / ( Km + 1000 * S0.MolarConc ) ) * ( Vm * self.getSuperSystem().SizeN_A ) ) * ( E0.Value / 1000 / 1000 / 3600 )"; 
	  }

	  Process ExpressionFluxProcess( E_6PGODH )
	  {
	  	## EC: 1.1.1.44
	  	## Reference: McIntyre, Thorburn, Bubb and Kuchel, Eur.J.Biochem(180 2, 399-420), 1989
	  	## PMID: 2924774

	  	Name	"6_Phosphogluconate";


	 	StepperID	DE1;
	 	Priority	0;

	  	k1	2400000.0;
	  	k10	225000.0;
	  	k11	300.0;
	  	k12	4950000.0;
	  	k2	410.0;
	  	k3	2000000000.0;
	  	k4	26000.0;
	  	k5	48.0;
	  	k6	30.0;
	  	k7	630.0;
	  	k8	36000.0;
	  	k9	800.0;

	  	Expression " C0.Value * ( ( k1 * k3 * k5 * k7 * k9 * k11 ) * S0.MolarConc * S1.MolarConc - ( k2 * k4 * k6 * k8 * k10 * k12 ) * P0.MolarConc * P1.MolarConc * P2.MolarConc ) / ( ( k2 * k9 * k11 * ( k4 * k6 + k4 * k7 + k5 * k7 ) ) + ( k1 * k9 * k11 * ( k4 * k6 + k4 * k7 + k5 * k7 ) ) * S0.MolarConc + ( k3 * k5 * k7 * k9 * k11 ) * S1.MolarConc + ( k2 * k4 * k6 * k8 * k11 ) * P0.MolarConc + ( k2 * k9 * k12 * ( k4 * k6 + k4 * k7 + k5 * k7 ) ) * P2.MolarConc + ( k1 * k3 * ( k5 * k9 * k11 + k6 * k9 * k11 + k7 * k9 * k11 + k5 * k7 * k9 + k5 * k7 * k11 ) ) * S0.MolarConc * S1.MolarConc + ( k1 * k4 * k6 * k8 * k11 ) * S0.MolarConc * P0.MolarConc + ( k3 * k5 * k7 * k9 * k12 ) * S1.MolarConc * P2.MolarConc + ( k2 * k4 * k6 * k8 * k10 ) * P0.MolarConc * P1.MolarConc + ( k2 * k4 * k6 * k8 * k12 ) * P0.MolarConc * P2.MolarConc + ( k2 * k10 * k12 * ( k4 * k6 + k4 * k7 + k5 * k7 ) ) * P1.MolarConc * P2.MolarConc + ( k1 * k3 * k8 * k11 * ( k5 + k6 ) ) * S0.MolarConc * S1.MolarConc * P0.MolarConc + ( k1 * k3 * k5 * k7 * k10 ) * S0.MolarConc * S1.MolarConc * P1.MolarConc + ( k1 * k4 * k6 * k8 * k10 ) * S0.MolarConc * P0.MolarConc * P1.MolarConc + ( k3 * k5 * k7 * k10 * k12 ) * S1.MolarConc * P1.MolarConc * P2.MolarConc + ( k8 * k10 * k12 * ( k2 * k4 + k2 * k5 + k2 * k6 + k4 * k6 ) ) * P0.MolarConc * P1.MolarConc * P2.MolarConc + ( k1 * k3 * k8 * k10 * ( k5 + k6 ) ) * S0.MolarConc * S1.MolarConc * P0.MolarConc * P1.MolarConc + ( k3 * k8 * k10 * k12 * ( k5 + k6 ) ) * S1.MolarConc * P0.MolarConc * P1.MolarConc * P2.MolarConc ) * ( E0.Value / 1000 )";


	  	VariableReferenceList	
	  	[ S0 :/CELL/CYTOPLASM:NADP -1 ] 
	  	[ S1 :/CELL/CYTOPLASM:GO6P -1 ] 
	  	[ C0 :/CELL/CYTOPLASM:E_6PGODH ] 
	  	[ E0 :/CELL/CYTOPLASM:AC_6PGODH ] 
	  	[ P0 :/CELL/CYTOPLASM:CO2 ] 
	  	[ P3 :/CELL/CYTOPLASM:CO2 ] 
	  	[ P1 :/CELL/CYTOPLASM:RU5P 1 ] 
	  	[ P2 :/CELL/CYTOPLASM:NADPH 1 ];

	  }
	
	Process ExpressionFluxProcess( E_TA )
	{
		## EC: 2.2.1.2
		## Reference: McIntyre, Thorburn, Bubb and Kuchel, Eur.J.Biochem(180 2, 399-420), 1989
		## PMID: 2924774

		Name	Transaldolase;

		StepperID	DE1;
		Priority	0;

		k1	21600.0;
		k2	45.3;
		k3	16.3;
		k4	30000.0;
		k5	490000.0;
		k6	60.0;
		k7	17.0;
		k8	79000.0;

		Expression " ( ( k1 * k3 * k5 * k7 ) * S0.MolarConc * S1.MolarConc - ( k2 * k4 * k6 * k8 ) * P0.MolarConc * P1.MolarConc ) / ( ( k1 * k3 * ( k6 + k7 ) ) * S0.MolarConc + ( k5 * k7 * ( k2 + k3 ) ) * S1.MolarConc + ( k2 * k4 * ( k6 + k7 ) ) * P0.MolarConc + ( k6 * k8 * ( k2 + k3 ) ) * P1.MolarConc + ( k1 * k5 * ( k3 + k7 ) ) * S0.MolarConc * S1.MolarConc + ( k4 * k8 * ( k2 + k6 ) ) * P0.MolarConc * P1.MolarConc + ( k5 * k8 * ( k2 + k3 ) ) * S1.MolarConc * P1.MolarConc +  ( k1 * k4 * ( k6 + k7 ) ) * S0.MolarConc * P0.MolarConc ) * C0.Value * ( E0.Value / 1000 )";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:S7P -1 ] 
		[ S1 :/CELL/CYTOPLASM:GA3P -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_TA ] 
		[ E0 :/CELL/CYTOPLASM:AC_TA ] 
		[ P0 :/CELL/CYTOPLASM:E4P 1 ] 
		[ P1 :/CELL/CYTOPLASM:F6P 1 ];

	}

	Process ExpressionFluxProcess( E_TK1 )
	{
		## EC: 2.2.1.1
		## Reference: McIntyre, Thorburn, Bubb and Kuchel, Eur.J.Biochem(180 2, 399-420),1989
		## PMID: 2924774

		Name	Transketolase_I;

		StepperID	DE1;
		Priority	0;

		k1	216000.0;
		k2	38.0;
		k3	34.0;
		k4	156000.0;
		k5	329000.0;
		k6	175.0;
		k7	40.0;
		k8	44800.0;

		Expression " ( ( k1 * k3 * k5 * k7 ) * S0.MolarConc * S1.MolarConc - ( k2 * k4 * k6 * k8 ) * P0.MolarConc * P1.MolarConc ) / ( ( k1 * k3 * ( k6 + k7 ) ) * S0.MolarConc + ( k5 * k7 * ( k2 + k3 ) ) * S1.MolarConc + ( k2 * k4 * ( k6 + k7 ) ) * P0.MolarConc + ( k6 * k8 * ( k2 + k3 ) ) * P1.MolarConc + ( k1 * k5 * ( k3 + k7 ) ) * S0.MolarConc * S1.MolarConc + ( k4 * k8 * ( k2 + k6 ) ) * P0.MolarConc * P1.MolarConc + ( k5 * k8 * ( k2 + k3 ) ) * S1.MolarConc * P1.MolarConc +  ( k1 * k4 * ( k6 + k7 ) ) * S0.MolarConc * P0.MolarConc ) * C0.Value * ( E0.Value / 1000 )";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:X5P -1 ] 
		[ S1 :/CELL/CYTOPLASM:R5P -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_TK1 ] 
		[ E0 :/CELL/CYTOPLASM:AC_TK1 ] 
		[ P0 :/CELL/CYTOPLASM:GA3P 1 ] 
		[ P1 :/CELL/CYTOPLASM:S7P 1 ];

	}
	
	Process ExpressionFluxProcess( E_TK2 )
	{
		## EC: 2.2.1.1
		## Reference: McIntyre, Thorburn, Bubb and Kuchel, Eur.J.Biochem(180 2, 399-420), 1989
		## PMID: 2924774

		Name	Transketolase_II;

		StepperID	DE1;
		Priority	0;

		k1	216000.0;
		k2	38.0;
		k3	34.0;
		k4	156000.0;
		k5	2240000.0;
		k6	175.0;
		k7	40.0;
		k8	21300.0;

		Expression " ( ( k1 * k3 * k5 * k7 ) * S0.MolarConc * S1.MolarConc - ( k2 * k4 * k6 * k8 ) * P0.MolarConc * P1.MolarConc ) / ( ( k1 * k3 * ( k6 + k7 ) ) * S0.MolarConc + ( k5 * k7 * ( k2 + k3 ) ) * S1.MolarConc + ( k2 * k4 * ( k6 + k7 ) ) * P0.MolarConc + ( k6 * k8 * ( k2 + k3 ) ) * P1.MolarConc + ( k1 * k5 * ( k3 + k7 ) ) * S0.MolarConc * S1.MolarConc + ( k4 * k8 * ( k2 + k6 ) ) * P0.MolarConc * P1.MolarConc + ( k5 * k8 * ( k2 + k3 ) ) * S1.MolarConc * P1.MolarConc +  ( k1 * k4 * ( k6 + k7 ) ) * S0.MolarConc * P0.MolarConc ) * C0.Value * ( E0.Value / 1000 )";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:X5P -1 ] 
		[ S1 :/CELL/CYTOPLASM:E4P -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_TK2 ] 
		[ E0 :/CELL/CYTOPLASM:AC_TK2 ] 
		[ P0 :/CELL/CYTOPLASM:GA3P 1 ] 
		[ P1 :/CELL/CYTOPLASM:F6P 1 ];

	}

	Process ExpressionFluxProcess( E_R5PI )
	{
		## EC: 5.3.1.6
		## Reference: McIntyre, Thorburn, Bubb and Kuchel, Eur.J.Biochem(180 2, 399-420), 1989
		## PMID: 2924774

		Name	Ribose_5_phosphate_isomerase;
		
		StepperID	DE1;
		Priority	0;

		Ru5P	1.42e-05;

		k1	60900.0;
		k2	33.3;
		k3	14.2;
		k4	21600.0;

		Expression "( ( Ru5P / ( 1 + ( S0.MolarConc / ( ( k2 + k3 ) / k1 ) ) + ( P0.MolarConc / ( ( k2 + k3 ) / k4 ) ) ) ) * ( ( k3 * S0.MolarConc ) / ( ( k2 + k3 ) / k1 ) - ( k2 * P0.MolarConc ) / ( ( k2 + k3 ) / k4 ) ) ) * self.getSuperSystem().SizeN_A";
		
		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:RU5P -1 ] 
		[ P0 :/CELL/CYTOPLASM:R5P 1 ];

	}
	
	Process ExpressionFluxProcess( E_X5PI )
	{
		## EC: 4.1.2.9
		## Reference: McIntyre, Thorburn, Bubb and Kuchel, Eur.J.Biochem(180 2, 399-420), 1989
		## PMID: 2924774

		Name	Xylulose_5_phosphate_isomerase;
		
		StepperID	DE1;
		Priority	0;

		Ru5P	4.22e-06;

		k1	3910000.0;
		k2	438.0;
		k3	305.0;
		k4	1490000.0;

		Expression "( ( Ru5P / ( 1 + ( S0.MolarConc / ( ( k2 + k3 ) / k1 ) ) + ( P0.MolarConc / ( ( k2 + k3 ) / k4 ) ) ) ) * ( ( k3 * S0.MolarConc ) / ( ( k2 + k3 ) / k1 ) - ( k2 * P0.MolarConc ) / ( ( k2 + k3 ) / k4 ) ) ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:RU5P -1 ] 
		[ P0 :/CELL/CYTOPLASM:X5P 1 ];

	}

	Process ExpressionFluxProcess( E_L_GCS )
	{
		## EC: 6.3.2.2
		## Reference: Nakayama, Kinoshita and Tomita, Theor.Biol.Med.Model(2 1, 18), 2005
		## PMID: 15882454

		Name	Gamma_glutamyl_cysteine_synthetase;

		StepperID	DE1;
		Priority	0;

		Ki	3.4;
		KmA	0.4;
		KmB	1.8;
		KmC	0.1;

		Vmf	50.0;
		alpha	0.2;

		Expression " 1 * Vmf * self.getSuperSystem().SizeN_A * ( ( ( 1000 * S0.MolarConc ) * ( 1000 * S1.MolarConc ) * ( 1000 * S2.MolarConc ) ) / ( alpha * ( KmA * ( 1 + 1000 * E1.MolarConc / Ki ) * KmB * KmC ) ) / ( 1 + ( ( 1000 * S0.MolarConc ) / KmA ) + ( ( 1000 * S0.MolarConc ) * ( 1000 * S1.MolarConc ) / ( KmA * KmB ) ) + ( ( 1000 * S0.MolarConc ) * ( 1000 * S2.MolarConc ) / ( KmA * KmC ) ) + ( ( 1000 * S0.MolarConc ) * ( 1000 * S1.MolarConc ) * ( 1000 * S2.MolarConc) / ( alpha * KmA * KmB * KmC ) ) ) ) * E0.Value / 1000 / 1000 / 3600";
		
		
		VariableReferenceList	
		[ S2 :/CELL/CYTOPLASM:MgATP -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_L_GCS ] 
		[ E0 :/CELL/CYTOPLASM:AC_L_GCS ] 
		[ E1 :/CELL/CYTOPLASM:GSH ] 
		[ S0 :/CELL/CYTOPLASM:glutamate ] 
		[ S1 :/CELL/CYTOPLASM:cysteine ] 
		[ P0 :/CELL/CYTOPLASM:MgADP 1 ] 
		[ P1 :/CELL/CYTOPLASM:L_GC 1 ] 
		[ P2 :/CELL/CYTOPLASM:Pi 1 ];

	}

	Process ExpressionFluxProcess( E_GSH_S )
	{
		## EC: 6.3.2.3
		## Reference: Nakayama, Kinoshita and Tomita, Theor.Biol.Med.Model(2 1, 18), 2005
		## PMID: 15882454

		Name	Glutathione_synthetase;

		StepperID	DE1;
		Priority	0;

		KmA	0.99;
		KmB	1.37;
		KmC	0.23;

		Vmf	88.4;
		alpha	2.6;

		Expression " 1 * Vmf * self.getSuperSystem().SizeN_A * ( ( 1000 * S0.MolarConc ) * ( 1000 * S1.MolarConc ) * ( 1000 * S2.MolarConc ) / (alpha * KmA * KmB * KmC) ) / (  1 + ( 1000 * S0.MolarConc ) / KmA + ( 1000 * S0.MolarConc ) * ( 1000 * S1.MolarConc ) / (KmA * KmB) + ( 1000 * S0.MolarConc ) * ( 1000 * S2.MolarConc ) / (KmA * KmC) + ( 1000 * S0.MolarConc ) * ( 1000 * S1.MolarConc ) * ( 1000 * S2.MolarConc ) / (alpha * KmA * KmB * KmC) ) * E0.Value / 1000 / 1000 / 3600";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:L_GC -1 ] 
		[ S2 :/CELL/CYTOPLASM:MgATP -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_GSH_S ] 
		[ E0 :/CELL/CYTOPLASM:AC_GSH_S ] 
		[ S1 :/CELL/CYTOPLASM:glycine ] 
		[ P0 :/CELL/CYTOPLASM:GSH 1 ] 
		[ P1 :/CELL/CYTOPLASM:MgADP 1 ] 
		[ P2 :/CELL/CYTOPLASM:Pi 1 ];

	}

	Process ExpressionFluxProcess( E_GSSGR )
	{
		## EC: 1.8.1.7
		## Reference: McIntyre, Thorburn, Bubb and Kuchel, Eur.J.Biochem(180 2, 399-420), 1989
		## PMID: 2924774

		Name	Glutathione_reductase;

		StepperID	DE1;
		Priority	0;

		k1	85000000.0;
		k10	50000000.0;
		k11	7000.0;
		k12	100000000.0;
		k2	510.0;
		k3	100000000.0;
		k4	560000.0;
		k5	810.0;
		k6	1000.0;
		k7	1000000.0;
		k8	50000000.0;
		k9	1000000.0;

		Expression " C0.Value * ( ( k1 * k3 * k5 * k7 * k9 * k11 ) * S0.MolarConc * S1.MolarConc - ( k2 * k4 * k6 * k8 * k10 * k12 ) * P0.MolarConc * P0.MolarConc * P1.MolarConc ) / ( ( k2 * k9 * k11 * ( k4 * k6 + k4 * k7 + k5 * k7 ) ) + ( k1 * k9 * k11 * ( k4 * k6 + k4 * k7 + k5 * k7 ) ) * S0.MolarConc + ( k3 * k5 * k7 * k9 * k11 ) * S1.MolarConc + ( k2 * k4 * k6 * k8 * k11 ) * P0.MolarConc + ( k2 * k9 * k12 * ( k4 * k6 + k4 * k7 + k5 * k7 ) ) * P1.MolarConc + ( k1 * k3 * ( k5 * k9 * k11 + k6 * k9 * k11 + k7 * k9 * k11 + k5 * k7 * k9 + k5 * k7 * k11 ) ) * S0.MolarConc * S1.MolarConc + ( k1 * k4 * k6 * k8 * k11 ) * S0.MolarConc * P0.MolarConc + ( k3 * k5 * k7 * k9 * k12 ) * S1.MolarConc * P1.MolarConc + ( k2 * k4 * k6 * k8 * k10 ) * P0.MolarConc * P0.MolarConc + ( k2 * k4 * k6 * k8 * k12 + ( k2 * k10 * k12 * ( k4 * k6 + k4 * k7 + k5 * k7 ) ) ) * P0.MolarConc * P1.MolarConc + ( ( k1 * k3 * k8 * k11 * ( k5 + k6 ) ) + k1 * k3 * k5 * k7 * k10 ) * S0.MolarConc * S1.MolarConc * P0.MolarConc + ( k1 * k4 * k6 * k8 * k10 ) * S0.MolarConc * P0.MolarConc * P0.MolarConc + ( k3 * k5 * k7 * k10 * k12 ) * S1.MolarConc * P0.MolarConc * P1.MolarConc + ( k8 * k10 * k12 * ( k2 * k4 + k2 * k5 + k2 * k6 + k4 * k6 ) ) * P0.MolarConc * P0.MolarConc * P1.MolarConc + ( k1 * k3 * k8 * k10 * ( k5 + k6 ) ) * S0.MolarConc * S1.MolarConc * P0.MolarConc * P0.MolarConc + ( k3 * k8 * k10 * k12 * ( k5 + k6 ) ) * S1.MolarConc * P0.MolarConc * P0.MolarConc * P1.MolarConc ) * E0.Value / 1000";
		
		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:NADPH -1 ] 
		[ S1 :/CELL/CYTOPLASM:GSSG -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_GSSGR ] 
		[ E0 :/CELL/CYTOPLASM:AC_GSSGR ] 
		[ P1 :/CELL/CYTOPLASM:NADP 1 ] 
		[ P0 :/CELL/CYTOPLASM:GSH 2 ];

	}

##	Process GSSGtransportProcess( E_GSSG_transport )
##	{
		## EC:
		## Reference: Nakayama, Kinoshita and Tomita, Theor.Biol.Med.Model(2 1, 18), 2005
		## PMID: 15882454

##		Name	GSSG_transport_process;

##		StepperID	DE1;
##		Priority	0;
##
##		Km1	7.1;
##		Km2	0.1;
##		Kmatp	0.63;
##		
##		Vmax1	20.0;
##		Vmax2	190.0;
		
		
##		VariableReferenceList	
##		[ S0 :/CELL/CYTOPLASM:GSSG -1 ] 
##		[ S1 :/CELL/CYTOPLASM:MgATP -1 ] 
##		[ C0 :/CELL/CYTOPLASM:E_GSSG_transport ] 
##		[ E0 :/CELL/CYTOPLASM:AC_GSSG_transport ] 
##		[ E1 :/CELL/CYTOPLASM:MgATP ] 
##		[ P0 :/CELL/CYTOPLASM:MgADP 1 ] 
##		[ P1 :/CELL/CYTOPLASM:Pi 1 ];

##	}


##                     ##
##  purine metabolism  ## 
##                     ##
	
	  Process ExpressionFluxProcess( E_ADA )
	  {
	  	## EC: 3.5.4.4
	  	## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
	  	## PMID: 2630803

	  	Name	Adenosine_deaminase;

	  	StepperID	DE1;
	  	Priority	0;


	  	Km	0.052;
	  	Vm	20.0;

	  	VariableReferenceList	
	  	[ S0 :/CELL/CYTOPLASM:ADO -1 ] 
	  	[ C0 :/CELL/CYTOPLASM:E_ADA ] 
	  	[ E0 :/CELL/CYTOPLASM:AC_ADA ] 
	  	[ P0 :/CELL/CYTOPLASM:INO 1 ];

        	Expression "( 1000 * S0.MolarConc ) * ( Vm * self.getSuperSystem().SizeN_A ) / ( Km + ( 1000 * S0.MolarConc ) ) * ( E0.Value / 1000 / 1000 / 3600 )";

	  }
	
	  Process ExpressionFluxProcess( E_ADPRT )
	  {
	  	## EC: 2.4.2.7
	  	## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
	  	## PMID: 2630803

	  	Name	Adenine_phosphoribosyl_transferase;

	  	KmA	0.0023;
	  	KmB	0.0195;

	  	StepperID	DE1;
	  	Priority	0;


	  	Vm	0.078;

	  	VariableReferenceList	
	  	[ S0 :/CELL/CYTOPLASM:ADE -1 ] 
	  	[ S1 :/CELL/CYTOPLASM:PRPP -1 ] 
	  	[ C0 :/CELL/CYTOPLASM:E_ADPRT ] 
	  	[ E0 :/CELL/CYTOPLASM:AC_ADPRT ] 
	  	[ P0 :/CELL/CYTOPLASM:fAMP 1 ] 
	  	[ P1 :/CELL/CYTOPLASM:Pi 2 ];	

               Expression "( E0.Value/1000/1000/3600 ) *  ( ( ( 1000* S0.MolarConc ) / ( KmA + ( 1000* S0.MolarConc ) )) * ( ( 1000* S1.MolarConc ) / ( KmB + ( 1000* S1.MolarConc ) ) ) ) *( Vm * self.getSuperSystem().SizeN_A ) * ( C0.Value )";

	  }
	
	  Process ExpressionFluxProcess( E_AK )
	  {
	  	## EC: 2.7.1.20
                  ## Reference: Hawkins and Bagnara, Biochemistry(26 7, 1982-87), 1987
	  	##            Mimouni, Bontemps and Van den Berghe, J.Biol.Chem (269 27, 17820-25), 1987
     	   ## PMID: 3036217/ 8027035

	      Name    Adenosine_kinase;

                  KiA     0.54;
	          KmA     1.75;
	      	  KmB     27.0;

	  	StepperID       DE1;
	  	Priority        0;

	  	Vm      0.55;

	  	VariableReferenceList
                  [ S0 :/CELL/CYTOPLASM:ADO -1 ]
                  [ S1 :/CELL/CYTOPLASM:MgATP -1 ]
                  [ C0 :/CELL/CYTOPLASM:E_AK ]
	          [ E0 :/CELL/CYTOPLASM:AC_AK ]
                  [ P0 :/CELL/CYTOPLASM:MgADP 1 ]
                  [ P1 :/CELL/CYTOPLASM:fAMP 1 ];
		 
                 Expression "( E0.Value / 1000/1000000 ) * ( Vm * ( 1000000*S0.MolarConc ) * ( 1000000*S1.MolarConc ) / ( KiA * KmB + KmA * ( 1000000*S1.MolarConc ) + KmB * ( 1000000*S0.MolarConc ) + ( 1000000*S0.MolarConc ) * ( 1000000*S1.MolarConc ) ) ) * ( self.getSuperSystem().SizeN_A )";

          }
	
	 Process ExpressionFluxProcess( E_AMPDA )
	 {
	 	## EC: 3.5.4.6
	 	## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
	 	## PMID: 2630803

	 	Name	Adenosine_monophosphate_deaminase;


	 	StepperID	DE1;
	 	Priority	0;

	 	Km	0.8;
	 	Vm	0.01;

	 	VariableReferenceList	
	 	[ S0 :/CELL/CYTOPLASM:fAMP -1 ] 
	 	[ C0 :/CELL/CYTOPLASM:E_AMPDA ]
	 	[ E0 :/CELL/CYTOPLASM:AC_AMPDA ] 
	 	[ P0 :/CELL/CYTOPLASM:IMP 1 ];

	 	Expression "( 1000 * S0.MolarConc ) * ( Vm * self.getSuperSystem().SizeN_A ) / ( Km + ( 1000 * S0.MolarConc ) ) * ( E0.Value / 1000 / 1000 / 3600 )";


	 }
	
	Process ExpressionFluxProcess( E_AMPase )
	{
		## EC: 3.1.3.5
		## Reference: Joshi and Palsson, j.Theor.Biol(141 4, 515-28), 1989
		## PMID: 2630803

		Name	AMP_phosphohydrolase;

		StepperID	DE1;
		Priority	0;

		k	1.58;

                Expression " k * S0.MolarConc * ( E0.Value / 1000 / 3600 ) * self.getSuperSystem().SizeN_A";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:fAMP -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_AMPase ] 
		[ E0 :/CELL/CYTOPLASM:AC_AMPase ]	
		[ P0 :/CELL/CYTOPLASM:ADO 1 ] 
		[ P1 :/CELL/CYTOPLASM:Pi 1 ];
		
	}
	
	Process ExpressionFluxProcess( E_APK )
	{
		## EC: 2.7.4.3
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269


		Name	Adenylate_kinase;

		Priority	0;
		StepperID	DE1;

		KmA	0.01;
		KmB	0.1;
		KmP	0.11;
		KmQ	0.067;

		kcatf	2080.0;
		kcatr	3800.0;


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:fADP -1 ] 
		[ S1 :/CELL/CYTOPLASM:MgADP -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_APK ] 
		[ E0 :/CELL/CYTOPLASM:AC_APK ] 
		[ P2 :/CELL/CYTOPLASM:Mg ] 
		[ P0 :/CELL/CYTOPLASM:fAMP 1 ] 
		[ P1 :/CELL/CYTOPLASM:MgATP 1 ];

                Expression "( E0.Value / 1000 ) *  C0.Value * ( ( kcatf * ( ( 1000 * S0.MolarConc ) / KmA ) * ( ( 1000 * S1.MolarConc ) / KmB ) - kcatr * ( ( 1000 * P0.MolarConc ) / KmP ) * ( ( 1000 * P1.MolarConc ) / KmQ ) ) / ( 1 + ( ( 1000 * S0.MolarConc ) / KmA ) + ( ( 1000 * S1.MolarConc ) / KmB ) + ( ( 1000 * S0.MolarConc ) / KmA ) * ( ( 1000 * S1.MolarConc ) / KmB ) + ( ( 1000 * P0.MolarConc ) / KmP ) + ( ( 1000 * P1.MolarConc ) / KmQ ) + ( ( 1000 * P0.MolarConc ) / KmP ) * ( ( 1000 * P1.MolarConc ) / KmQ ) ) )" ;

	}

	 Process ExpressionFluxProcess( E_HGPRT )
	 {
	 	## EC: 2.4.2.8
	 	## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
	 	## PMID: 2630803

	 	Name	Hypoxanthine_guanine_phosphoryl_transferase;

	 	StepperID	DE1;
	 	Priority	0;


		
	 	KmA	0.005;
	 	KmB	0.22;
	 	Vm	0.201;


	 	VariableReferenceList	
	 	[ S0 :/CELL/CYTOPLASM:PRPP -1 ] 
	 	[ S1 :/CELL/CYTOPLASM:HXi -1 ] 
	 	[ C0 :/CELL/CYTOPLASM:E_HGPRT ] 
	 	[ E0 :/CELL/CYTOPLASM:AC_HGPRT ] 
	 	[ P1 :/CELL/CYTOPLASM:IMP 1 ] 
	 	[ P0 :/CELL/CYTOPLASM:Pi 2 ];
	
	 	Expression "( E0.Value/1000/1000/3600 ) *  ( ( ( 1000* S0.MolarConc ) / ( KmA + ( 1000* S0.MolarConc ) )) * ( ( 1000* S1.MolarConc ) / ( KmB + ( 1000* S1.MolarConc ) ) ) ) *( Vm * self.getSuperSystem().SizeN_A ) * ( C0.Value )";

	 }

	Process ExpressionFluxProcess( E_IMPase )
	{
		## EC: 2.4.2.8
		## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28),1989
		## PMID: 2630803

		Name	Inosine_monophosphatase;

		StepperID	DE1;
		Priority	0;

		k	0.09;

		Expression "( k * S0.MolarConc * self.getSuperSystem().SizeN_A ) * ( E0.Value / 1000 / 3600 )";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:IMP -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_IMPase ] 
		[ E0 :/CELL/CYTOPLASM:AC_IMPase ] 
		[ P0 :/CELL/CYTOPLASM:INO 1 ] 
		[ P1 :/CELL/CYTOPLASM:Pi 1 ];

	}

	Process ExpressionFluxProcess( E_PNPase )
	{
		## EC: 2.4.2.1
		## Reference: Ni and Savageau, J.Theor.Biol(179 4, 329-68),1996
		## PMID: 8763353


		Name	Purine_nucleoside_phosphorylase;

		StepperID	DE1;
		Priority	0;
		

		Kma	1110.0;
		Kmd	100.0;

                Expression "( Kma * S0.MolarConc - Kmd * P0.MolarConc ) * self.getSuperSystem().SizeN_A ";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:INO -1 ] 
		[ S1 :/CELL/CYTOPLASM:Pi -1 ] 
		[ P0 :/CELL/CYTOPLASM:HXi 1 ] 
		[ P1 :/CELL/CYTOPLASM:R1P 1 ];
	}

	Process ExpressionFluxProcess( E_PRM )
#	Process MassActionReversibleProcess( E_PRM )
	{
		## EC: 2.7.6.1
		## Reference: Ni and Savageau, J.Theor.Biol(179 4, 329-68),1996
		## PMID: 8763353

		Name	Phosphoribosyl_pyrophosphate_synthetase;

		StepperID	DE1;
		Priority	0;



		Kma	7.25;
		Kmd	100.0;

		Expression "( Kma * S0.MolarConc - Kmd * P0.MolarConc ) * self.getSuperSystem().SizeN_A ";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:R1P -1 ] 
		[ P0 :/CELL/CYTOPLASM:R5P 1 ];
	}

	Process ExpressionFluxProcess( E_PRPPsyn )
	{
		## EC: 2.7.6.1
		## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
		## PMID: 2630803

		Name	Phosphoribosyl_pyrophosphate_synthetase;

		StepperID	DE1;
		Priority	0;


		Kamp	0.275;
		Katp	0.17;
		Keq	28.6;
		Kprpp	0.09;
		Kr5p	0.65;
		Kv	7.5;

		Vm	0.554;
		Vr	0.0738666666667;

		Expression "( Vm * Vr * ( ( 1000 * S0.MolarConc ) * ( 1000 * S1.MolarConc ) - ( 1000 * P0.MolarConc ) * ( 1000 * P1.MolarConc ) / Keq ) / (Vr * Kr5p * ( 1000 * S1.MolarConc ) + Vr * Katp * ( 1000 * S0.MolarConc ) + Vm * Kamp * ( 1000 * P0.MolarConc ) / Keq + Vm * Kprpp * ( 1000 * P1.MolarConc ) / Keq + Vr * ( 1000 * S0.MolarConc ) * ( 1000 * S1.MolarConc ) + Vm * ( 1000 * P0.MolarConc ) ) ) * E0.Value / 1000 / 1000 / 3600 * self.getSuperSystem().SizeN_A ";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:R5P -1 ] 
		[ S1 :/CELL/CYTOPLASM:MgATP -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_PRPPsyn ] 
		[ E0 :/CELL/CYTOPLASM:AC_PRPPsyn ] 
		[ P0 :/CELL/CYTOPLASM:PRPP 1 ] 
		[ P1 :/CELL/CYTOPLASM:fAMP 1 ] 
		[ P2 :/CELL/CYTOPLASM:Mg 1 ];

	}
	
	Process ExpressionFluxProcess( E_ATPase )
	{
		## EC: 3.6.1.3
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name	Adenosine_triphosphate_phosphohydrolase;

		StepperID	DE1;
		Priority	0;

		k	0.356;

		Expression " k * S0.MolarConc * ( E0.Value / 1000 / 3600 ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:MgATP -1 ] 
		[ C0 :/CELL/CYTOPLASM:E_ATPase ] 
		[ E0 :/CELL/CYTOPLASM:AC_ATPase ] 
		[ P0 :/CELL/CYTOPLASM:MgADP 1 ] 
		[ P1 :/CELL/CYTOPLASM:Pi 1 ];
	
	}

	Process ExpressionFluxProcess( E_OX )
	{
		## EC: 1.8.3.3
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name	Glutathione_turnover;

		StepperID	DE1;
		Priority	0;

		k	2.38e-05;

		Expression " k * S0.MolarConc * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:GSH -2 ] 
		[ P0 :/CELL/CYTOPLASM:GSSG 1 ];

	}
	
	Process ExpressionFluxProcess( E_OXNADH )
	{
		## EC: 
		## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
		## PMID: 10477269

		Name	Non_glycolytic_NADH_consumption_process;


		StepperID	DE1;
		Priority	0;
		
		k	0.0163;

		Expression " k * S0.MolarConc * self.getSuperSystem().SizeN_A ";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:NADH -1 ] 
		[ P0 :/CELL/CYTOPLASM:NAD 1 0 ];

	}
	
	 Process ExpressionFluxProcess( MG_Mg13DPG )
	 {
	 	StepperID	DE1;
	 	Priority	0;

	 	Kh2bpg	4270000.0;
	 	Khbpg	162000000.0;
	 	Kkbpg	85.1;
	 	Kkhbpg	8.9;
	 	Kmgbpg	7410.0;
	 	Kmghbpg	513.0;

	 	kmgbpga	228000.0;
	 	kmgbpgd	1200.0;

	 	VariableReferenceList	
	 	[ S0 :/CELL/CYTOPLASM:Mg -1 ] 
	 	[ S1 :/CELL/CYTOPLASM:_13DPG -1 ] 
	 	[ E0 :/CELL/CYTOPLASM:pHi ] 
	 	[ E1 :/CELL/CYTOPLASM:Ki ] 
	 	[ P0 :/CELL/CYTOPLASM:Mg13DPG 1 ];

	       Expression " ( ( kmgbpga * ( 3.2 * 0.001 * ( Kmgbpg + pow( 10, -1 * E0.Value ) * Khbpg * Kmghbpg ) / ( 1 + ( pow( 10, -1 * E0.Value ) * Khbpg ) + ( pow( 10, -2 * E0.Value ) * Khbpg * Kh2bpg ) + ( E1.MolarConc * Kkbpg ) + ( E1.MolarConc * pow( 10, -1 * E0.Value ) * Khbpg * Kkhbpg ) ) ) * S0.MolarConc * S1.MolarConc -kmgbpgd * P0.MolarConc ) * self.getSuperSystem().SizeN_A ) ";
	 }
	
	 Process ExpressionFluxProcess( MG_Mg23DPG )
         	{
	 	StepperID       DE1;
                 	Priority        0;

                 Kh2bpg  4270000.0;
                 Khbpg   162000000.0;
                 Kkbpg   85.1;
                 Kkhbpg  8.9;
                 Kmgbpg  7410.0;
                 Kmghbpg 513.0;
                 kmgbpga 804000.0;
                 kmgbpgd 1200.0;

                 VariableReferenceList
                 [ S0 :/CELL/CYTOPLASM:Mg -1 ]
                 [ S1 :/CELL/CYTOPLASM:f23DPG -1 ]
                 [ E0 :/CELL/CYTOPLASM:pHi ]
                 [ E1 :/CELL/CYTOPLASM:Ki ]
                 [ P0 :/CELL/CYTOPLASM:Mg23DPG 1 ];

	  Expression " ( ( kmgbpga * ( 3.2 * 0.001 * ( Kmgbpg + pow( 10, -1 * E0.Value ) * Khbpg * Kmghbpg ) / ( 1 + ( pow( 10, -1 * E0.Value ) * Khbpg ) + ( pow( 10, -2 * E0.Value ) * Khbpg * Kh2bpg ) + ( E1.MolarConc * Kkbpg ) + ( E1.MolarConc * pow( 10, -1 * E0.Value ) * Khbpg * Kkhbpg ) ) ) * S0.MolarConc * S1.MolarConc -kmgbpgd * P0.MolarConc ) * self.getSuperSystem().SizeN_A ) ";
         }
	
	 Process ExpressionFluxProcess( MG_MgADP )
	 {
	 	StepperID	DE1;
	 	Priority	0;

	 	Khadp	5420000.0;
	 	Kkadp	4.8;
	 	Kmgadp	3290.0;
	 	Kmghadp	107.0;
	 	kmgadpa	1711.2;
	 	kmgadpd	1200.0;


	 	VariableReferenceList	
	 	[ S0 :/CELL/CYTOPLASM:Mg -1 ] 
	 	[ S1 :/CELL/CYTOPLASM:fADP -1 ] 
	 	[ E0 :/CELL/CYTOPLASM:pHi ] 
	 	[ E1 :/CELL/CYTOPLASM:Ki ] 
	 	[ P0 :/CELL/CYTOPLASM:MgADP 1 ];

			
         	Expression "( ( ( kmgadpa * ( ( Kmgadp + ( pow( 10, -1 * E0.Value ) * Khadp * Kmghadp ) ) / ( 1 + ( pow( 10, -1 * E0.Value ) * Khadp ) +  E1.MolarConc * Kkadp ) ) ) * S0.MolarConc * S1.MolarConc - kmgadpd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";		
	 }
	
	 Process ExpressionFluxProcess( MG_MgAMP )
	 {
		
	 	StepperID	DE1;
	 	Priority	0;

	 	Kma	54054.0;
	 	Kmd	1200.0;
		

	 	VariableReferenceList	
	 	[ S0 :/CELL/CYTOPLASM:Mg -1 ] 
	 	[ S1 :/CELL/CYTOPLASM:fAMP -1 ] 
	 	[ P0 :/CELL/CYTOPLASM:MgAMP 1 ];

	 	Expression "( Kma * S0.MolarConc * S1.MolarConc - Kmd * P0.MolarConc ) * self.getSuperSystem().SizeN_A";

	 }
	
	Process ExpressionFluxProcess( MG_MgATP )
	{
		StepperID	DE1;
		Priority	0;

		Khatp	9070000.0;
		Kkatp	14.0;
		Kmgatp	43200.0;
		Kmghatp	748.0;
		kmgatpa	2620.8;
		kmgatpd	1200.0;

		Expression " ( ( kmgatpa * ( ( Kmgatp + ( pow( 10, -1 * E0.Value ) * Khatp * Kmghatp ) ) / ( 1 + ( pow( 10, -1 * E0.Value ) * Khatp ) + E1.MolarConc * Kkatp ) ) ) * S0.MolarConc * S1.MolarConc - kmgatpd * P0.MolarConc ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:Mg -1 ] 
		[ S1 :/CELL/CYTOPLASM:fATP -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:Ki ] 
		[ P0 :/CELL/CYTOPLASM:MgATP 1 ];


	
	}

	Process ExpressionFluxProcess( MG_MgFru16P2 )	
	{
		StepperID	DE1;
		Priority	0;

		Kh2f	1120000.0;
		Khf	7560000.0;
		Kkf	10.7;
		Kkhf	3.3;
		Kmgfru16p2	363.0;
		Kmghf	89.0;
		kmgf16p2a	480000.0;
		kmgf16p2d	1200.0;

      		Expression "( ( kmgf16p2a * ( 8.3 * 0.001 * ( Kmgfru16p2 + pow( 10, -1 * E0.Value ) * Khf * Kmghf ) / ( 1 + ( pow(10, -1 * E0.Value ) * Khf ) + ( pow( 10, -2 * E0.Value ) * Khf * Kh2f ) + ( E1.MolarConc * Kkf ) + ( E1.MolarConc * pow( 10, -1 * E0.Value ) * Khf * Kkhf ) ) ) ) * S0.MolarConc * S1.MolarConc - kmgf16p2d * P0.MolarConc ) * self.getSuperSystem().SizeN_A";



		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:Mg -1 ] 
		[ S1 :/CELL/CYTOPLASM:FDP -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:Ki ] 
		[ P0 :/CELL/CYTOPLASM:MgFDP 1 ];


	}
	
	Process ExpressionFluxProcess( MG_MgGlc16P2 )
	{
		StepperID	DE1;
		Priority	0;

		Kh2f	1120000.0;
		Khf	7560000.0;
		Kkf	10.7;
		Kkhf	3.3;
		Kmgfru16p2	363.0;
		Kmghf	89.0;
		kmgf16p2a	480000.0;
		kmgf16p2d	1200.0;

		Expression "( ( kmgf16p2a * ( 8.3 * 0.001 * ( Kmgfru16p2 + pow( 10, -1 * E0.Value ) * Khf * Kmghf ) / ( 1 + ( pow(10, -1 * E0.Value ) * Khf ) + ( pow( 10, -2 * E0.Value ) * Khf * Kh2f ) + ( E1.MolarConc * Kkf ) + ( E1.MolarConc * pow( 10, -1 * E0.Value ) * Khf * Kkhf ) ) ) ) * S0.MolarConc * S1.MolarConc - kmgf16p2d * P0.MolarConc ) * self.getSuperSystem().SizeN_A";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:Mg -1 ] 
		[ S1 :/CELL/CYTOPLASM:GDP -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:Ki ] 
		[ P0 :/CELL/CYTOPLASM:MgGDP 1 ];


	}

	Process ExpressionFluxProcess( MG_MgPhos )	
	{
		StepperID	DE1;
		Priority	0;


		Khphos	5680000.0;
		Kkphos	3.0;
		kmgphosa	40800.0;
		kmgphosd	1200.0;

		Expression "( ( kmgphosa * ( ( 1 + pow( 10, -7.2 ) * Khphos + 0.15 * Kkphos ) / ( 1 + pow( 10, -1 * E0.Value ) * Khphos + E1.MolarConc* Kkphos) ) ) * S0.MolarConc * S1.MolarConc - kmgphosd * P0.MolarConc ) * self.getSuperSystem().SizeN_A";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:Mg -1 ] 
		[ S1 :/CELL/CYTOPLASM:Pi -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:Ki ] 
		[ P0 :/CELL/CYTOPLASM:MgPi 1 ];


	}
	
 	 Process ExpressionFluxProcess( B3_band3ALD )
 	 {
 	 	StepperID	DE1;
 	 	Priority	0;

 	 	Kma	1200000000.0;
 	 	Kmd	1200.0;



 	 	VariableReferenceList	
 	 	[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
 	 	[ S1 :/CELL/CYTOPLASM:E_ALD -1 ] 
 	 	[ E0 :/CELL/CYTOPLASM:band3_ka ] 
 	 	[ E1 :/CELL/CYTOPLASM:band3_kd ] 
 	 	[ P0 :/CELL/CYTOPLASM:band3ALD 1 ];

                 Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";
 	 }
	
 	 Process ExpressionFluxProcess( B3_band3GAPDH )
 	 {
 	 	StepperID	DE1;
 	 	Priority	0;

 	 	Kma	2400000000.0;
 	 	Kmd	1200.0;


 	 	VariableReferenceList	
 	 	[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
 	 	[ S1 :/CELL/CYTOPLASM:E_GAPDH -1 ] 
 	 	[ E0 :/CELL/CYTOPLASM:band3_ka ] 
 	 	[ E1 :/CELL/CYTOPLASM:band3_kd ] 
 	 	[ P0 :/CELL/CYTOPLASM:band3GAPDH 1 ];
                
 	         Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";

 	 }
	
 	Process ExpressionFluxProcess( B3_band3PFK )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kma	6000000000.0;
 		Kmd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
 		[ S1 :/CELL/CYTOPLASM:E_PFK -1 ] 
 		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
 		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
 		[ P0 :/CELL/CYTOPLASM:band3PFK 1 ];

 		  Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";
 	}
	
 	Process ExpressionFluxProcess( B3_band3deoxyHb )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kma	12000000.0;
 		Kmd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
 		[ S1 :/CELL/CYTOPLASM:deoxyHb -1 ] 
 		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
 		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
 		[ P0 :/CELL/CYTOPLASM:band3deoxyHb 1 ];

 		Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";

 	}
	
 	Process ExpressionFluxProcess( B3_band3deoxyHb13DPG )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kma	12000000.0;
 		Kmd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
 		[ S1 :/CELL/CYTOPLASM:deoxyHb13DPG -1 ] 
 		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
 		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
 		[ P0 :/CELL/CYTOPLASM:band3deoxyHb13DPG 1 ];

 		Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";

 	}
	
 	Process ExpressionFluxProcess( B3_band3deoxyHb23DPG )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kma	12000000.0;
 		Kmd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
 		[ S1 :/CELL/CYTOPLASM:deoxyHb23DPG -1 ] 
 		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
 		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
 		[ P0 :/CELL/CYTOPLASM:band3deoxyHb23DPG 1 ];

 		Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";

 	}
	
 	Process ExpressionFluxProcess( B3_band3deoxyHbADP )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kma	12000000.0;
 		Kmd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
 		[ S1 :/CELL/CYTOPLASM:deoxyHbADP -1 ] 
 		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
 		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
 		[ P0 :/CELL/CYTOPLASM:band3deoxyHbADP 1 ];

 		Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";
 	}
	
 	Process ExpressionFluxProcess( B3_band3deoxyHbATP )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kma	12000000.0;
 		Kmd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
 		[ S1 :/CELL/CYTOPLASM:deoxyHbATP -1 ] 
 		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
 		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
 		[ P0 :/CELL/CYTOPLASM:band3deoxyHbATP 1 ];

 		Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";

 	}

	
 	Process ExpressionFluxProcess( B3_band3deoxyHbFDP )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kma	12000000.0;
 		Kmd	1200.0;

 		Expression " ( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
 		[ S1 :/CELL/CYTOPLASM:deoxyHbFDP -1 ] 
 		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
 		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
 		[ P0 :/CELL/CYTOPLASM:band3deoxyHbFDP 1 ];
 	}
	
	Process ExpressionFluxProcess( B3_band3deoxyHbGDP )
	{
		StepperID	DE1;
		Priority	0;

		Kma	12000000.0;
		Kmd	1200.0;

        	Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
		[ S1 :/CELL/CYTOPLASM:deoxyHbGDP -1 ] 
		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
		[ P0 :/CELL/CYTOPLASM:band3deoxyHbGDP 1 ];
	}
	
	Process ExpressionFluxProcess( B3_band3deoxyHbMgATP )
	{
		StepperID	DE1;
		Priority	0;

		Kma	12000000.0;
		Kmd	1200.0;

               Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
		[ S1 :/CELL/CYTOPLASM:deoxyHbMgATP -1 ] 
		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
		[ P0 :/CELL/CYTOPLASM:band3deoxyHbMgATP 1 ];
	}
	
	Process ExpressionFluxProcess( B3_band3oxyHb )
	{
		StepperID	DE1;
		Priority	0;

		Kma	120000.0;
		Kmd	1200.0;

        	Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
		[ S1 :/CELL/CYTOPLASM:oxyHb -1 ] 
		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
		[ P0 :/CELL/CYTOPLASM:band3oxyHb 1 ];
	}
	
	Process ExpressionFluxProcess( B3_band3oxyHb13DPG )
	{
		StepperID	DE1;
		Priority	0;

		Kma	120000.0;
		Kmd	1200.0;

        	Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
		[ S1 :/CELL/CYTOPLASM:oxyHb13DPG -1 ] 
		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
		[ P0 :/CELL/CYTOPLASM:band3oxyHb13DPG 1 ];
	}
	
	Process ExpressionFluxProcess( B3_band3oxyHb23DPG )
	{
		StepperID	DE1;
		Priority	0;

		Kma	120000.0;
		Kmd	1200.0;

        	Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
		[ S1 :/CELL/CYTOPLASM:oxyHb23DPG -1 ] 
		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
		[ P0 :/CELL/CYTOPLASM:band3oxyHb23DPG 1 ];
	}
	
	Process ExpressionFluxProcess( B3_band3oxyHbADP )
	{
		StepperID	DE1;
		Priority	0;

		Kma	120000.0;
		Kmd	1200.0;

               Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
		[ S1 :/CELL/CYTOPLASM:oxyHbADP -1 ] 
		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
		[ P0 :/CELL/CYTOPLASM:band3oxyHbADP 1 ];
	}
	
	Process ExpressionFluxProcess( B3_band3oxyHbATP )
	{
		StepperID	DE1;
		Priority	0;

		Kma	120000.0;
		Kmd	1200.0;

               Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:band3 -1 ] 
		[ S1 :/CELL/CYTOPLASM:oxyHbATP -1 ] 
		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
		[ P0 :/CELL/CYTOPLASM:band3oxyHbATP 1 ];
	}
	
	Process ExpressionFluxProcess( B3_band3oxyHbMgATP )
	{
		StepperID	DE1;
		Priority	0;

		Kma	120000.0;
		Kmd	1200.0;

               Expression "( Kma * S0.MolarConc * S1.MolarConc * E0.Value - Kmd * P0.MolarConc * E1.Value ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:band3 -1 ]
		[ S1 :/CELL/CYTOPLASM:oxyHbMgATP -1 ] 
		[ E0 :/CELL/CYTOPLASM:band3_ka ] 
		[ E1 :/CELL/CYTOPLASM:band3_kd ] 
		[ P0 :/CELL/CYTOPLASM:band3oxyHbMgATP 1 ];
	}
	



        Process ExpressionFluxProcess( dHB_deoxyHb13DPG )
 	{
 		StepperID	DE1;
		Priority	0;

 		Kahb	1e-06;
 		ka	1860000.0;
 		kd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:deoxyHb -1 ] 
 		[ S1 :/CELL/CYTOPLASM:_13DPG -1 ] 
 		[ E0 :/CELL/CYTOPLASM:pHi ] 
 		[ P0 :/CELL/CYTOPLASM:deoxyHb13DPG 1 ];

 	             	Expression "( ( ( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * ( self.getSuperSystem().SizeN_A ) )";

 	}
	
 	Process ExpressionFluxProcess( dHB_deoxyHb23DPG )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kahb	1e-06;
 		ka	6000000.0;
 		kd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:deoxyHb -1 ] 
 		[ S1 :/CELL/CYTOPLASM:f23DPG -1 ] 
 		[ E0 :/CELL/CYTOPLASM:pHi ] 
 		[ P0 :/CELL/CYTOPLASM:deoxyHb23DPG 1 ];

 		Expression "( ( ( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * (self.getSuperSystem().SizeN_A ) )";

 	}
	
 	Process ExpressionFluxProcess( dHB_deoxyHbADP )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kahb	1e-06;
 		ka	1440000.0;
 		kd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:deoxyHb -1 ] 
 		[ S1 :/CELL/CYTOPLASM:fADP -1 ] 
 		[ E0 :/CELL/CYTOPLASM:pHi ] 
 		[ P0 :/CELL/CYTOPLASM:deoxyHbADP 1 ];

 		Expression "( ( ( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * (self.getSuperSystem().SizeN_A ) )";

 	}
	
 	Process ExpressionFluxProcess( dHB_deoxyHbATP )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kahb	1e-06;
 		ka	3120000.0;
 		kd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:deoxyHb -1 ] 
 		[ S1 :/CELL/CYTOPLASM:fATP -1 ] 
 		[ E0 :/CELL/CYTOPLASM:pHi ] 
 		[ P0 :/CELL/CYTOPLASM:deoxyHbATP 1 ];

 		Expression "( ( ( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * (self.getSuperSystem().SizeN_A ) )";

 	}
	
 	Process ExpressionFluxProcess( dHB_deoxyHbFDP )
 	{
 		StepperID	DE1;
 		Priority	0;

 		Kahb	1e-06;
 		ka	1212000.0;
 		kd	1200.0;


 		VariableReferenceList	
 		[ S0 :/CELL/CYTOPLASM:deoxyHb -1 ] 
 		[ S1 :/CELL/CYTOPLASM:FDP -1 ] 
 		[ E0 :/CELL/CYTOPLASM:pHi ] 
 		[ P0 :/CELL/CYTOPLASM:deoxyHbFDP 1 ];

 		Expression "( ( ( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * (self.getSuperSystem().SizeN_A ) )";
 	}
	
	Process ExpressionFluxProcess( dHB_deoxyHbGDP )
	{
		StepperID	DE1;
		Priority	0;

		Kahb	1e-06;
		ka	1212000.0;
		kd	1200.0;

		Expression "( ( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A";

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:deoxyHb -1 ] 
		[ S1 :/CELL/CYTOPLASM:GDP -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ P0 :/CELL/CYTOPLASM:deoxyHbGDP 1 ];
				
	}

	 Process ExpressionFluxProcess( dHB_deoxyHbMgATP )
	 {
	 	StepperID	DE1;
	 	Priority	0;

	 	Kahb	1e-06;
	 	ka	168000.0;
	 	kd	1200.0;

         	Expression "( ( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A";

	 	VariableReferenceList	
	 	[ S0 :/CELL/CYTOPLASM:deoxyHb -1 ] 
	 	[ S1 :/CELL/CYTOPLASM:MgATP -1 ] 
	 	[ E0 :/CELL/CYTOPLASM:pHi ] 
	 	[ P0 :/CELL/CYTOPLASM:deoxyHbMgATP 1 ];
	 }

	Process ExpressionFluxProcess( distributionHb )	
	{
		StepperID	DE1;
		Priority	0;

		K2	2.4e-05;
		K2dd	1e-06;
		K3	2.4e-05;
		K3dd	5e-06;
		K4dd	677000000000.0;
		K5dd	7.2e-08;
		K6dd	8.4e-09;
		Kd	1200.0;
		Wpl	0.94;
		Wrbc	0.65;
		n	2.7;

		Expression "(  (0.007-(E5.MolarConc + E6.MolarConc + E7.MolarConc + E8.MolarConc + E9.MolarConc + E10.MolarConc + E11.MolarConc + E12.MolarConc + E13.MolarConc + E14.MolarConc + E15.MolarConc + E16.MolarConc ) ) * ( ( ( ( ( ( (K4dd * pow((57.5*0.000000001/ (pow(10, -1* E0.Value ))), (-6.775 + 2.0372 * E0.Value - 0.1235 * E0.Value * E0.Value ))) * pow((0.85*0.001/ (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value )), (-0.008765 + 0.00086 * E3.Value + 6.3 * 0.0000001 * E3.Value * E3.Value )) * pow((4.65*0.001/ E4.MolarConc ), (0.2583 + 28.6978 * E4.MolarConc - 917.69 * E4.MolarConc * E4.MolarConc )) * pow((37/ E1.Value ), (1.6914 + 0.06186 * E1.Value + 0.00048 * E1.Value * E1.Value ))) * ( ( K3/K3dd)* (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value ) *(1+K3dd/ (pow(10, -1* E0.Value )))+(1+ (pow(10, -1* E0.Value ))/K6dd))/( (K2/K2dd)*(Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value )*(1+K2dd/ (pow(10, -1* E0.Value )))+(1+ (pow(10, -1* E0.Value ))/K5dd))) * ( pow( (Wrbc * ((1.37 - 0.0137*( E1.Value -37)+ 0.00058*( E1.Value -37)*( E1.Value -37))*0.000001/Wpl) * E2.Value ),n))) / (1 + ( ( ( (K4dd * pow((57.5*0.000000001/ (pow(10, -1* E0.Value ))), (-6.775 + 2.0372 * E0.Value - 0.1235 * E0.Value * E0.Value ))) * pow((0.85*0.001/ (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value )), (-0.008765 + 0.00086 * E3.Value + 6.3 * 0.0000001 * E3.Value * E3.Value )) * pow((4.65*0.001/ E4.MolarConc ), (0.2583 + 28.6978 * E4.MolarConc - 917.69 * E4.MolarConc * E4.MolarConc )) * pow((37/ E1.Value ), (1.6914 + 0.06186 * E1.Value + 0.00048 * E1.Value  * E1.Value ))) * ( ( K3/K3dd)* (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value )*(1+K3dd/ (pow(10, -1* E0.Value )))+(1+ (pow(10, -1* E0.Value ))/K6dd))/( (K2/K2dd)* (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value )*(1+K2dd/ (pow(10, -1* E0.Value )))+(1+ (pow(10, -1* E0.Value ))/K5dd))) * ( pow( (Wrbc * ((1.37 - 0.0137*( E1.Value-37)+ 0.00058*( E1.Value-37)*( E1.Value -37))*0.000001/Wpl) * E2.Value ),n))) )) / (1 - ( ( ( ( (K4dd * pow((57.5*0.000000001/ (pow(10, -1* E0.Value ))), (-6.775 + 2.0372 * E0.Value - 0.1235 * E0.Value * E0.Value ))) * pow((0.85*0.001/ (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value - 37)*( E1.Value -37))*0.00001/Wpl) * E3.Value )), (-0.008765 + 0.00086 * E3.Value + 6.3 * 0.0000001 * E3.Value * E3.Value )) * pow((4.65*0.001/ E4.MolarConc ), (0.2583 + 28.6978 * E4.MolarConc - 917.69 * E4.MolarConc * E4.MolarConc )) * pow((37/ E1.Value ), (1.6914 + 0.06186 * E1.Value  + 0.00048 * E1.Value  * E1.Value ))) * ( ( K3/K3dd) * (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value )*(1+K3dd/ (pow(10, -1* E0.Value )))+(1+ (pow(10, -1* E0.Value ))/K6dd))/( (K2/K2dd)* (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value )*(1+K2dd/ (pow(10, -1* E0.Value )))+(1+ (pow(10, -1* E0.Value ))/K5dd))) * ( pow( (Wrbc * ((1.37 - 0.0137*( E1.Value -37)+ 0.00058*( E1.Value -37)*( E1.Value -37))*0.000001/Wpl) * E2.Value ),n))) / (1 + ( ( ( (K4dd * pow((57.5*0.000000001/ (pow(10, -1* E0.Value ))), (-6.775 + 2.0372 * E0.Value - 0.1235 * E0.Value * E0.Value ))) * pow((0.85*0.001/ (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value )), (-0.008765 + 0.00086 * E3.Value + 6.3 * 0.0000001 * E3.Value * E3.Value )) * pow((4.65*0.001/ E4.MolarConc ), (0.2583 + 28.6978 * E4.MolarConc - 917.69 * E4.MolarConc * E4.MolarConc )) * pow((37/ E1.Value ), (1.6914 + 0.06186 * E1.Value + 0.00048 * E1.Value * E1.Value ))) * ( ( K3/K3dd)* (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value ) *(1+K3dd/ (pow(10, -1* E0.Value )))+(1+ (pow(10, -1* E0.Value ))/K6dd))/( (K2/K2dd)* (Wrbc * ( (3.07 - 0.057*( E1.Value -37)+ 0.002*( E1.Value -37)*( E1.Value -37))*0.00001/Wpl) * E3.Value ) *(1+K2dd/ (pow(10, -1* E0.Value )))+(1+ (pow(10, -1 * E0.Value ))/K5dd))) * ( pow( (Wrbc * ((1.37 - 0.0137*( E1.Value -37)+ 0.00058*( E1.Value -37)*( E1.Value -37))*0.000001/Wpl) * E2.Value ),n) ) ) ) ) ) ) * Kd ) - (E5.MolarConc + E6.MolarConc + E7.MolarConc + E8.MolarConc + E9.MolarConc + E10.MolarConc + E11.MolarConc + E12.MolarConc + E13.MolarConc + E14.MolarConc + E15.MolarConc + E16.MolarConc) * Kd) * self.getSuperSystem().SizeN_A";



                VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:deoxyHb -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ E1 :/CELL/CYTOPLASM:T ] 
		[ E2 :/CELL/CYTOPLASM:PO2 ] 
		[ E3 :/CELL/CYTOPLASM:PCO2 ] 
		[ E4 :/CELL/CYTOPLASM:f23DPG ] 
		[ P0 :/CELL/CYTOPLASM:oxyHb 1 ]
		[E5 :/CELL/CYTOPLASM:oxyHbMgATP]
		[E6 :/CELL/CYTOPLASM:oxyHbATP]
		[E7 :/CELL/CYTOPLASM:oxyHbADP]
		[E8 :/CELL/CYTOPLASM:oxyHb23DPG]
		[E9 :/CELL/CYTOPLASM:oxyHb13DPG]
		[E10 :/CELL/CYTOPLASM:band3oxyHbMgATP]
		[E11 :/CELL/CYTOPLASM:band3oxyHbATP]
		[E12 :/CELL/CYTOPLASM:band3oxyHbADP]
		[E13 :/CELL/CYTOPLASM:band3oxyHb23DPG]
		[E14 :/CELL/CYTOPLASM:band3oxyHb13DPG]
		[E15 :/CELL/CYTOPLASM:band3oxyHb]
		[E16 :/CELL/CYTOPLASM:oxyHb];
	}


	Process ExpressionFluxProcess( HB_oxyHb13DPG )
	{
		StepperID	DE1;
		Priority	0;

		Kahb	1e-06;
		ka	380000.0;
		kd	1200.0;

		Expression "( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A";				

		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:oxyHb -1 ] 
		[ S1 :/CELL/CYTOPLASM:_13DPG -1 ]
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ P0 :/CELL/CYTOPLASM:oxyHb13DPG 1 ];
	}
	
	Process ExpressionFluxProcess( HB_oxyHb23DPG )
#	Process BiUniHbBindingFluxProcess( HB_oxyHb23DPG )
	{
		StepperID	DE1;
		Priority	0;

		Kahb	1e-06;
		ka	300000.0;
		kd	1200.0;

		Expression "( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A";


		VariableReferenceList	
		[ S0 :/CELL/CYTOPLASM:oxyHb -1 ] 
		[ S1 :/CELL/CYTOPLASM:f23DPG -1 ] 
		[ E0 :/CELL/CYTOPLASM:pHi ] 
		[ P0 :/CELL/CYTOPLASM:oxyHb23DPG 1 ];
	}

	  Process ExpressionFluxProcess( HB_oxyHbADP )
	  {
	  	StepperID	DE1;
	  	Priority	0;

	  	Kahb	1e-06;
	  	ka	300000.0;
	  	kd	1200.0;


	  	VariableReferenceList	
	  	[ S0 :/CELL/CYTOPLASM:oxyHb -1 ] 
	  	[ S1 :/CELL/CYTOPLASM:fADP -1 ] 
	  	[ E0 :/CELL/CYTOPLASM:pHi ] 
	  	[ P0 :/CELL/CYTOPLASM:oxyHbADP 1 ];

	  	Expression "( ( ( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
	  }
	
	  Process ExpressionFluxProcess( HB_oxyHbATP )
	  {
	  	StepperID	DE1;
	  	Priority	0;

	  	Kahb	1e-06;
	  	ka	432000.0;
	  	kd	1200.0;


	  	VariableReferenceList	
	  	[ S0 :/CELL/CYTOPLASM:oxyHb -1 ] 
	  	[ S1 :/CELL/CYTOPLASM:fATP -1 ] 
	  	[ E0 :/CELL/CYTOPLASM:pHi ] 
	  	[ P0 :/CELL/CYTOPLASM:oxyHbATP 1 ];

	  	Expression "( ( ( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
	  }
	
	  Process ExpressionFluxProcess( HB_oxyHbMgATP )
	  {
	  	StepperID	DE1;
	  	Priority	0;

	  	Kahb	1e-06;
	  	ka	46800.0;
	  	kd	1200.0;


	  	VariableReferenceList	
	  	[ S0 :/CELL/CYTOPLASM:oxyHb -1 ] 
	  	[ S1 :/CELL/CYTOPLASM:MgATP -1 ] 
	  	[ E0 :/CELL/CYTOPLASM:pHi ] 
	  	[ P0 :/CELL/CYTOPLASM:oxyHbMgATP 1 ];

	  	Expression "( ( ( ka * ( ( 1 + ( ( 2 * Kahb ) / pow( 10, -7.2 ) ) + pow( Kahb / pow( 10, -7.2 ), 2 ) ) / ( 1 + ( ( 2 * Kahb ) / pow( 10, -1 * E0.Value ) ) + pow( Kahb / pow( 10, -1 * E0.Value ), 2 ) ) ) ) * S0.MolarConc * S1.MolarConc - kd * P0.MolarConc ) * self.getSuperSystem().SizeN_A )";
	  }


 	# Process TotalSumFluxProcess( T_23DPG )
 	# {
 	# 	Name	Total_calc;

 	# 	StepperID	DE1;
 	# 	Priority	-8;


 	# 	VariableReferenceList	
 	# 	[ E0 :/CELL/CYTOPLASM:f23DPG 0 ] 
 	# 	[ E1 :/CELL/CYTOPLASM:Mg23DPG 0 ] 
 	# 	[ E2 :/CELL/CYTOPLASM:deoxyHb23DPG 0 ] 
 	# 	[ E3 :/CELL/CYTOPLASM:oxyHb23DPG 0 ]
 	# 	[ E4 :/CELL/CYTOPLASM:band3oxyHb23DPG 0 ]
 	# 	[ E5 :/CELL/CYTOPLASM:band3deoxyHb23DPG 0 ];
 
 	# }

# 	Process TotalSumFluxProcess( T_oxyHb )
# 	{
# 		Name	Total_calc;

# 		Priority	-8;
# 		StepperID	DE1;

# 		VariableReferenceList	
# 		[ E0 :/CELL/CYTOPLASM:oxyHb 0 ] 
# 		[ E1 :/CELL/CYTOPLASM:oxyHbATP 0 ] 
# 		[ E2 :/CELL/CYTOPLASM:oxyHb23DPG 0 ] 
# 		[ E3 :/CELL/CYTOPLASM:oxyHb13DPG 0 ]
# 		[ E4 :/CELL/CYTOPLASM:oxyHbADP 0 ]
# 		[ E5 :/CELL/CYTOPLASM:oxyHbMgATP 0 ]
# 		[ E6 :/CELL/CYTOPLASM:band3oxyHb 0 ] 
# 		[ E7 :/CELL/CYTOPLASM:band3oxyHbATP 0 ] 
# 		[ E8 :/CELL/CYTOPLASM:band3oxyHb23DPG 0 ] 
# 		[ E9 :/CELL/CYTOPLASM:band3oxyHb13DPG 0 ]
# 		[ E10 :/CELL/CYTOPLASM:band3oxyHbADP 0 ]
# 		[ E11 :/CELL/CYTOPLASM:band3oxyHbMgATP 0 ];

 
# 	}

# 	Process TotalSumFluxProcess( T_deoxyHb ) 
# 	{
#                 Name          Total_calc;

#                 StepperID     DE1;
#                 Priority      -8;       
		
# 		VariableReferenceList
# 		[ E0 :/CELL/CYTOPLASM:deoxyHb 0 ] 
# 		[ E1 :/CELL/CYTOPLASM:deoxyHbATP 0 ] 
# 		[ E2 :/CELL/CYTOPLASM:deoxyHb13DPG 0 ] 
# 		[ E3 :/CELL/CYTOPLASM:deoxyHb23DPG 0 ]
# 		[ E4 :/CELL/CYTOPLASM:deoxyHbADP 0 ]
# 		[ E5 :/CELL/CYTOPLASM:deoxyHbMgATP 0 ]
# 		[ E6 :/CELL/CYTOPLASM:deoxyHbFDP 0 ] 
# 		[ E7 :/CELL/CYTOPLASM:deoxyHbGDP 0 ]
# 		[ E8 :/CELL/CYTOPLASM:band3deoxyHb 0 ] 
# 		[ E9 :/CELL/CYTOPLASM:band3deoxyHbATP 0 ] 
# 		[ E10 :/CELL/CYTOPLASM:band3deoxyHb13DPG 0 ] 
# 		[ E11 :/CELL/CYTOPLASM:band3deoxyHb23DPG 0 ]
# 		[ E12 :/CELL/CYTOPLASM:band3deoxyHbADP 0 ]
# 		[ E13 :/CELL/CYTOPLASM:band3deoxyHbMgATP 0 ]
#                 [ E14 :/CELL/CYTOPLASM:band3deoxyHbFDP 0 ]
#                 [ E15 :/CELL/CYTOPLASM:band3deoxyHbGDP 0 ]; 
#         }

# #	Process TotalSumFluxProcess( T_PFK )
# #	{
# #		Name	Total_calc;
# #
# #
# #		StepperID	DE1;
# #		Priority	-8;
# #
# #		VariableReferenceList	
# #		[ E0 :/CELL/CYTOPLASM:E_PFK 0 ] 
# #		[ E1 :/CELL/CYTOPLASM:band3PFK 0 ];
# #       } 

# 	Process TotalSumFluxProcess( T_ATP )
# 	{
# 		Name	Total_calc;


# 		StepperID	DE1;
# 		Priority	-8;

# 		VariableReferenceList	
# 		[ E0 :/CELL/CYTOPLASM:fATP 0 ] 
# 		[ E1 :/CELL/CYTOPLASM:MgATP 0 ] 
# 		[ E2 :/CELL/CYTOPLASM:deoxyHbATP 0 ] 
# 		[ E3 :/CELL/CYTOPLASM:oxyHbATP 0 ] 
# 		[ E4 :/CELL/CYTOPLASM:deoxyHbMgATP 0 ] 
# 		[ E5 :/CELL/CYTOPLASM:oxyHbMgATP 0 ]
# 		[ E6 :/CELL/CYTOPLASM:band3oxyHbMgATP 0 ]
# 		[ E7 :/CELL/CYTOPLASM:band3oxyHbATP 0 ]
# 		[ E8 :/CELL/CYTOPLASM:band3deoxyHbMgATP 0 ]
# 		[ E9 :/CELL/CYTOPLASM:band3deoxyHbATP 0 ];
 
# 	}	

# 	Process AdenylateCharge_free_FluxProcess( freeCharge )
# 	{
# 		Name	Total_calc;

# 		StepperID	DE1;


# 		VariableReferenceList	
# 		[ E0 :/CELL/CYTOPLASM:fATP 0 ] 
# 		[ E1 :/CELL/CYTOPLASM:fADP 0 ] 
# 		[ E2 :/CELL/CYTOPLASM:fAMP 0 ] ;

# 	}

# 	Process AdenylateChargeFluxProcess( Charge )
# 	{
# 		Name	Total_calc;

# 		StepperID	DE1;


# 		VariableReferenceList	
# 		[ E0 :/CELL/CYTOPLASM:fATP 0 ] 
# 		[ E1 :/CELL/CYTOPLASM:MgATP 0 ] 
# 		[ E2 :/CELL/CYTOPLASM:deoxyHbATP 0 ] 
# 		[ E3 :/CELL/CYTOPLASM:deoxyHbMgATP 0 ] 
# 		[ E4 :/CELL/CYTOPLASM:oxyHbATP 0 ] 
# 		[ E5 :/CELL/CYTOPLASM:oxyHbMgATP 0 ]
# 		[ E6 :/CELL/CYTOPLASM:fADP 0 ] 
# 		[ E7 :/CELL/CYTOPLASM:MgADP 0 ] 
# 		[ E8 :/CELL/CYTOPLASM:deoxyHbADP 0 ] 
# 		[ E9 :/CELL/CYTOPLASM:oxyHbADP 0 ] 
# 		[ E10 :/CELL/CYTOPLASM:fAMP 0 ] 
# 		[ E11 :/CELL/CYTOPLASM:MgAMP 0 ] 
# 		[ E12 :/CELL/CYTOPLASM:band3deoxyHbMgATP 0 ] 
# 		[ E13 :/CELL/CYTOPLASM:band3deoxyHbATP 0 ] 
# 		[ E14 :/CELL/CYTOPLASM:band3deoxyHbADP 0 ] 
# 		[ E15 :/CELL/CYTOPLASM:band3oxyHbMgATP 0 ] 
# 		[ E16 :/CELL/CYTOPLASM:band3oxyHbATP 0 ] 
# 		[ E17 :/CELL/CYTOPLASM:band3oxyHbADP 0 ]; 

# 	}
	
	
}

System System( /CELL/MEMBRANE )
{
	Name	The;
	StepperID	DE1;

	Variable Variable( E_ADEtr )
	{
		Fixed	0;
		Name	adenosine_transport_process;
		Value	1.0;
	}

	Variable Variable( AC_ADEtr)
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_ADEtr;
		Value	1000.0;
	}

	Variable Variable( E_ADOtr )
	{
		Fixed	0;
		Name	adenosine_transport_process;
		Value	1.0;
	}
	
	Variable Variable( AC_ADOtr )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_ADOtr;
		Value	1000.0;
	}

	Variable Variable( E_HXtr )
	{
		Fixed	0;
		Name	Hypoxanthine_transport_process;
		Value	1.0;
	}
	
	Variable Variable( AC_HXtr )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_HXtr;
		Value	1000.0;
	}

	Variable Variable( E_INOtr )
	{
		Fixed	0;
		Name	inosine_transport_process;
		Value	1.0;
	}
	
	Variable Variable( AC_INOtr )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_INOtr;
		Value	1000.0;
	}
	
	Variable Variable( E_K_Leak )
	{
		Fixed	0;
		Name	Leak_of_potassium;
		Value	1.0;
	}

	Variable Variable( AC_K_Leak )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_K_Leak;
		Value	1000.0;
	}

	Variable Variable( E_LACtr )
	{
		Fixed	0;
		Name	Lactate_transport_process;
		Value	1.0;
	}
	
	Variable Variable( AC_LACtr )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_LACtr;
		Value	1000.0;
	}

	Variable Variable( E_NaK_Pump )
	{
		Fixed	0;
		Name	Sodium_potassium_Pump;
		Value	1.0;
	}
	
	Variable Variable( AC_NaK_Pump )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_NaK_Pump;
		Value	1000.0;
	}

	Variable Variable( E_Na_Leak )
	{
		Fixed	0;
		Name	Leak_of_sodium;
		Value	1.0;
	}
	
	Variable Variable( AC_Na_Leak )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_Na_Leak;
		Value	1000.0;
	}

	Variable Variable( E_PYRtr )
	{
		Fixed	0;
		Name	Pyruvate_transport_process;
		Value	1.0;
	}
	
	Variable Variable( AC_PYRtr )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_PYRtr;
		Value	1000.0;
	}

	Variable Variable( E_Pitr )
	{
		Fixed	0;
		Name	Inorganic_phosphate_transport_process;
		Value	1.0;
	}
	
	Variable Variable( AC_Pitr )
	{
		Fixed	0;
		Name	Activity_coefficient_of_E_Pitr;
		Value	1000.0;
	}

  	Process ExpressionFluxProcess( E_ADEtr )
  	{

  		## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
  		## PMID: 2630803


  		Name	adenine_transport_process;
  		StepperID	DE1;
  		Priority	0;


  		Km	2.6;
  		Vm	90.0;


  		VariableReferenceList	
  		[ S0 :/CELL/CYTOPLASM:ADE -1 ] 
  		[ C0 :/CELL/MEMBRANE:E_ADEtr ] 
  		[ E0 :/CELL/MEMBRANE:AC_ADEtr ] 
  		[ P0 :/ENVIRONMENT:ADEe ];

  		Expression " ( Vm * ( ( ( 1000 * S0.MolarConc ) / ( Km + ( 1000 * S0.MolarConc ) ) )- ( ( 1000 * P0.MolarConc ) / ( Km + ( 1000 * P0.MolarConc ) ) ) ) ) * ( self.getSuperSystem().SizeN_A ) * ( E0.Value / 1000 / 1000 / 3600 )";

  	}


 	 Process ExpressionFluxProcess( E_ADOtr )
 	 {

 	 	## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
 	 	## PMID: 2630803

 	 	Name	adenosine_transport_process;

 	 	StepperID	DE1;
 	 	Priority	0;


 	 	Km	0.12;
 	 	Vm	61.2;

 	 	VariableReferenceList	
 	 	[ S0 :/CELL/CYTOPLASM:ADO -1 ] 
 	 	[ C0 :/CELL/MEMBRANE:E_ADOtr ] 
 	 	[ E0 :/CELL/MEMBRANE:AC_ADOtr ] 
 	 	[ P0 :/ENVIRONMENT:ADOe ];

 	 	Expression " ( Vm * ( ( ( 1000 * S0.MolarConc ) / ( Km + ( 1000 * S0.MolarConc ) ) )- ( ( 1000 * P0.MolarConc ) / ( Km + ( 1000 * P0.MolarConc ) ) ) ) ) * ( self.getSuperSystem().SizeN_A ) * ( E0.Value / 1000 / 1000 / 3600 )";		

 	 }
	
 	 Process ExpressionFluxProcess( E_HXtr )
 	 {
 	 	## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
 	 	## 	      Domin, Mahony and Zimmerman, J.Biol.Chem(263 19, 9276-84), 1988

 	 	## PMID: 2630803, 3379069
 	 	Name	Hypoxanthine_transport_process;

 	 	StepperID	DE1;
 	 	Priority	0;


 	 	Ki	0.012;
 	 	Km	0.4;
 	 	Kmin	0.18;
		
 	 	Pm	37.8;

 	 	Vm	151.6;
 	 	Vmin	100.8;

 	 	VariableReferenceList	
 	 	[ S0 :/CELL/CYTOPLASM:HXi -1 ] 
 	 	[ C0 :/CELL/MEMBRANE:E_HXtr ] 
 	 	[ E0 :/CELL/MEMBRANE:AC_HXtr ] 
 	 	[ E1 :/ENVIRONMENT:ADEe ] 
 	 	[ P0 :/ENVIRONMENT:HXe ];

 	 	 Expression "(  ( Pm * ( 1000 * S0.MolarConc ) + Vm * ( ( 1000 * S0.MolarConc ) / ( ( 1000 * S0.MolarConc ) + Km ) ) ) - ( Vmin * ( 1000 * P0.MolarConc ) / (Kmin*(1 + ( 1000 * E1.MolarConc )/Ki) + ( 1000 * P0.MolarConc )) ) ) * ( self.getSuperSystem().SizeN_A ) * ( E0.Value / 1000 / 1000 / 3600 )";
 	 }
	
 	 Process ExpressionFluxProcess( E_INOtr )
 	 {


 	 	## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
 	 	## PMID: 2630803

 	 	Name	inosine_transport_process;

 	 	StepperID	DE1;
 	 	Priority	0;


 	 	Km	0.12;
 	 	Vm	61.2;


 	 	VariableReferenceList	
 	 	[ S0 :/CELL/CYTOPLASM:INO -1 ] 
 	 	[ C0 :/CELL/MEMBRANE:E_INOtr ] 
 	 	[ E0 :/CELL/MEMBRANE:AC_INOtr ] 
 	 	[ P0 :/ENVIRONMENT:INOe ];

 	 	Expression " ( Vm * ( ( ( 1000 * S0.MolarConc ) / ( Km + ( 1000 * S0.MolarConc ) ) )- ( ( 1000 * P0.MolarConc ) / ( Km + ( 1000 * P0.MolarConc ) ) ) ) ) * ( self.getSuperSystem().SizeN_A ) * ( E0.Value / 1000 / 1000 / 3600 )";

 	 }
	
 	 Process ExpressionFluxProcess( E_K_Leak )
 	 {

 	 	## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
 	 	## PMID: 2630803

 	 	Name	Leak_of_potassium;


 	 	StepperID	DE1;
 	 	Priority	0;


 	 	Km	4.0;
 	 	Kx	0.00635;

 	 	Vm	3.12;
 	 	r	0.62;
 	 	z	1.0;

 	 	VariableReferenceList	
 	 	[ C0 :/CELL/MEMBRANE:E_K_Leak ] 
 	 	[ E0 :/CELL/MEMBRANE:AC_K_Leak ] 
 	 	[ S0 :/ENVIRONMENT:Ke ] 
 	 	[ P0 :/CELL/CYTOPLASM:Ki 1 ];

 	 	Expression "( Kx * z * log( r ) * ( ( 1000 * S0.MolarConc ) - r * ( 1000 * P0.MolarConc ) ) / ( r - 1 ) + Vm * ( ( 1000 * S0.MolarConc ) / ( Km + ( 1000 * S0.MolarConc ) ) - r * ( 1000 * P0.MolarConc ) / ( Km + r * ( 1000 * P0.MolarConc ) ) ) ) * ( self.getSuperSystem().SizeN_A ) * ( E0.Value / 1000 / 1000 / 3600 )";
 	 }
	
 	 Process ExpressionFluxProcess( E_LACtr )
 	 {
 	 	## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
 	 	## PMID: 10477269

 	 	Name	Lactate_transport_process;


 	 	StepperID	DE1;
 	 	Priority	0;

 	 	k0	0.00733;
 	 	k1	0.00506;

 	 	VariableReferenceList	
 	 	[ S0 :/CELL/CYTOPLASM:LACi -1 ] 
 	 	[ C0 :/CELL/MEMBRANE:E_LACtr ] 
 	 	[ E0 :/CELL/MEMBRANE:AC_LACtr ] 
 	 	[ P0 :/ENVIRONMENT:LACe ];

 	 	Expression "( self.getSuperSystem().SizeN_A ) *( k0 * S0.MolarConc - k1 *  P0.MolarConc ) * ( E0.Value / 1000 )";
 	 }
	 
 	  Process ExpressionFluxProcess( E_NaK_Pump )
 	  {
 	  	## EC: 3.6.3.9
 	  	## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
 	  	## PMID: 2630803

 	  	Name	"Sodium/potassium pump";


 	  	StepperID	DE1;
 	  	Priority	0;


 	  	B1	0.0617;
 	  	B2	0.1328;
 	  	B3	6.2672;
 	  	Km	0.764;

 	  	Vm	2.32;
 	  	k2k1	0.0082;
 	  	k3k1	0.0501;
 	  	z	0.7114;

 	  	VariableReferenceList	
 	  	[ S2 :/CELL/CYTOPLASM:Nai -3 ] 
 	  	[ S0 :/CELL/CYTOPLASM:MgATP -1 ] 
 	  	[ C0 :/CELL/MEMBRANE:E_NaK_Pump ] 
 	  	[ E0 :/CELL/MEMBRANE:AC_NaK_Pump ] 
 	  	[ E1 :/CELL/CYTOPLASM:MgATP ] 
 	  	[ P2 :/ENVIRONMENT:Nae ] 
 	  	[ S1 :/ENVIRONMENT:Ke ] 
 	  	[ P0 :/CELL/CYTOPLASM:MgADP 1 ] 
 	  	[ P3 :/CELL/CYTOPLASM:Pi 1 ] 
 	  	[ P1 :/CELL/CYTOPLASM:Ki 2 ];

 	  	Expression "( E0.Value / 1000 / 3600 / 1000 ) * ( self.getSuperSystem().SizeN_A ) *( ( ( 1000 * E1.MolarConc ) / ( ( 1000 * E1.MolarConc ) + Km ) ) * ( Vm / 2 ) * ( ( 1000 * S1.MolarConc ) * ( 1000 * S1.MolarConc ) + B2 * ( 1000 * S1.MolarConc ) * z / 2 ) / ( B1 * B2 + 2 * B2 * ( 1000 * S1.MolarConc ) + ( 1000 * S1.MolarConc ) * ( 1000 * S1.MolarConc ) + ( B3 /  ( 1000 * S2.MolarConc ) + 1 ) * ( B3 /  ( 1000 * S2.MolarConc ) + 1 ) * ( B3 /  ( 1000 * S2.MolarConc ) + 1 ) * ( B1 * B2 * k2k1 + k3k1 * ( ( 1000 * S1.MolarConc ) * ( 1000 * S1.MolarConc ) + B2 * ( 1000 * S1.MolarConc ) * z ) ) ) )";
		
 	  }
	
 	 Process ExpressionFluxProcess( E_Na_Leak )
 	 {
 	 	## Reference: Joshi and Palsson, J.Theor.Biol(141 4, 515-28), 1989
 	 	## PMID: 2630803


 	 	Name	Leak_of_sodium;


 	 	StepperID	DE1;
 	 	Priority	0;


 	 	Km	21.0;
 	 	Kx	0.00706;
 	 	Vm	2.82;
 	 	r	0.62;
 	 	z	1.0;


 	 	VariableReferenceList	
 	 	[ C0 :/CELL/MEMBRANE:E_Na_Leak ] 
 	 	[ E0 :/CELL/MEMBRANE:AC_Na_Leak ] 
 	 	[ S0 :/ENVIRONMENT:Nae ] 
 	 	[ P0 :/CELL/CYTOPLASM:Nai 1 ];
		
 	 	Expression "( Kx * z * log( r ) * ( ( 1000 * S0.MolarConc ) - r * ( 1000 * P0.MolarConc ) ) / ( r - 1 ) + Vm * ( ( 1000 * S0.MolarConc ) / ( Km + ( 1000 * S0.MolarConc ) ) - r * ( 1000 * P0.MolarConc ) / ( Km + r * ( 1000 * P0.MolarConc ) ) ) ) * ( self.getSuperSystem().SizeN_A ) * ( E0.Value / 1000 / 1000 / 3600 )";


 	 }
	
 	 Process ExpressionFluxProcess( E_PYRtr )
 	 {
 	 	## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
 	 	## PMID: 10477269

 	 	Name	Pyruvate_transport_process;

 	 	StepperID	DE1;
 	 	Priority	0;

 	 	k0	0.0261;
 	 	k1	0.018;

 	 	VariableReferenceList	
 	 	[ S0 :/CELL/CYTOPLASM:PYRi -1 ] 
 	 	[ C0 :/CELL/MEMBRANE:E_PYRtr ] 
 	 	[ E0 :/CELL/MEMBRANE:AC_PYRtr ] 
 	 	[ P0 :/ENVIRONMENT:PYRe ];

 	 	Expression "( self.getSuperSystem().SizeN_A ) *( k0 * S0.MolarConc - k1 * P0.MolarConc ) * ( E0.Value / 1000 )";


 	 }
	
 	 Process ExpressionFluxProcess( E_Pitr )
 	 {
 	 	## EC: 3.6.3.27
 	 	## Reference: Mulquiney and Kuchel, Biochem.J.(342 pt3, 581-96), 1999
 	 	## PMID: 10477269

 	 	Name	Inorganic_phosphate_transport_process;


 	 	StepperID	DE1;
 	 	Priority	0;

 	 	k0	0.000606;
 	 	k1	0.00056;

 	 	VariableReferenceList	
 	 	[ S0 :/CELL/CYTOPLASM:Pi -1 ] 
 	 	[ C0 :/CELL/MEMBRANE:E_Pitr ] 
 	 	[ E0 :/CELL/MEMBRANE:AC_Pitr ] 
 	 	[ P0 :/ENVIRONMENT:Pie ];

 	 	Expression "( self.getSuperSystem().SizeN_A ) *( k0 * S0.MolarConc - k1 * P0.MolarConc ) * ( E0.Value / 1000 )";


 	 }

 }

 System System( /ENVIRONMENT )
 {
 	Name	The;
 	StepperID	DE1;

 	Variable Variable( ADEe )
 	{
 		Fixed	0;
 		Name	ADEe;
 		Value	903320.505;
 	}
	
 	Variable Variable( ADOe )
 	{
 		Fixed	0;
 		Name	ADOe;
 		Value	4215.49569;
 	}
	
 	Variable Variable( HXe )
 	{
 		Fixed	0;
 		Name	HXe;
 		Value	162597.6909;
 	}
	
 	Variable Variable( INOe )
 	{
 		Fixed	0;
 		Name	INOe;
 		Value	7235.0000001;
 	}
	
 	Variable Variable( Ke )
 	{
 		Fixed	0;
 		Name	Ke;
 		Value	572102986.5;
 	}
	
 	Variable Variable( LACe )
 	{
 		Fixed	0;
 		Name	LACe;
 		Value	108398460.6;
 	}
	
 	Variable Variable( Nae )
 	{
 		Fixed	0;
 		Name	Nae;
 		Value	8129884545.0;
 	}
	
 	Variable Variable( PYRe )
 	{
 		Fixed	0;
 		Name	PYRe;
 		Value	4516603.0;
 	}
	
 	Variable Variable( Pie )
 	{
 		Fixed	0;
 		Name	Pie;
 		Value	66243503.7;
 	}
	
 	Variable Variable( SIZE )
 	{
 		Fixed	0;
 		Name	Volume;
 		Value	1e-13;
 	}
	
 	# Process VariableVolumeProcess( SIZE )
 	# {
 	# 	Name	Volume;
 	# 	Priority	0;
 	# 	StepperID	DE1;

 	# 	VariableReferenceList	
 	# 	[ E0 :/ENVIRONMENT:SIZE ];
 	# }
	
	
 }
