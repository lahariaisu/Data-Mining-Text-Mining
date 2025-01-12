***********************************;
*** Begin Scoring Code for Neural;
***********************************;
DROP _DM_BAD _EPS _NOCL_ _MAX_ _MAXP_ _SUM_ _NTRIALS;
 _DM_BAD = 0;
 _NOCL_ = .;
 _MAX_ = .;
 _MAXP_ = .;
 _SUM_ = .;
 _NTRIALS = .;
 _EPS =                1E-10;
LENGTH _WARN_ $4 
      F_Category  $ 22
      I_Category  $ 22
      U_Category  $ 22
;
      label S_TextCluster_SVD1 = 'Standard: TextCluster_SVD1' ;

      label S_TextCluster_SVD10 = 'Standard: TextCluster_SVD10' ;

      label S_TextCluster_SVD2 = 'Standard: TextCluster_SVD2' ;

      label S_TextCluster_SVD3 = 'Standard: TextCluster_SVD3' ;

      label S_TextCluster_SVD4 = 'Standard: TextCluster_SVD4' ;

      label S_TextCluster_SVD5 = 'Standard: TextCluster_SVD5' ;

      label S_TextCluster_SVD6 = 'Standard: TextCluster_SVD6' ;

      label S_TextCluster_SVD7 = 'Standard: TextCluster_SVD7' ;

      label S_TextCluster_SVD8 = 'Standard: TextCluster_SVD8' ;

      label S_TextCluster_SVD9 = 'Standard: TextCluster_SVD9' ;

      label S_TextTopic2_raw1 = 'Standard: TextTopic2_raw1' ;

      label S_TextTopic2_raw2 = 'Standard: TextTopic2_raw2' ;

      label S_TextTopic2_raw3 = 'Standard: TextTopic2_raw3' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label I_Category = 'Into: Category' ;

      label F_Category = 'From: Category' ;

      label U_Category = 'Unnormalized Into: Category' ;

      label P_CategoryINFORMATION_TECHNOLOGY = 
'Predicted: Category=INFORMATION-TECHNOLOGY' ;

      label R_CategoryINFORMATION_TECHNOLOGY = 
'Residual: Category=INFORMATION-TECHNOLOGY' ;

      label P_CategoryHR = 'Predicted: Category=HR' ;

      label R_CategoryHR = 'Residual: Category=HR' ;

      label P_CategoryDESIGNER = 'Predicted: Category=DESIGNER' ;

      label R_CategoryDESIGNER = 'Residual: Category=DESIGNER' ;

      label  _WARN_ = "Warnings"; 

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   TextCluster_SVD1 , 
   TextCluster_SVD10 , 
   TextCluster_SVD2 , 
   TextCluster_SVD3 , 
   TextCluster_SVD4 , 
   TextCluster_SVD5 , 
   TextCluster_SVD6 , 
   TextCluster_SVD7 , 
   TextCluster_SVD8 , 
   TextCluster_SVD9 , 
   TextTopic2_raw1 , 
   TextTopic2_raw2 , 
   TextTopic2_raw3   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster_SVD1  =    -2.86825305331921 +     5.25689107761947 * 
        TextCluster_SVD1 ;
   S_TextCluster_SVD10  =    -0.11675070563577 +     4.98096413021447 * 
        TextCluster_SVD10 ;
   S_TextCluster_SVD2  =    -0.10460284027459 +     2.65112409362907 * 
        TextCluster_SVD2 ;
   S_TextCluster_SVD3  =    -0.68716386961236 +     2.57868497816276 * 
        TextCluster_SVD3 ;
   S_TextCluster_SVD4  =    -0.20596378849599 +     3.68999416336196 * 
        TextCluster_SVD4 ;
   S_TextCluster_SVD5  =    -0.14779655696558 +     4.70561601150175 * 
        TextCluster_SVD5 ;
   S_TextCluster_SVD6  =     0.26588326687006 +     5.87858168166002 * 
        TextCluster_SVD6 ;
   S_TextCluster_SVD7  =     0.09141244887597 +     4.25546234739846 * 
        TextCluster_SVD7 ;
   S_TextCluster_SVD8  =     0.29930193661177 +     4.30824641868977 * 
        TextCluster_SVD8 ;
   S_TextCluster_SVD9  =    -0.07429964762948 +     5.50953710122374 * 
        TextCluster_SVD9 ;
   S_TextTopic2_raw1  =    -0.88635905688928 +     3.51468275346434 * 
        TextTopic2_raw1 ;
   S_TextTopic2_raw2  =    -0.88533335171973 +     3.83053910965813 * 
        TextTopic2_raw2 ;
   S_TextTopic2_raw3  =    -1.21554219066727 +     6.75066818836388 * 
        TextTopic2_raw3 ;
