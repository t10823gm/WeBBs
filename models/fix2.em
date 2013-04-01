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

	Process ExpressionFluxProcess( R1 )
	{
		# EpoR to EpoRJ
		Name	reaction1;

		Piority	0;

		k_1	0.0379;
		k_mi1	0.05;

		VariableReferenceList
		[S0 :/CELL/CYTOPLASM:EpoR -1]
		[S1 :/CELL/CYTOPLASM:JAK2 -1]
		[P :/CELL/CYTOPLASM:EpoRJ 1];

		Expression "(k_1 * S0.Value * S1.Value - k_mi1 * P.Value)";
	}

	Process ExpressionFluxProcess( R2 )
	{
		# EpoRJ to null
		Name	reaction2;

		Piority	0;

		k_2	5e-5;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:EpoRJ -1];

		Expression "(k_2 * S.Value)";
	}

	Process ExpressionFluxProcess( R3 )
	{
		# EpoRJD to EpoRJ
		Name	reaction3;

		Piority	0;

		k_3	1.3339;
		k_mi3	0.1;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:EpoRJ -1]
		[P :/CELL/CYTOPLASM:EpoRJD 1];

		Expression "(k_3 * pow(S.Value, 2) - k_mi3 * P.Value)";
	}

	Process ExpressionFluxProcess( R4 )
	{
		# EpoRJD to null
		Name	reaction4;

		Piority	0;

		k_4	5e-5;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:EpoRJD -1];

		Expression "(k_4 * S.Value)";
	}

	Process ExpressionFluxProcess( R5 )
	{
		# EpoRJD to EpoRJD_Ast
		Name	reaction5;

		Piority	0;

		k_5	0.0083;
		k_mi5	4.83e-4;

		VariableReferenceList
		[S0 :/CELL/CYTOPLASM:EpoR -1]
		[S1 :/CELL/CYTOPLASM:EpoRJD -1]
		[P :/CELL/CYTOPLASM:EpoRJD_Ast 1];

		Expression "(k_5 * S0.Value * S1.Value - k_mi5 * P.Value)";
	}

	Process ExpressionFluxProcess( R6 )
	{
		# EpoRJD_Ast to null
		Name	reaction6;

		Piority	0;

		k_6	0.001;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:EpoRJD_Ast -1];

		Expression "(k_6 * S.Value)";
	}
	
	Process ExpressionFluxProcess( R7 )
	{
		# PI3K,EpoRJD_Ast to PI3K_Ast
		Name	reaction7;

		Piority	0;

		K_7	78.0;
		V_7	0.3;

		VariableReferenceList
		[S0 :/CELL/CYTOPLASM:PI3K -1]
		[S1 :/CELL/CYTOPLASM:EpoRJD_Ast -1]
		[P :/CELL/CYTOPLASM:PI3K_Ast 1];

		Expression "((V_7 * S0.Value * S1.Value) / (K_7 + S0.Value))";
	}
	
	Process ExpressionFluxProcess( R8 )
	{
		# PI3K_Ast to PI3K
		Name	reaction8;

		Piority	0;

		K_8	117;
		V_8	46.2;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:PI3K_Ast -1]
		[P :/CELL/CYTOPLASM:PI3K 1];

		Expression "((V_8 * S.Value) / (K_8 + S.Value))";
	}

	Process ExpressionFluxProcess( R9 )
	{
		# PIP2,PI3K to PIP3
		Name	reaction9;

		Piority	0;

		K_9	39.1;
		V_9	16.9;

		VariableReferenceList
		[S0 :/CELL/CYTOPLASM:PIP2 -1]
		[S1 :/CELL/CYTOPLASM:PI3K_Ast -1]
		[P :/CELL/CYTOPLASM:PIP3 1];

		Expression "((V_9 * S1.Value * S0.Value) / (K_9 + S0.Value))";
	}

	Process ExpressionFluxProcess( R10 )
	{
		# PIP3 to PIP2
		Name	reaction10;

		Piority	0;

		K_10	9.02;
		V_10	17000;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:PIP3 -1]
		[P :/CELL/CYTOPLASM:PIP2 1];

		Expression "((V_10 * S.Value) / (K_10 + S.Value))";
	}

	Process ExpressionFluxProcess( R11 )
	{
		# PIP3,AKT to AKT_PIP3
		Name	reaction11;

		Piority	0;

		k_11  507;
		k_mi11  234;

		VariableReferenceList
		[S0 :/CELL/CYTOPLASM:PIP3 -1]
		[S1 :/CELL/CYTOPLASM:AKT -1]
		[P :/CELL/CYTOPLASM:AKT_PIP3 1];

		Expression "(k_11 * S0.Value * S1.Value - k_mi11 * P.Value)";
	}

	Process ExpressionFluxProcess( R12 )
	{
		# AKTp to AKT_PIP3
		Name	reaction12;

		Piority	0;

		K_12	80000;
		V_12	2.0e-14;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:AKT_PIP3 -1]
		[P :/CELL/CYTOPLASM:AKTp 1];

		Expression "((V_12 * S.Value) / (K_12 + S.Value))";
	}

	Process ExpressionFluxProcess( R13 )
	{
		# AKTp to AKT_PIP3
		Name	reaction13;

		Piority	0;

		K_13	4.35;
		V_13	1.2198;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:AKTp -1]
		[P :/CELL/CYTOPLASM:AKTp 1];

		Expression "((V_13 * S.Value) / (K_13 + S.Value))";
	}

	Process ExpressionFluxProcess( R14 )
	{
		# AKTp to AKTpp 
		Name	reaction14;

		Piority	0;

		K_14	80000;
		V_14	2e4;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:AKTp -1]
		[P :/CELL/CYTOPLASM:AKTp 1];

		Expression "((V_14 * S.Value) / (K_14 + S.Value))";
	}

	Process ExpressionFluxProcess( R18 )
	{
		#GATA1_Ast to EpoRmRNAn
		Name	reaction18;

		Piority	0;

		F_2	0.123;
		K_18	212.12;
		V_18	0.01;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:GATA1_Ast -1]
		[P :/CELL/CYTOPLASM:EpoRmRNAn 1];

		Expression "((F_2 * V_18 * S.Value) / (K_18 + S.Value))";
	}

	Process ExpressionFluxProcess( R19 )
	{
		# GATA1_Ast to GATA1mRNAn
		Name	reaction19;

		Piority	0;

		F_1	0.04;
		K_19	1092;
		V_19	0.01;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:GATA1_Ast -1]
		[P :/CELL/CYTOPLASM:GATA1mRNAn 1];

		Expression "((F_1 * V_19 * S.Value) / (K_19 + S.Value))";
	}

		Process ExpressionFluxProcess( R20 )
	{
		# EpoRmRNAn to EpoRmRNAc
		Name	reaction20;

		Piority	0;

		k_20	0.002;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:EpoRmRNAn -1]
		[P :/CELL/CYTOPLASM:EpoRmRNAc 1];

		Expression "(k_20 * S.Value)";
	}

		Process ExpressionFluxProcess( R21 )
	{
		# GATA1mRNAn to GATA1mRNAc  
		Name	reaction21;

		Piority	0;

		k_21	0.0001;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:GATA1mRNAn -1]
		[P :/CELL/CYTOPLASM:GATA1mRNAc 1];

		Expression "(k_21 * S.Value)";
	}

		Process ExpressionFluxProcess( R22 )
	{
		# EpoRmRNAc to EpoR
		Name	reaction22;

		Piority	0;

		k_22	0.015;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:EpoRmRNAc -1]
		[P :/CELL/CYTOPLASM:EpoR 1];

		Expression "(k_22 * S.Value)";
	}

		Process ExpressionFluxProcess( R23 )
	{
		# EpoRmRNAc to null
		Name	reaction23;

		Piority	0;

		k_23	0.0006;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:EpoRmRNAc -1];

		Expression "(k_23 * S.Value)";
	}

		Process ExpressionFluxProcess( R24 )
	{
		# GATA1mRNAc to GATA1
		Name	reaction24;

		Piority	0;

		k_24	0.0194;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:GATA1mRNAc 1]
		[P :/CELL/CYTOPLASM:GATA1 1];

		Expression "(k_24 * S.Value)";
	}

		Process ExpressionFluxProcess( R25 )
	{
		# GATA1mRNAc to null
		Name	reaction25;

		Piority	0;

		k_25	0.00046;

		VariableReferenceList
		[S :/CELL/CYTOPLASM:GATA1mRNAc 1];

		Expression "(k_25 * S.Value)";
	}

		Process ExpressionFluxProcess( B_R )
	{
		# to RpoR
		Name	B_R;

		Piority	0;

		B_R	5e-4;

		VariableReferenceList
		[P :/CELL/CYTOPLASM:EpoR 1];

		Expression "(B_R)";
	}

		Process ExpressionFluxProcess( B_G )
	{
		# to GATA1
		Name	B_G;

		Piority	0;

		B_G	5e-4;

		VariableReferenceList
		[P :/CELL/CYTOPLASM:GATA1 1];

		Expression "(B_G)";
	}
}