END;
ELSE DO;
   IF MISSING( TextCluster_SVD1 ) THEN S_TextCluster_SVD1  = . ;
   ELSE S_TextCluster_SVD1  =    -2.86825305331921 +     5.25689107761947 * 
        TextCluster_SVD1 ;
   IF MISSING( TextCluster_SVD10 ) THEN S_TextCluster_SVD10  = . ;
   ELSE S_TextCluster_SVD10  =    -0.11675070563577 +     4.98096413021447 * 
        TextCluster_SVD10 ;
   IF MISSING( TextCluster_SVD2 ) THEN S_TextCluster_SVD2  = . ;
   ELSE S_TextCluster_SVD2  =    -0.10460284027459 +     2.65112409362907 * 
        TextCluster_SVD2 ;
   IF MISSING( TextCluster_SVD3 ) THEN S_TextCluster_SVD3  = . ;
   ELSE S_TextCluster_SVD3  =    -0.68716386961236 +     2.57868497816276 * 
        TextCluster_SVD3 ;
   IF MISSING( TextCluster_SVD4 ) THEN S_TextCluster_SVD4  = . ;
   ELSE S_TextCluster_SVD4  =    -0.20596378849599 +     3.68999416336196 * 
        TextCluster_SVD4 ;
   IF MISSING( TextCluster_SVD5 ) THEN S_TextCluster_SVD5  = . ;
   ELSE S_TextCluster_SVD5  =    -0.14779655696558 +     4.70561601150175 * 
        TextCluster_SVD5 ;
   IF MISSING( TextCluster_SVD6 ) THEN S_TextCluster_SVD6  = . ;
   ELSE S_TextCluster_SVD6  =     0.26588326687006 +     5.87858168166002 * 
        TextCluster_SVD6 ;
   IF MISSING( TextCluster_SVD7 ) THEN S_TextCluster_SVD7  = . ;
   ELSE S_TextCluster_SVD7  =     0.09141244887597 +     4.25546234739846 * 
        TextCluster_SVD7 ;
   IF MISSING( TextCluster_SVD8 ) THEN S_TextCluster_SVD8  = . ;
   ELSE S_TextCluster_SVD8  =     0.29930193661177 +     4.30824641868977 * 
        TextCluster_SVD8 ;
   IF MISSING( TextCluster_SVD9 ) THEN S_TextCluster_SVD9  = . ;
   ELSE S_TextCluster_SVD9  =    -0.07429964762948 +     5.50953710122374 * 
        TextCluster_SVD9 ;
   IF MISSING( TextTopic2_raw1 ) THEN S_TextTopic2_raw1  = . ;
   ELSE S_TextTopic2_raw1  =    -0.88635905688928 +     3.51468275346434 * 
        TextTopic2_raw1 ;
   IF MISSING( TextTopic2_raw2 ) THEN S_TextTopic2_raw2  = . ;
   ELSE S_TextTopic2_raw2  =    -0.88533335171973 +     3.83053910965813 * 
        TextTopic2_raw2 ;
   IF MISSING( TextTopic2_raw3 ) THEN S_TextTopic2_raw3  = . ;
   ELSE S_TextTopic2_raw3  =    -1.21554219066727 +     6.75066818836388 * 
        TextTopic2_raw3 ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     0.49232866520391 * S_TextCluster_SVD1  +      0.5854967779272 * 
        S_TextCluster_SVD10  +     0.04280229387795 * S_TextCluster_SVD2
          +    -0.95798672049658 * S_TextCluster_SVD3
          +    -0.91820242011764 * S_TextCluster_SVD4
          +    -0.30396200262521 * S_TextCluster_SVD5
          +    -0.23832121966858 * S_TextCluster_SVD6
          +    -0.01897386213063 * S_TextCluster_SVD7
          +     0.05311800568256 * S_TextCluster_SVD8
          +     0.18608131303103 * S_TextCluster_SVD9
          +     0.29335777633653 * S_TextTopic2_raw1
          +     0.58449015596116 * S_TextTopic2_raw2
          +    -0.17059221077358 * S_TextTopic2_raw3 ;
   H12  =    -0.01195929869021 * S_TextCluster_SVD1  +      -0.281548589377 * 
        S_TextCluster_SVD10  +      0.8784494474406 * S_TextCluster_SVD2
          +     0.12817720383366 * S_TextCluster_SVD3
          +     0.83833989907241 * S_TextCluster_SVD4
          +      0.2805341606066 * S_TextCluster_SVD5
          +    -0.13075902192453 * S_TextCluster_SVD6
          +    -0.21640609145962 * S_TextCluster_SVD7
          +     -0.0399875614375 * S_TextCluster_SVD8
          +    -0.43861971165683 * S_TextCluster_SVD9
          +     0.27479514037669 * S_TextTopic2_raw1
          +    -1.37637272177481 * S_TextTopic2_raw2
          +    -0.50784296904631 * S_TextTopic2_raw3 ;
   H13  =    -0.73170701476585 * S_TextCluster_SVD1  +     0.19757657132052 * 
        S_TextCluster_SVD10  +    -0.31897190457061 * S_TextCluster_SVD2
          +     0.50116622996677 * S_TextCluster_SVD3
          +     0.33155643657417 * S_TextCluster_SVD4
          +     0.20695036862972 * S_TextCluster_SVD5
          +    -0.36241532608407 * S_TextCluster_SVD6
          +    -0.33991124987067 * S_TextCluster_SVD7
          +    -0.00333912024812 * S_TextCluster_SVD8
          +    -0.34447921673229 * S_TextCluster_SVD9
          +    -1.07573878961523 * S_TextTopic2_raw1
          +    -0.21706708538907 * S_TextTopic2_raw2
          +     0.69752921135619 * S_TextTopic2_raw3 ;
   H11  =    -0.33250623688912 + H11 ;
   H12  =     0.19439871328461 + H12 ;
   H13  =    -0.24159019033218 + H13 ;
   H11  = TANH(H11 );
   H12  = TANH(H12 );
   H13  = TANH(H13 );
END;
ELSE DO;
   H11  = .;
   H12  = .;
   H13  = .;
END;
*** *************************;
*** Writing the Node Category ;
*** *************************;

*** Generate dummy variables for Category ;
drop CategoryINFORMATION_TECHNOLOGY CategoryHR CategoryDESIGNER ;
label F_Category = 'From: Category' ;
length F_Category $ 22;
F_Category = put( Category , $22. );
%DMNORMIP( F_Category )
*** encoding is sparse, initialize to zero;
CategoryINFORMATION_TECHNOLOGY = 0;
CategoryHR = 0;
CategoryDESIGNER = 0;
if missing( Category ) then do;
   CategoryINFORMATION_TECHNOLOGY = .;
   CategoryHR = .;
   CategoryDESIGNER = .;
end;
else do;
   if F_Category = 'DESIGNER'  then do;
      CategoryDESIGNER = 1;
   end;
   else if F_Category = 'HR'  then do;
      CategoryHR = 1;
   end;
   else if F_Category = 'INFORMATION-TECHNOLOGY'  then do;
      CategoryINFORMATION_TECHNOLOGY = 1;
   end;
   else do;
      CategoryINFORMATION_TECHNOLOGY = .;
      CategoryHR = .;
      CategoryDESIGNER = .;
   end;