#^^^^^^^^^#
# Nucleus #
#^^^^^^^^^# 
System System( /CELL/CYTOPLASM/NUCLEUS)
{
	StepperID	DE1;

	Variable Variable( AKTpp )
	{
	        Fixed   0;
	        Value   0.0;
	}

	Variable Variable( GATA1_Ast )
	{
	        Fixed   0;
	        Value   0.0;
	}

	Variable Variable( GATA1 )
	{
	        Fixed   0;
	        Value   0.0;
	}

	Process ExpressionFluxProcess( R15 )
	{
		#AKTpp to AKTp 
		Name	reaction15;

		Piority	0;

		K_15	299.62;
		V_15	2.7097;

		VariableReferenceList
		[S :/CELL/CYTOPLASM/NUCLEUS:AKTpp -1]
		[P :/CELL/CYTOPLASM/NUCLEUS:AKTpp 1];

		Expression "((V_15 * S.Value) / (K_15 + S.Value))";
	}

	Process ExpressionFluxProcess( R16 )
	{
		#GATA1,AKTpp to GATA1_Ast
		Name	reaction16;

		Piority	0;

		K_16	0.189;
		V_16	0.171;

		VariableReferenceList
		[S0 :/CELL/CYTOPLASM/NUCLEUS:AKTpp -1]
		[S1 :/CELL/CYTOPLASM/NUCLEUS:GATA1 -1]
		[P :/CELL/CYTOPLASM/NUCLEUS:GATA1_Ast 1];

		Expression "((V_16 * S0.Value * S1.Value) / (K_16 + S1.Value))";
	}

	Process ExpressionFluxProcess( R17 )
	{
		#GATA1_Ast to GATA1
		Name	reaction17;

		Piority	0;

		K_17	0.0852;
		V_17	0.171;

		VariableReferenceList
		[S :/CELL/CYTOPLASM/NUCLEUS:GATA1_Ast -1]
		[P :/CELL/CYTOPLASM/NUCLEUS:GATA1 1];

		Expression "((V_17 * S.Value) / (K_17 + S.Value))";
	}

	Process ExpressionFluxProcess( R26 )
	{
		#GATA1 to null
		Name	reaction26;

		Piority	0;

		k_26	5e-5;

		VariableReferenceList
		[S :/CELL/CYTOPLASM/NUCLEUS:GATA1 -1];

		Expression "(k_26 * S.Value)";
	}

	Process ExpressionFluxProcess( R27 )
	{
		#GATA1_Ast to null
		Name	reaction27;

		Piority	0;

		k_26	5e-5;

		VariableReferenceList
		[S :/CELL/CYTOPLASM/NUCLEUS:GATA1_Ast -1];

		Expression "(k_26 * S.Value)";
	}
}