end;
IF _DM_BAD EQ 0 THEN DO;
   P_CategoryINFORMATION_TECHNOLOGY  =     3.91893292490112 * H11
          +     3.94266584607155 * H12  +    -5.00578338002068 * H13 ;
   P_CategoryHR  =     4.25873015791445 * H11  +    -4.29164957025556 * H12
          +    -1.67025948444446 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -2.33201605844335 + 
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =     0.74169179161872 + P_CategoryHR ;
   P_CategoryDESIGNER  = 0; 
   _MAX_ = MAX (P_CategoryINFORMATION_TECHNOLOGY , P_CategoryHR , 
        P_CategoryDESIGNER );
   _SUM_ = 0.; 
   P_CategoryINFORMATION_TECHNOLOGY  = EXP(P_CategoryINFORMATION_TECHNOLOGY
          - _MAX_);
   _SUM_ = _SUM_ + P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  = EXP(P_CategoryHR  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryHR ;
   P_CategoryDESIGNER  = EXP(P_CategoryDESIGNER  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryDESIGNER ;
   P_CategoryINFORMATION_TECHNOLOGY  = P_CategoryINFORMATION_TECHNOLOGY
          / _SUM_;
   P_CategoryHR  = P_CategoryHR  / _SUM_;
   P_CategoryDESIGNER  = P_CategoryDESIGNER  / _SUM_;
END;
ELSE DO;
   P_CategoryINFORMATION_TECHNOLOGY  = .;
   P_CategoryHR  = .;
   P_CategoryDESIGNER  = .;
END;
IF _DM_BAD EQ 1 THEN DO;
   P_CategoryINFORMATION_TECHNOLOGY  =     0.27272727272727;
   P_CategoryHR  =     0.36363636363636;
   P_CategoryDESIGNER  =     0.36363636363636;
END;
*** *****************************;
*** Writing the Residuals  of the Node Category ;
*** ******************************;
IF MISSING( CategoryINFORMATION_TECHNOLOGY ) THEN 
        R_CategoryINFORMATION_TECHNOLOGY  = . ;
ELSE R_CategoryINFORMATION_TECHNOLOGY  = CategoryINFORMATION_TECHNOLOGY  - 
        P_CategoryINFORMATION_TECHNOLOGY ;
IF MISSING( CategoryHR ) THEN R_CategoryHR  = . ;
ELSE R_CategoryHR  = CategoryHR  - P_CategoryHR ;
IF MISSING( CategoryDESIGNER ) THEN R_CategoryDESIGNER  = . ;
ELSE R_CategoryDESIGNER  = CategoryDESIGNER  - P_CategoryDESIGNER ;
*** *************************;
*** Writing the I_Category  AND U_Category ;
*** *************************;
_MAXP_ = P_CategoryINFORMATION_TECHNOLOGY ;
I_Category  = "INFORMATION-TECHNOLOGY" ;
U_Category  = "INFORMATION-TECHNOLOGY" ;
IF( _MAXP_ LT P_CategoryHR  ) THEN DO; 
   _MAXP_ = P_CategoryHR ;
   I_Category  = "HR                    " ;
   U_Category  = "HR                    " ;
END;
IF( _MAXP_ LT P_CategoryDESIGNER  ) THEN DO; 
   _MAXP_ = P_CategoryDESIGNER ;
   I_Category  = "DESIGNER              " ;
   U_Category  = "DESIGNER              " ;
END;
********************************;
*** End Scoring Code for Neural;
********************************;
