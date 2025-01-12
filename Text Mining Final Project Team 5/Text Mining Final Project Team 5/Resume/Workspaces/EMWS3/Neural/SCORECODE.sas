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
      I_Category  $ 22
      U_Category  $ 22
;
      label S_TextCluster4_SVD1 = 'Standard: TextCluster4_SVD1' ;

      label S_TextCluster4_SVD10 = 'Standard: TextCluster4_SVD10' ;

      label S_TextCluster4_SVD11 = 'Standard: TextCluster4_SVD11' ;

      label S_TextCluster4_SVD12 = 'Standard: TextCluster4_SVD12' ;

      label S_TextCluster4_SVD13 = 'Standard: TextCluster4_SVD13' ;

      label S_TextCluster4_SVD14 = 'Standard: TextCluster4_SVD14' ;

      label S_TextCluster4_SVD15 = 'Standard: TextCluster4_SVD15' ;

      label S_TextCluster4_SVD16 = 'Standard: TextCluster4_SVD16' ;

      label S_TextCluster4_SVD17 = 'Standard: TextCluster4_SVD17' ;

      label S_TextCluster4_SVD18 = 'Standard: TextCluster4_SVD18' ;

      label S_TextCluster4_SVD19 = 'Standard: TextCluster4_SVD19' ;

      label S_TextCluster4_SVD2 = 'Standard: TextCluster4_SVD2' ;

      label S_TextCluster4_SVD20 = 'Standard: TextCluster4_SVD20' ;

      label S_TextCluster4_SVD21 = 'Standard: TextCluster4_SVD21' ;

      label S_TextCluster4_SVD22 = 'Standard: TextCluster4_SVD22' ;

      label S_TextCluster4_SVD23 = 'Standard: TextCluster4_SVD23' ;

      label S_TextCluster4_SVD24 = 'Standard: TextCluster4_SVD24' ;

      label S_TextCluster4_SVD25 = 'Standard: TextCluster4_SVD25' ;

      label S_TextCluster4_SVD26 = 'Standard: TextCluster4_SVD26' ;

      label S_TextCluster4_SVD27 = 'Standard: TextCluster4_SVD27' ;

      label S_TextCluster4_SVD28 = 'Standard: TextCluster4_SVD28' ;

      label S_TextCluster4_SVD29 = 'Standard: TextCluster4_SVD29' ;

      label S_TextCluster4_SVD3 = 'Standard: TextCluster4_SVD3' ;

      label S_TextCluster4_SVD30 = 'Standard: TextCluster4_SVD30' ;

      label S_TextCluster4_SVD31 = 'Standard: TextCluster4_SVD31' ;

      label S_TextCluster4_SVD32 = 'Standard: TextCluster4_SVD32' ;

      label S_TextCluster4_SVD33 = 'Standard: TextCluster4_SVD33' ;

      label S_TextCluster4_SVD34 = 'Standard: TextCluster4_SVD34' ;

      label S_TextCluster4_SVD35 = 'Standard: TextCluster4_SVD35' ;

      label S_TextCluster4_SVD36 = 'Standard: TextCluster4_SVD36' ;

      label S_TextCluster4_SVD37 = 'Standard: TextCluster4_SVD37' ;

      label S_TextCluster4_SVD38 = 'Standard: TextCluster4_SVD38' ;

      label S_TextCluster4_SVD39 = 'Standard: TextCluster4_SVD39' ;

      label S_TextCluster4_SVD4 = 'Standard: TextCluster4_SVD4' ;

      label S_TextCluster4_SVD40 = 'Standard: TextCluster4_SVD40' ;

      label S_TextCluster4_SVD41 = 'Standard: TextCluster4_SVD41' ;

      label S_TextCluster4_SVD42 = 'Standard: TextCluster4_SVD42' ;

      label S_TextCluster4_SVD43 = 'Standard: TextCluster4_SVD43' ;

      label S_TextCluster4_SVD44 = 'Standard: TextCluster4_SVD44' ;

      label S_TextCluster4_SVD45 = 'Standard: TextCluster4_SVD45' ;

      label S_TextCluster4_SVD46 = 'Standard: TextCluster4_SVD46' ;

      label S_TextCluster4_SVD47 = 'Standard: TextCluster4_SVD47' ;

      label S_TextCluster4_SVD48 = 'Standard: TextCluster4_SVD48' ;

      label S_TextCluster4_SVD49 = 'Standard: TextCluster4_SVD49' ;

      label S_TextCluster4_SVD5 = 'Standard: TextCluster4_SVD5' ;

      label S_TextCluster4_SVD50 = 'Standard: TextCluster4_SVD50' ;

      label S_TextCluster4_SVD51 = 'Standard: TextCluster4_SVD51' ;

      label S_TextCluster4_SVD52 = 'Standard: TextCluster4_SVD52' ;

      label S_TextCluster4_SVD53 = 'Standard: TextCluster4_SVD53' ;

      label S_TextCluster4_SVD54 = 'Standard: TextCluster4_SVD54' ;

      label S_TextCluster4_SVD55 = 'Standard: TextCluster4_SVD55' ;

      label S_TextCluster4_SVD56 = 'Standard: TextCluster4_SVD56' ;

      label S_TextCluster4_SVD57 = 'Standard: TextCluster4_SVD57' ;

      label S_TextCluster4_SVD58 = 'Standard: TextCluster4_SVD58' ;

      label S_TextCluster4_SVD59 = 'Standard: TextCluster4_SVD59' ;

      label S_TextCluster4_SVD6 = 'Standard: TextCluster4_SVD6' ;

      label S_TextCluster4_SVD60 = 'Standard: TextCluster4_SVD60' ;

      label S_TextCluster4_SVD61 = 'Standard: TextCluster4_SVD61' ;

      label S_TextCluster4_SVD62 = 'Standard: TextCluster4_SVD62' ;

      label S_TextCluster4_SVD63 = 'Standard: TextCluster4_SVD63' ;

      label S_TextCluster4_SVD64 = 'Standard: TextCluster4_SVD64' ;

      label S_TextCluster4_SVD65 = 'Standard: TextCluster4_SVD65' ;

      label S_TextCluster4_SVD66 = 'Standard: TextCluster4_SVD66' ;

      label S_TextCluster4_SVD67 = 'Standard: TextCluster4_SVD67' ;

      label S_TextCluster4_SVD68 = 'Standard: TextCluster4_SVD68' ;

      label S_TextCluster4_SVD7 = 'Standard: TextCluster4_SVD7' ;

      label S_TextCluster4_SVD8 = 'Standard: TextCluster4_SVD8' ;

      label S_TextCluster4_SVD9 = 'Standard: TextCluster4_SVD9' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label I_Category = 'Into: Category' ;

      label U_Category = 'Unnormalized Into: Category' ;

      label P_CategoryTEACHER = 'Predicted: Category=TEACHER' ;

      label P_CategorySALES = 'Predicted: Category=SALES' ;

      label P_CategoryOTHER = 'Predicted: Category=OTHER' ;

      label P_CategoryINFORMATION_TECHNOLOGY = 
'Predicted: Category=INFORMATION-TECHNOLOGY' ;

      label P_CategoryHR = 'Predicted: Category=HR' ;

      label P_CategoryHEALTHCARE = 'Predicted: Category=HEALTHCARE' ;

      label P_CategoryFITNESS = 'Predicted: Category=FITNESS' ;

      label P_CategoryDIGITAL_MEDIA = 'Predicted: Category=DIGITAL-MEDIA' ;

      label P_CategoryDESIGNER = 'Predicted: Category=DESIGNER' ;

      label P_CategoryCONSULTANT = 'Predicted: Category=CONSULTANT' ;

      label P_CategoryBUSINESS_DEVELOPMENT = 
'Predicted: Category=BUSINESS-DEVELOPMENT' ;

      label P_CategoryADVOCATE = 'Predicted: Category=ADVOCATE' ;

      label  _WARN_ = "Warnings"; 

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   TextCluster4_SVD1 , 
   TextCluster4_SVD10 , 
   TextCluster4_SVD11 , 
   TextCluster4_SVD12 , 
   TextCluster4_SVD13 , 
   TextCluster4_SVD14 , 
   TextCluster4_SVD15 , 
   TextCluster4_SVD16 , 
   TextCluster4_SVD17 , 
   TextCluster4_SVD18 , 
   TextCluster4_SVD19 , 
   TextCluster4_SVD2 , 
   TextCluster4_SVD20 , 
   TextCluster4_SVD21 , 
   TextCluster4_SVD22 , 
   TextCluster4_SVD23 , 
   TextCluster4_SVD24 , 
   TextCluster4_SVD25 , 
   TextCluster4_SVD26 , 
   TextCluster4_SVD27 , 
   TextCluster4_SVD28 , 
   TextCluster4_SVD29 , 
   TextCluster4_SVD3 , 
   TextCluster4_SVD30 , 
   TextCluster4_SVD31 , 
   TextCluster4_SVD32 , 
   TextCluster4_SVD33 , 
   TextCluster4_SVD34 , 
   TextCluster4_SVD35 , 
   TextCluster4_SVD36 , 
   TextCluster4_SVD37 , 
   TextCluster4_SVD38 , 
   TextCluster4_SVD39 , 
   TextCluster4_SVD4 , 
   TextCluster4_SVD40 , 
   TextCluster4_SVD41 , 
   TextCluster4_SVD42 , 
   TextCluster4_SVD43 , 
   TextCluster4_SVD44 , 
   TextCluster4_SVD45 , 
   TextCluster4_SVD46 , 
   TextCluster4_SVD47 , 
   TextCluster4_SVD48 , 
   TextCluster4_SVD49 , 
   TextCluster4_SVD5 , 
   TextCluster4_SVD50 , 
   TextCluster4_SVD51 , 
   TextCluster4_SVD52 , 
   TextCluster4_SVD53 , 
   TextCluster4_SVD54 , 
   TextCluster4_SVD55 , 
   TextCluster4_SVD56 , 
   TextCluster4_SVD57 , 
   TextCluster4_SVD58 , 
   TextCluster4_SVD59 , 
   TextCluster4_SVD6 , 
   TextCluster4_SVD60 , 
   TextCluster4_SVD61 , 
   TextCluster4_SVD62 , 
   TextCluster4_SVD63 , 
   TextCluster4_SVD64 , 
   TextCluster4_SVD65 , 
   TextCluster4_SVD66 , 
   TextCluster4_SVD67 , 
   TextCluster4_SVD68 , 
   TextCluster4_SVD7 , 
   TextCluster4_SVD8 , 
   TextCluster4_SVD9   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster4_SVD1  =    -4.61477353537255 +     8.49131215227018 * 
        TextCluster4_SVD1 ;
   S_TextCluster4_SVD10  =    -0.14541447168779 +     7.27656049041321 * 
        TextCluster4_SVD10 ;
   S_TextCluster4_SVD11  =    -0.13942319255912 +     8.09949489736275 * 
        TextCluster4_SVD11 ;
   S_TextCluster4_SVD12  =    -0.05429326570936 +     8.64383053422791 * 
        TextCluster4_SVD12 ;
   S_TextCluster4_SVD13  =    -0.06411195615199 +     9.34438127698893 * 
        TextCluster4_SVD13 ;
   S_TextCluster4_SVD14  =     0.01895244974929 +     9.21547444813392 * 
        TextCluster4_SVD14 ;
   S_TextCluster4_SVD15  =    -0.02995372136833 +     9.35328078861174 * 
        TextCluster4_SVD15 ;
   S_TextCluster4_SVD16  =     0.03148870596254 +     10.2769231632443 * 
        TextCluster4_SVD16 ;
   S_TextCluster4_SVD17  =     0.00749944500627 +     10.0940625489226 * 
        TextCluster4_SVD17 ;
   S_TextCluster4_SVD18  =     0.00009707041511 +     12.6135679465735 * 
        TextCluster4_SVD18 ;
   S_TextCluster4_SVD19  =     0.03267991663397 +     9.86792347592218 * 
        TextCluster4_SVD19 ;
   S_TextCluster4_SVD2  =     0.15748905283937 +     4.66827708853904 * 
        TextCluster4_SVD2 ;
   S_TextCluster4_SVD20  =     0.03290202881387 +     11.3937579373087 * 
        TextCluster4_SVD20 ;
   S_TextCluster4_SVD21  =     0.04821291489094 +     10.7241424424495 * 
        TextCluster4_SVD21 ;
   S_TextCluster4_SVD22  =     0.19250700917988 +     10.3948589458124 * 
        TextCluster4_SVD22 ;
   S_TextCluster4_SVD23  =    -0.00041442924346 +      11.113474376908 * 
        TextCluster4_SVD23 ;
   S_TextCluster4_SVD24  =     0.01816175107425 +     11.4474618734742 * 
        TextCluster4_SVD24 ;
   S_TextCluster4_SVD25  =    -0.04665143877839 +     12.0609677210283 * 
        TextCluster4_SVD25 ;
   S_TextCluster4_SVD26  =    -0.09302260202822 +     11.7839799359909 * 
        TextCluster4_SVD26 ;
   S_TextCluster4_SVD27  =     -0.0647965361229 +     11.6203749344759 * 
        TextCluster4_SVD27 ;
   S_TextCluster4_SVD28  =    -0.04517854060906 +     11.7911397466271 * 
        TextCluster4_SVD28 ;
   S_TextCluster4_SVD29  =    -0.11187485061814 +     11.9420851643789 * 
        TextCluster4_SVD29 ;
   S_TextCluster4_SVD3  =     0.02930681377373 +     4.88884765459681 * 
        TextCluster4_SVD3 ;
   S_TextCluster4_SVD30  =     -0.0003028078318 +     12.6293258801552 * 
        TextCluster4_SVD30 ;
   S_TextCluster4_SVD31  =      0.1788140508218 +     12.6723980047506 * 
        TextCluster4_SVD31 ;
   S_TextCluster4_SVD32  =     0.08641737710615 +     12.3907045970565 * 
        TextCluster4_SVD32 ;
   S_TextCluster4_SVD33  =     0.02718037324956 +     13.5494658824823 * 
        TextCluster4_SVD33 ;
   S_TextCluster4_SVD34  =     0.21275566613195 +     12.1250345149534 * 
        TextCluster4_SVD34 ;
   S_TextCluster4_SVD35  =     0.02356082933319 +     12.5078709017256 * 
        TextCluster4_SVD35 ;
   S_TextCluster4_SVD36  =     0.08837421108647 +     11.8943701734166 * 
        TextCluster4_SVD36 ;
   S_TextCluster4_SVD37  =    -0.10978256858168 +     11.7922336875544 * 
        TextCluster4_SVD37 ;
   S_TextCluster4_SVD38  =     0.03150038769145 +     11.8007576960976 * 
        TextCluster4_SVD38 ;
   S_TextCluster4_SVD39  =    -0.08288944321344 +      11.764159760749 * 
        TextCluster4_SVD39 ;
   S_TextCluster4_SVD4  =    -0.18226267064886 +     5.26245450265638 * 
        TextCluster4_SVD4 ;
   S_TextCluster4_SVD40  =     0.08319019518084 +     12.8132714510055 * 
        TextCluster4_SVD40 ;
   S_TextCluster4_SVD41  =    -0.03877865976961 +      12.900533371082 * 
        TextCluster4_SVD41 ;
   S_TextCluster4_SVD42  =    -0.03721653875871 +     12.8428655977448 * 
        TextCluster4_SVD42 ;
   S_TextCluster4_SVD43  =    -0.03964684539674 +     12.9115500881753 * 
        TextCluster4_SVD43 ;
   S_TextCluster4_SVD44  =    -0.02933493991297 +     13.4484597519785 * 
        TextCluster4_SVD44 ;
   S_TextCluster4_SVD45  =    -0.01225859915399 +     12.1819191558735 * 
        TextCluster4_SVD45 ;
   S_TextCluster4_SVD46  =     0.01339510601986 +     12.4458663705952 * 
        TextCluster4_SVD46 ;
   S_TextCluster4_SVD47  =       -0.09071703339 +       12.68728411902 * 
        TextCluster4_SVD47 ;
   S_TextCluster4_SVD48  =      0.0038917095544 +     12.1346731604747 * 
        TextCluster4_SVD48 ;
   S_TextCluster4_SVD49  =     0.16878043684651 +     12.3609791221247 * 
        TextCluster4_SVD49 ;
   S_TextCluster4_SVD5  =    -0.04929447491677 +     5.32245984426159 * 
        TextCluster4_SVD5 ;
   S_TextCluster4_SVD50  =    -0.09328543167616 +     12.6650245213646 * 
        TextCluster4_SVD50 ;
   S_TextCluster4_SVD51  =     0.03332484108707 +     12.2691919513034 * 
        TextCluster4_SVD51 ;
   S_TextCluster4_SVD52  =     0.00379989217895 +     12.8989191553613 * 
        TextCluster4_SVD52 ;
   S_TextCluster4_SVD53  =    -0.04344999378179 +     12.4801757446166 * 
        TextCluster4_SVD53 ;
   S_TextCluster4_SVD54  =    -0.05997244312423 +     12.2704925380299 * 
        TextCluster4_SVD54 ;
   S_TextCluster4_SVD55  =    -0.07201212513207 +     12.0730942010569 * 
        TextCluster4_SVD55 ;
   S_TextCluster4_SVD56  =     0.00891276617473 +     12.8476844183919 * 
        TextCluster4_SVD56 ;
   S_TextCluster4_SVD57  =    -0.00021440634952 +     12.5632757692948 * 
        TextCluster4_SVD57 ;
   S_TextCluster4_SVD58  =    -0.07557523706395 +     12.3357067203591 * 
        TextCluster4_SVD58 ;
   S_TextCluster4_SVD59  =     0.00718738971725 +     12.9029932906267 * 
        TextCluster4_SVD59 ;
   S_TextCluster4_SVD6  =     0.03203588461097 +     6.69575822769546 * 
        TextCluster4_SVD6 ;
   S_TextCluster4_SVD60  =     0.01366567312271 +     12.2906495376943 * 
        TextCluster4_SVD60 ;
   S_TextCluster4_SVD61  =     0.10716972150577 +     12.9932440733531 * 
        TextCluster4_SVD61 ;
   S_TextCluster4_SVD62  =     0.05114200796533 +     12.6338599793444 * 
        TextCluster4_SVD62 ;
   S_TextCluster4_SVD63  =     0.05752492200103 +      12.779070304299 * 
        TextCluster4_SVD63 ;
   S_TextCluster4_SVD64  =    -0.05516394489788 +     12.5428415092082 * 
        TextCluster4_SVD64 ;
   S_TextCluster4_SVD65  =     0.02054234314341 +     12.8351036149195 * 
        TextCluster4_SVD65 ;
   S_TextCluster4_SVD66  =     -0.0595217449361 +     12.1533638557043 * 
        TextCluster4_SVD66 ;
   S_TextCluster4_SVD67  =    -0.03484006707688 +     12.5614478831487 * 
        TextCluster4_SVD67 ;
   S_TextCluster4_SVD68  =    -0.05885406319432 +     12.0867416803478 * 
        TextCluster4_SVD68 ;
   S_TextCluster4_SVD7  =    -0.03012293320573 +     6.84760932406763 * 
        TextCluster4_SVD7 ;
   S_TextCluster4_SVD8  =     0.12805986125137 +     7.09242495680169 * 
        TextCluster4_SVD8 ;
   S_TextCluster4_SVD9  =    -0.02752464672716 +     7.65086979079404 * 
        TextCluster4_SVD9 ;
END;
ELSE DO;
   IF MISSING( TextCluster4_SVD1 ) THEN S_TextCluster4_SVD1  = . ;
   ELSE S_TextCluster4_SVD1  =    -4.61477353537255 +     8.49131215227018 * 
        TextCluster4_SVD1 ;
   IF MISSING( TextCluster4_SVD10 ) THEN S_TextCluster4_SVD10  = . ;
   ELSE S_TextCluster4_SVD10  =    -0.14541447168779 +     7.27656049041321 * 
        TextCluster4_SVD10 ;
   IF MISSING( TextCluster4_SVD11 ) THEN S_TextCluster4_SVD11  = . ;
   ELSE S_TextCluster4_SVD11  =    -0.13942319255912 +     8.09949489736275 * 
        TextCluster4_SVD11 ;
   IF MISSING( TextCluster4_SVD12 ) THEN S_TextCluster4_SVD12  = . ;
   ELSE S_TextCluster4_SVD12  =    -0.05429326570936 +     8.64383053422791 * 
        TextCluster4_SVD12 ;
   IF MISSING( TextCluster4_SVD13 ) THEN S_TextCluster4_SVD13  = . ;
   ELSE S_TextCluster4_SVD13  =    -0.06411195615199 +     9.34438127698893 * 
        TextCluster4_SVD13 ;
   IF MISSING( TextCluster4_SVD14 ) THEN S_TextCluster4_SVD14  = . ;
   ELSE S_TextCluster4_SVD14  =     0.01895244974929 +     9.21547444813392 * 
        TextCluster4_SVD14 ;
   IF MISSING( TextCluster4_SVD15 ) THEN S_TextCluster4_SVD15  = . ;
   ELSE S_TextCluster4_SVD15  =    -0.02995372136833 +     9.35328078861174 * 
        TextCluster4_SVD15 ;
   IF MISSING( TextCluster4_SVD16 ) THEN S_TextCluster4_SVD16  = . ;
   ELSE S_TextCluster4_SVD16  =     0.03148870596254 +     10.2769231632443 * 
        TextCluster4_SVD16 ;
   IF MISSING( TextCluster4_SVD17 ) THEN S_TextCluster4_SVD17  = . ;
   ELSE S_TextCluster4_SVD17  =     0.00749944500627 +     10.0940625489226 * 
        TextCluster4_SVD17 ;
   IF MISSING( TextCluster4_SVD18 ) THEN S_TextCluster4_SVD18  = . ;
   ELSE S_TextCluster4_SVD18  =     0.00009707041511 +     12.6135679465735 * 
        TextCluster4_SVD18 ;
   IF MISSING( TextCluster4_SVD19 ) THEN S_TextCluster4_SVD19  = . ;
   ELSE S_TextCluster4_SVD19  =     0.03267991663397 +     9.86792347592218 * 
        TextCluster4_SVD19 ;
   IF MISSING( TextCluster4_SVD2 ) THEN S_TextCluster4_SVD2  = . ;
   ELSE S_TextCluster4_SVD2  =     0.15748905283937 +     4.66827708853904 * 
        TextCluster4_SVD2 ;
   IF MISSING( TextCluster4_SVD20 ) THEN S_TextCluster4_SVD20  = . ;
   ELSE S_TextCluster4_SVD20  =     0.03290202881387 +     11.3937579373087 * 
        TextCluster4_SVD20 ;
   IF MISSING( TextCluster4_SVD21 ) THEN S_TextCluster4_SVD21  = . ;
   ELSE S_TextCluster4_SVD21  =     0.04821291489094 +     10.7241424424495 * 
        TextCluster4_SVD21 ;
   IF MISSING( TextCluster4_SVD22 ) THEN S_TextCluster4_SVD22  = . ;
   ELSE S_TextCluster4_SVD22  =     0.19250700917988 +     10.3948589458124 * 
        TextCluster4_SVD22 ;
   IF MISSING( TextCluster4_SVD23 ) THEN S_TextCluster4_SVD23  = . ;
   ELSE S_TextCluster4_SVD23  =    -0.00041442924346 +      11.113474376908 * 
        TextCluster4_SVD23 ;
   IF MISSING( TextCluster4_SVD24 ) THEN S_TextCluster4_SVD24  = . ;
   ELSE S_TextCluster4_SVD24  =     0.01816175107425 +     11.4474618734742 * 
        TextCluster4_SVD24 ;
   IF MISSING( TextCluster4_SVD25 ) THEN S_TextCluster4_SVD25  = . ;
   ELSE S_TextCluster4_SVD25  =    -0.04665143877839 +     12.0609677210283 * 
        TextCluster4_SVD25 ;
   IF MISSING( TextCluster4_SVD26 ) THEN S_TextCluster4_SVD26  = . ;
   ELSE S_TextCluster4_SVD26  =    -0.09302260202822 +     11.7839799359909 * 
        TextCluster4_SVD26 ;
   IF MISSING( TextCluster4_SVD27 ) THEN S_TextCluster4_SVD27  = . ;
   ELSE S_TextCluster4_SVD27  =     -0.0647965361229 +     11.6203749344759 * 
        TextCluster4_SVD27 ;
   IF MISSING( TextCluster4_SVD28 ) THEN S_TextCluster4_SVD28  = . ;
   ELSE S_TextCluster4_SVD28  =    -0.04517854060906 +     11.7911397466271 * 
        TextCluster4_SVD28 ;
   IF MISSING( TextCluster4_SVD29 ) THEN S_TextCluster4_SVD29  = . ;
   ELSE S_TextCluster4_SVD29  =    -0.11187485061814 +     11.9420851643789 * 
        TextCluster4_SVD29 ;
   IF MISSING( TextCluster4_SVD3 ) THEN S_TextCluster4_SVD3  = . ;
   ELSE S_TextCluster4_SVD3  =     0.02930681377373 +     4.88884765459681 * 
        TextCluster4_SVD3 ;
   IF MISSING( TextCluster4_SVD30 ) THEN S_TextCluster4_SVD30  = . ;
   ELSE S_TextCluster4_SVD30  =     -0.0003028078318 +     12.6293258801552 * 
        TextCluster4_SVD30 ;
   IF MISSING( TextCluster4_SVD31 ) THEN S_TextCluster4_SVD31  = . ;
   ELSE S_TextCluster4_SVD31  =      0.1788140508218 +     12.6723980047506 * 
        TextCluster4_SVD31 ;
   IF MISSING( TextCluster4_SVD32 ) THEN S_TextCluster4_SVD32  = . ;
   ELSE S_TextCluster4_SVD32  =     0.08641737710615 +     12.3907045970565 * 
        TextCluster4_SVD32 ;
   IF MISSING( TextCluster4_SVD33 ) THEN S_TextCluster4_SVD33  = . ;
   ELSE S_TextCluster4_SVD33  =     0.02718037324956 +     13.5494658824823 * 
        TextCluster4_SVD33 ;
   IF MISSING( TextCluster4_SVD34 ) THEN S_TextCluster4_SVD34  = . ;
   ELSE S_TextCluster4_SVD34  =     0.21275566613195 +     12.1250345149534 * 
        TextCluster4_SVD34 ;
   IF MISSING( TextCluster4_SVD35 ) THEN S_TextCluster4_SVD35  = . ;
   ELSE S_TextCluster4_SVD35  =     0.02356082933319 +     12.5078709017256 * 
        TextCluster4_SVD35 ;
   IF MISSING( TextCluster4_SVD36 ) THEN S_TextCluster4_SVD36  = . ;
   ELSE S_TextCluster4_SVD36  =     0.08837421108647 +     11.8943701734166 * 
        TextCluster4_SVD36 ;
   IF MISSING( TextCluster4_SVD37 ) THEN S_TextCluster4_SVD37  = . ;
   ELSE S_TextCluster4_SVD37  =    -0.10978256858168 +     11.7922336875544 * 
        TextCluster4_SVD37 ;
   IF MISSING( TextCluster4_SVD38 ) THEN S_TextCluster4_SVD38  = . ;
   ELSE S_TextCluster4_SVD38  =     0.03150038769145 +     11.8007576960976 * 
        TextCluster4_SVD38 ;
   IF MISSING( TextCluster4_SVD39 ) THEN S_TextCluster4_SVD39  = . ;
   ELSE S_TextCluster4_SVD39  =    -0.08288944321344 +      11.764159760749 * 
        TextCluster4_SVD39 ;
   IF MISSING( TextCluster4_SVD4 ) THEN S_TextCluster4_SVD4  = . ;
   ELSE S_TextCluster4_SVD4  =    -0.18226267064886 +     5.26245450265638 * 
        TextCluster4_SVD4 ;
   IF MISSING( TextCluster4_SVD40 ) THEN S_TextCluster4_SVD40  = . ;
   ELSE S_TextCluster4_SVD40  =     0.08319019518084 +     12.8132714510055 * 
        TextCluster4_SVD40 ;
   IF MISSING( TextCluster4_SVD41 ) THEN S_TextCluster4_SVD41  = . ;
   ELSE S_TextCluster4_SVD41  =    -0.03877865976961 +      12.900533371082 * 
        TextCluster4_SVD41 ;
   IF MISSING( TextCluster4_SVD42 ) THEN S_TextCluster4_SVD42  = . ;
   ELSE S_TextCluster4_SVD42  =    -0.03721653875871 +     12.8428655977448 * 
        TextCluster4_SVD42 ;
   IF MISSING( TextCluster4_SVD43 ) THEN S_TextCluster4_SVD43  = . ;
   ELSE S_TextCluster4_SVD43  =    -0.03964684539674 +     12.9115500881753 * 
        TextCluster4_SVD43 ;
   IF MISSING( TextCluster4_SVD44 ) THEN S_TextCluster4_SVD44  = . ;
   ELSE S_TextCluster4_SVD44  =    -0.02933493991297 +     13.4484597519785 * 
        TextCluster4_SVD44 ;
   IF MISSING( TextCluster4_SVD45 ) THEN S_TextCluster4_SVD45  = . ;
   ELSE S_TextCluster4_SVD45  =    -0.01225859915399 +     12.1819191558735 * 
        TextCluster4_SVD45 ;
   IF MISSING( TextCluster4_SVD46 ) THEN S_TextCluster4_SVD46  = . ;
   ELSE S_TextCluster4_SVD46  =     0.01339510601986 +     12.4458663705952 * 
        TextCluster4_SVD46 ;
   IF MISSING( TextCluster4_SVD47 ) THEN S_TextCluster4_SVD47  = . ;
   ELSE S_TextCluster4_SVD47  =       -0.09071703339 +       12.68728411902 * 
        TextCluster4_SVD47 ;
   IF MISSING( TextCluster4_SVD48 ) THEN S_TextCluster4_SVD48  = . ;
   ELSE S_TextCluster4_SVD48  =      0.0038917095544 +     12.1346731604747 * 
        TextCluster4_SVD48 ;
   IF MISSING( TextCluster4_SVD49 ) THEN S_TextCluster4_SVD49  = . ;
   ELSE S_TextCluster4_SVD49  =     0.16878043684651 +     12.3609791221247 * 
        TextCluster4_SVD49 ;
   IF MISSING( TextCluster4_SVD5 ) THEN S_TextCluster4_SVD5  = . ;
   ELSE S_TextCluster4_SVD5  =    -0.04929447491677 +     5.32245984426159 * 
        TextCluster4_SVD5 ;
   IF MISSING( TextCluster4_SVD50 ) THEN S_TextCluster4_SVD50  = . ;
   ELSE S_TextCluster4_SVD50  =    -0.09328543167616 +     12.6650245213646 * 
        TextCluster4_SVD50 ;
   IF MISSING( TextCluster4_SVD51 ) THEN S_TextCluster4_SVD51  = . ;
   ELSE S_TextCluster4_SVD51  =     0.03332484108707 +     12.2691919513034 * 
        TextCluster4_SVD51 ;
   IF MISSING( TextCluster4_SVD52 ) THEN S_TextCluster4_SVD52  = . ;
   ELSE S_TextCluster4_SVD52  =     0.00379989217895 +     12.8989191553613 * 
        TextCluster4_SVD52 ;
   IF MISSING( TextCluster4_SVD53 ) THEN S_TextCluster4_SVD53  = . ;
   ELSE S_TextCluster4_SVD53  =    -0.04344999378179 +     12.4801757446166 * 
        TextCluster4_SVD53 ;
   IF MISSING( TextCluster4_SVD54 ) THEN S_TextCluster4_SVD54  = . ;
   ELSE S_TextCluster4_SVD54  =    -0.05997244312423 +     12.2704925380299 * 
        TextCluster4_SVD54 ;
   IF MISSING( TextCluster4_SVD55 ) THEN S_TextCluster4_SVD55  = . ;
   ELSE S_TextCluster4_SVD55  =    -0.07201212513207 +     12.0730942010569 * 
        TextCluster4_SVD55 ;
   IF MISSING( TextCluster4_SVD56 ) THEN S_TextCluster4_SVD56  = . ;
   ELSE S_TextCluster4_SVD56  =     0.00891276617473 +     12.8476844183919 * 
        TextCluster4_SVD56 ;
   IF MISSING( TextCluster4_SVD57 ) THEN S_TextCluster4_SVD57  = . ;
   ELSE S_TextCluster4_SVD57  =    -0.00021440634952 +     12.5632757692948 * 
        TextCluster4_SVD57 ;
   IF MISSING( TextCluster4_SVD58 ) THEN S_TextCluster4_SVD58  = . ;
   ELSE S_TextCluster4_SVD58  =    -0.07557523706395 +     12.3357067203591 * 
        TextCluster4_SVD58 ;
   IF MISSING( TextCluster4_SVD59 ) THEN S_TextCluster4_SVD59  = . ;
   ELSE S_TextCluster4_SVD59  =     0.00718738971725 +     12.9029932906267 * 
        TextCluster4_SVD59 ;
   IF MISSING( TextCluster4_SVD6 ) THEN S_TextCluster4_SVD6  = . ;
   ELSE S_TextCluster4_SVD6  =     0.03203588461097 +     6.69575822769546 * 
        TextCluster4_SVD6 ;
   IF MISSING( TextCluster4_SVD60 ) THEN S_TextCluster4_SVD60  = . ;
   ELSE S_TextCluster4_SVD60  =     0.01366567312271 +     12.2906495376943 * 
        TextCluster4_SVD60 ;
   IF MISSING( TextCluster4_SVD61 ) THEN S_TextCluster4_SVD61  = . ;
   ELSE S_TextCluster4_SVD61  =     0.10716972150577 +     12.9932440733531 * 
        TextCluster4_SVD61 ;
   IF MISSING( TextCluster4_SVD62 ) THEN S_TextCluster4_SVD62  = . ;
   ELSE S_TextCluster4_SVD62  =     0.05114200796533 +     12.6338599793444 * 
        TextCluster4_SVD62 ;
   IF MISSING( TextCluster4_SVD63 ) THEN S_TextCluster4_SVD63  = . ;
   ELSE S_TextCluster4_SVD63  =     0.05752492200103 +      12.779070304299 * 
        TextCluster4_SVD63 ;
   IF MISSING( TextCluster4_SVD64 ) THEN S_TextCluster4_SVD64  = . ;
   ELSE S_TextCluster4_SVD64  =    -0.05516394489788 +     12.5428415092082 * 
        TextCluster4_SVD64 ;
   IF MISSING( TextCluster4_SVD65 ) THEN S_TextCluster4_SVD65  = . ;
   ELSE S_TextCluster4_SVD65  =     0.02054234314341 +     12.8351036149195 * 
        TextCluster4_SVD65 ;
   IF MISSING( TextCluster4_SVD66 ) THEN S_TextCluster4_SVD66  = . ;
   ELSE S_TextCluster4_SVD66  =     -0.0595217449361 +     12.1533638557043 * 
        TextCluster4_SVD66 ;
   IF MISSING( TextCluster4_SVD67 ) THEN S_TextCluster4_SVD67  = . ;
   ELSE S_TextCluster4_SVD67  =    -0.03484006707688 +     12.5614478831487 * 
        TextCluster4_SVD67 ;
   IF MISSING( TextCluster4_SVD68 ) THEN S_TextCluster4_SVD68  = . ;
   ELSE S_TextCluster4_SVD68  =    -0.05885406319432 +     12.0867416803478 * 
        TextCluster4_SVD68 ;
   IF MISSING( TextCluster4_SVD7 ) THEN S_TextCluster4_SVD7  = . ;
   ELSE S_TextCluster4_SVD7  =    -0.03012293320573 +     6.84760932406763 * 
        TextCluster4_SVD7 ;
   IF MISSING( TextCluster4_SVD8 ) THEN S_TextCluster4_SVD8  = . ;
   ELSE S_TextCluster4_SVD8  =     0.12805986125137 +     7.09242495680169 * 
        TextCluster4_SVD8 ;
   IF MISSING( TextCluster4_SVD9 ) THEN S_TextCluster4_SVD9  = . ;
   ELSE S_TextCluster4_SVD9  =    -0.02752464672716 +     7.65086979079404 * 
        TextCluster4_SVD9 ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =    -0.19964615312488 * S_TextCluster4_SVD1
          +    -0.20838261421349 * S_TextCluster4_SVD10
          +     0.34298887543029 * S_TextCluster4_SVD11
          +    -0.44238031919994 * S_TextCluster4_SVD12
          +    -0.31795204288373 * S_TextCluster4_SVD13
          +      0.2266108269915 * S_TextCluster4_SVD14
          +    -0.16222579381094 * S_TextCluster4_SVD15
          +     0.17626746338215 * S_TextCluster4_SVD16
          +     0.17802561854673 * S_TextCluster4_SVD17
          +     0.00594813597639 * S_TextCluster4_SVD18
          +      0.0852026285503 * S_TextCluster4_SVD19
          +    -1.83684421451751 * S_TextCluster4_SVD2
          +    -0.10604055009376 * S_TextCluster4_SVD20
          +     0.07492151015947 * S_TextCluster4_SVD21
          +    -0.53755414018266 * S_TextCluster4_SVD22
          +    -0.33186914327253 * S_TextCluster4_SVD23
          +    -0.17148605742011 * S_TextCluster4_SVD24
          +    -0.11874875374506 * S_TextCluster4_SVD25
          +     0.09496633934784 * S_TextCluster4_SVD26
          +    -0.17767861897242 * S_TextCluster4_SVD27
          +     0.29616416698025 * S_TextCluster4_SVD28
          +    -0.13481466569623 * S_TextCluster4_SVD29
          +     0.28476007374439 * S_TextCluster4_SVD3
          +    -0.29589630861955 * S_TextCluster4_SVD30
          +     0.06395557684202 * S_TextCluster4_SVD31
          +    -0.40722697057042 * S_TextCluster4_SVD32
          +    -0.13144799616979 * S_TextCluster4_SVD33
          +    -0.25620347292999 * S_TextCluster4_SVD34
          +     0.32510830413976 * S_TextCluster4_SVD35
          +    -0.34610425104194 * S_TextCluster4_SVD36
          +     0.28118447960619 * S_TextCluster4_SVD37
          +     0.23111566527997 * S_TextCluster4_SVD38
          +     0.21413796823226 * S_TextCluster4_SVD39
          +    -1.27048374143618 * S_TextCluster4_SVD4
          +     0.11201468615325 * S_TextCluster4_SVD40
          +     -0.1556907818995 * S_TextCluster4_SVD41
          +     0.04232246814877 * S_TextCluster4_SVD42
          +    -0.12879393168627 * S_TextCluster4_SVD43
          +     0.01693104852546 * S_TextCluster4_SVD44
          +    -0.06891949474211 * S_TextCluster4_SVD45
          +    -0.00899375487989 * S_TextCluster4_SVD46
          +     0.28008937691457 * S_TextCluster4_SVD47
          +    -0.07785782975679 * S_TextCluster4_SVD48
          +     0.14135768687193 * S_TextCluster4_SVD49
          +     0.40995080974731 * S_TextCluster4_SVD5
          +    -0.30136311915571 * S_TextCluster4_SVD50
          +    -0.39288479143376 * S_TextCluster4_SVD51
          +     0.25538269719305 * S_TextCluster4_SVD52
          +    -0.03006927549335 * S_TextCluster4_SVD53
          +     0.12648475797499 * S_TextCluster4_SVD54
          +    -0.03447668489629 * S_TextCluster4_SVD55
          +     0.00284710629899 * S_TextCluster4_SVD56
          +    -0.08554893382078 * S_TextCluster4_SVD57
          +     0.06816256205697 * S_TextCluster4_SVD58
          +    -0.08329400099444 * S_TextCluster4_SVD59
          +     0.77223324335555 * S_TextCluster4_SVD6
          +     0.08334487861108 * S_TextCluster4_SVD60
          +      -0.206681490556 * S_TextCluster4_SVD61
          +      0.1088480698239 * S_TextCluster4_SVD62
          +    -0.07900863650222 * S_TextCluster4_SVD63
          +     -0.2880356591017 * S_TextCluster4_SVD64
          +    -0.29613063231552 * S_TextCluster4_SVD65
          +     0.24798551889829 * S_TextCluster4_SVD66
          +    -0.25523982802529 * S_TextCluster4_SVD67
          +     0.00891253898487 * S_TextCluster4_SVD68
          +    -0.54812283938392 * S_TextCluster4_SVD7
          +     0.56677653415204 * S_TextCluster4_SVD8
          +    -0.17942928166465 * S_TextCluster4_SVD9 ;
   H12  =    -0.32866277337046 * S_TextCluster4_SVD1
          +    -0.74142551236164 * S_TextCluster4_SVD10
          +    -0.30715653938211 * S_TextCluster4_SVD11
          +     0.33854201132925 * S_TextCluster4_SVD12
          +     -0.4584929405736 * S_TextCluster4_SVD13
          +     0.10045873797184 * S_TextCluster4_SVD14
          +     0.45202412184537 * S_TextCluster4_SVD15
          +    -0.28836847734733 * S_TextCluster4_SVD16
          +    -0.11191382133874 * S_TextCluster4_SVD17
          +    -0.17822919108017 * S_TextCluster4_SVD18
          +     0.10782763339246 * S_TextCluster4_SVD19
          +     0.29767276989673 * S_TextCluster4_SVD2
          +     0.28241004420782 * S_TextCluster4_SVD20
          +     -0.0124391900755 * S_TextCluster4_SVD21
          +        -0.1265544947 * S_TextCluster4_SVD22
          +    -0.04999168369955 * S_TextCluster4_SVD23
          +    -0.05800026975355 * S_TextCluster4_SVD24
          +     0.01303999218696 * S_TextCluster4_SVD25
          +     0.25628935994931 * S_TextCluster4_SVD26
          +     -0.2182636220184 * S_TextCluster4_SVD27
          +     0.54506876412582 * S_TextCluster4_SVD28
          +    -0.04120013998768 * S_TextCluster4_SVD29
          +    -1.31709349899795 * S_TextCluster4_SVD3
          +     0.37928918925102 * S_TextCluster4_SVD30
          +     0.32556087766453 * S_TextCluster4_SVD31
          +    -0.33138948691525 * S_TextCluster4_SVD32
          +     0.22632056845354 * S_TextCluster4_SVD33
          +     0.28964382475189 * S_TextCluster4_SVD34
          +     0.86532827568973 * S_TextCluster4_SVD35
          +    -0.16999394094516 * S_TextCluster4_SVD36
          +     0.21964433209931 * S_TextCluster4_SVD37
          +    -0.10657972084562 * S_TextCluster4_SVD38
          +     0.42114849995858 * S_TextCluster4_SVD39
          +     0.54499701013306 * S_TextCluster4_SVD4
          +     0.11827783184344 * S_TextCluster4_SVD40
          +    -0.12156474232327 * S_TextCluster4_SVD41
          +    -0.15863384991476 * S_TextCluster4_SVD42
          +      0.0220962153347 * S_TextCluster4_SVD43
          +    -0.25127881702944 * S_TextCluster4_SVD44
          +     0.02887675976726 * S_TextCluster4_SVD45
          +     0.17116773379002 * S_TextCluster4_SVD46
          +     0.14155361071118 * S_TextCluster4_SVD47
          +    -0.30732606702266 * S_TextCluster4_SVD48
          +    -0.14449217216897 * S_TextCluster4_SVD49
          +    -0.32601460971329 * S_TextCluster4_SVD5
          +     0.12065897460511 * S_TextCluster4_SVD50
          +    -0.26299900105032 * S_TextCluster4_SVD51
          +     0.15435718784383 * S_TextCluster4_SVD52
          +      0.0500597630196 * S_TextCluster4_SVD53
          +     0.26763992752004 * S_TextCluster4_SVD54
          +    -0.10260265048405 * S_TextCluster4_SVD55
          +    -0.16000709917984 * S_TextCluster4_SVD56
          +    -0.10310055133093 * S_TextCluster4_SVD57
          +     0.02959915758214 * S_TextCluster4_SVD58
          +     0.15209912484096 * S_TextCluster4_SVD59
          +      0.7543113111056 * S_TextCluster4_SVD6
          +    -0.16538233502643 * S_TextCluster4_SVD60
          +    -0.08028859097148 * S_TextCluster4_SVD61
          +     0.68716886099567 * S_TextCluster4_SVD62
          +     0.03565651443694 * S_TextCluster4_SVD63
          +    -0.02808321240337 * S_TextCluster4_SVD64
          +    -0.02994767973838 * S_TextCluster4_SVD65
          +     0.11622524717072 * S_TextCluster4_SVD66
          +     0.13684471681709 * S_TextCluster4_SVD67
          +    -0.04677078024121 * S_TextCluster4_SVD68
          +     -0.7780164507202 * S_TextCluster4_SVD7
          +     0.55231307648414 * S_TextCluster4_SVD8
          +     0.39319016047092 * S_TextCluster4_SVD9 ;
   H13  =     0.07500888831221 * S_TextCluster4_SVD1
          +    -0.05922727718519 * S_TextCluster4_SVD10
          +     0.09044784046798 * S_TextCluster4_SVD11
          +    -0.42256924193879 * S_TextCluster4_SVD12
          +    -0.24220188328553 * S_TextCluster4_SVD13
          +    -0.47155197540538 * S_TextCluster4_SVD14
          +    -0.05845014550635 * S_TextCluster4_SVD15
          +     0.20217555216197 * S_TextCluster4_SVD16
          +    -0.19596050613972 * S_TextCluster4_SVD17
          +     0.30712791977663 * S_TextCluster4_SVD18
          +     0.02892273265362 * S_TextCluster4_SVD19
          +      -1.326298630169 * S_TextCluster4_SVD2
          +    -0.02603212849332 * S_TextCluster4_SVD20
          +     0.07398537438655 * S_TextCluster4_SVD21
          +    -0.49955528182323 * S_TextCluster4_SVD22
          +     0.33867478078377 * S_TextCluster4_SVD23
          +    -0.38797226235744 * S_TextCluster4_SVD24
          +     0.25824637017402 * S_TextCluster4_SVD25
          +     0.05537197150499 * S_TextCluster4_SVD26
          +    -0.14900015209041 * S_TextCluster4_SVD27
          +    -0.06866506062488 * S_TextCluster4_SVD28
          +     -0.6327781781205 * S_TextCluster4_SVD29
          +     0.14317243345886 * S_TextCluster4_SVD3
          +    -0.07461661940155 * S_TextCluster4_SVD30
          +     0.33032079404859 * S_TextCluster4_SVD31
          +    -0.36356707540497 * S_TextCluster4_SVD32
          +    -0.33207707884164 * S_TextCluster4_SVD33
          +    -0.22523811038221 * S_TextCluster4_SVD34
          +     0.25923593004113 * S_TextCluster4_SVD35
          +      0.2283093787546 * S_TextCluster4_SVD36
          +    -0.12085637155923 * S_TextCluster4_SVD37
          +    -0.07953905112014 * S_TextCluster4_SVD38
          +     0.34533147536545 * S_TextCluster4_SVD39
          +    -0.33095521472609 * S_TextCluster4_SVD4
          +     0.28185435265664 * S_TextCluster4_SVD40
          +    -0.14657651135486 * S_TextCluster4_SVD41
          +     0.01006782583466 * S_TextCluster4_SVD42
          +     0.03430299308849 * S_TextCluster4_SVD43
          +      0.1154810130375 * S_TextCluster4_SVD44
          +    -0.34547355257123 * S_TextCluster4_SVD45
          +    -0.01898086441164 * S_TextCluster4_SVD46
          +     0.03097782119279 * S_TextCluster4_SVD47
          +    -0.39699589017825 * S_TextCluster4_SVD48
          +     0.08564054497419 * S_TextCluster4_SVD49
          +    -0.71765406509954 * S_TextCluster4_SVD5
          +    -0.15818526444031 * S_TextCluster4_SVD50
          +    -0.64569126425433 * S_TextCluster4_SVD51
          +    -0.10985719611678 * S_TextCluster4_SVD52
          +     0.12233158820129 * S_TextCluster4_SVD53
          +      0.3171471382546 * S_TextCluster4_SVD54
          +      -0.035406353265 * S_TextCluster4_SVD55
          +     0.06413555764264 * S_TextCluster4_SVD56
          +    -0.00015810132576 * S_TextCluster4_SVD57
          +     0.32820173427105 * S_TextCluster4_SVD58
          +     0.14904387816795 * S_TextCluster4_SVD59
          +     0.16565596095826 * S_TextCluster4_SVD6
          +     0.06244109518766 * S_TextCluster4_SVD60
          +    -0.03220857265465 * S_TextCluster4_SVD61
          +     0.19946862042908 * S_TextCluster4_SVD62
          +    -0.02999800039384 * S_TextCluster4_SVD63
          +    -0.05587049400156 * S_TextCluster4_SVD64
          +    -0.25722695933115 * S_TextCluster4_SVD65
          +    -0.00062737401875 * S_TextCluster4_SVD66
          +    -0.03746219226697 * S_TextCluster4_SVD67
          +    -0.17315979098084 * S_TextCluster4_SVD68
          +     0.26828250180808 * S_TextCluster4_SVD7
          +      0.0839923118961 * S_TextCluster4_SVD8
          +    -0.47229690663688 * S_TextCluster4_SVD9 ;
   H11  =     0.20637004633873 + H11 ;
   H12  =    -0.65408356599107 + H12 ;
   H13  =     0.14560918681665 + H13 ;
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
IF _DM_BAD EQ 0 THEN DO;
   P_CategoryTEACHER  =    -3.13503796888485 * H11  +     1.75794359545773 * 
        H12  +     2.80167135946341 * H13 ;
   P_CategorySALES  =     3.43797021011399 * H11  +    -0.87337334527574 * H12
          +    -2.23554903361101 * H13 ;
   P_CategoryOTHER  =    -0.37008191153018 * H11  +     0.68166461386095 * H12
          +     -0.2478680943059 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -3.54517347111075 * H11
          +     3.09748526587347 * H12  +     -0.9049355787399 * H13 ;
   P_CategoryHR  =     1.35054927025249 * H11  +    -2.10481129969901 * H12
          +     0.72112886592361 * H13 ;
   P_CategoryHEALTHCARE  =     1.41325259062165 * H11
          +     1.37525512027663 * H12  +    -3.31637410609294 * H13 ;
   P_CategoryFITNESS  =     0.53886736794941 * H11  +    -1.03505214617483 * 
        H12  +     2.53690544446741 * H13 ;
   P_CategoryDIGITAL_MEDIA  =    -2.38595789182576 * H11
          +    -1.10547031380076 * H12  +     1.44005170110653 * H13 ;
   P_CategoryDESIGNER  =    -1.55055741586168 * H11  +    -1.16520607031946 * 
        H12  +    -1.64045631743224 * H13 ;
   P_CategoryCONSULTANT  =    -0.52136646075422 * H11
          +     0.47273513685881 * H12  +    -1.33537418913175 * H13 ;
   P_CategoryBUSINESS_DEVELOPMENT  =     2.64358857784921 * H11
          +    -1.55570078193577 * H12  +    -4.03546607321475 * H13 ;
   P_CategoryTEACHER  =     -1.4331806893062 + P_CategoryTEACHER ;
   P_CategorySALES  =    -1.12181530222504 + P_CategorySALES ;
   P_CategoryOTHER  =     1.03417557303476 + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -2.01077340329431 + 
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =    -1.43180966343521 + P_CategoryHR ;
   P_CategoryHEALTHCARE  =    -0.29083590757914 + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  =    -1.65210980863964 + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  =    -0.27289755797957 + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  =    -0.69580003501821 + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  =      1.0960782172425 + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -1.48544172478898 + 
        P_CategoryBUSINESS_DEVELOPMENT ;
   P_CategoryADVOCATE  = 0; 
   _MAX_ = MAX (P_CategoryTEACHER , P_CategorySALES , P_CategoryOTHER , 
        P_CategoryINFORMATION_TECHNOLOGY , P_CategoryHR , P_CategoryHEALTHCARE
         , P_CategoryFITNESS , P_CategoryDIGITAL_MEDIA , P_CategoryDESIGNER , 
        P_CategoryCONSULTANT , P_CategoryBUSINESS_DEVELOPMENT , 
        P_CategoryADVOCATE );
   _SUM_ = 0.; 
   P_CategoryTEACHER  = EXP(P_CategoryTEACHER  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryTEACHER ;
   P_CategorySALES  = EXP(P_CategorySALES  - _MAX_);
   _SUM_ = _SUM_ + P_CategorySALES ;
   P_CategoryOTHER  = EXP(P_CategoryOTHER  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  = EXP(P_CategoryINFORMATION_TECHNOLOGY
          - _MAX_);
   _SUM_ = _SUM_ + P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  = EXP(P_CategoryHR  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryHR ;
   P_CategoryHEALTHCARE  = EXP(P_CategoryHEALTHCARE  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  = EXP(P_CategoryFITNESS  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  = EXP(P_CategoryDIGITAL_MEDIA  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  = EXP(P_CategoryDESIGNER  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  = EXP(P_CategoryCONSULTANT  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  = EXP(P_CategoryBUSINESS_DEVELOPMENT
          - _MAX_);
   _SUM_ = _SUM_ + P_CategoryBUSINESS_DEVELOPMENT ;
   P_CategoryADVOCATE  = EXP(P_CategoryADVOCATE  - _MAX_);
   _SUM_ = _SUM_ + P_CategoryADVOCATE ;
   P_CategoryTEACHER  = P_CategoryTEACHER  / _SUM_;
   P_CategorySALES  = P_CategorySALES  / _SUM_;
   P_CategoryOTHER  = P_CategoryOTHER  / _SUM_;
   P_CategoryINFORMATION_TECHNOLOGY  = P_CategoryINFORMATION_TECHNOLOGY
          / _SUM_;
   P_CategoryHR  = P_CategoryHR  / _SUM_;
   P_CategoryHEALTHCARE  = P_CategoryHEALTHCARE  / _SUM_;
   P_CategoryFITNESS  = P_CategoryFITNESS  / _SUM_;
   P_CategoryDIGITAL_MEDIA  = P_CategoryDIGITAL_MEDIA  / _SUM_;
   P_CategoryDESIGNER  = P_CategoryDESIGNER  / _SUM_;
   P_CategoryCONSULTANT  = P_CategoryCONSULTANT  / _SUM_;
   P_CategoryBUSINESS_DEVELOPMENT  = P_CategoryBUSINESS_DEVELOPMENT  / _SUM_;
   P_CategoryADVOCATE  = P_CategoryADVOCATE  / _SUM_;
END;
ELSE DO;
   P_CategoryTEACHER  = .;
   P_CategorySALES  = .;
   P_CategoryOTHER  = .;
   P_CategoryINFORMATION_TECHNOLOGY  = .;
   P_CategoryHR  = .;
   P_CategoryHEALTHCARE  = .;
   P_CategoryFITNESS  = .;
   P_CategoryDIGITAL_MEDIA  = .;
   P_CategoryDESIGNER  = .;
   P_CategoryCONSULTANT  = .;
   P_CategoryBUSINESS_DEVELOPMENT  = .;
   P_CategoryADVOCATE  = .;
END;
IF _DM_BAD EQ 1 THEN DO;
   P_CategoryTEACHER  =     0.07418397626112;
   P_CategorySALES  =      0.0860534124629;
   P_CategoryOTHER  =     0.09347181008902;
   P_CategoryINFORMATION_TECHNOLOGY  =     0.08753709198813;
   P_CategoryHR  =     0.08160237388724;
   P_CategoryHEALTHCARE  =     0.08456973293768;
   P_CategoryFITNESS  =      0.0860534124629;
   P_CategoryDIGITAL_MEDIA  =     0.06973293768545;
   P_CategoryDESIGNER  =     0.07863501483679;
   P_CategoryCONSULTANT  =     0.08456973293768;
   P_CategoryBUSINESS_DEVELOPMENT  =     0.08902077151335;
   P_CategoryADVOCATE  =     0.08456973293768;
END;
*** *************************;
*** Writing the I_Category  AND U_Category ;
*** *************************;
_MAXP_ = P_CategoryTEACHER ;
I_Category  = "TEACHER               " ;
U_Category  = "TEACHER               " ;
IF( _MAXP_ LT P_CategorySALES  ) THEN DO; 
   _MAXP_ = P_CategorySALES ;
   I_Category  = "SALES                 " ;
   U_Category  = "SALES                 " ;
END;
IF( _MAXP_ LT P_CategoryOTHER  ) THEN DO; 
   _MAXP_ = P_CategoryOTHER ;
   I_Category  = "OTHER                 " ;
   U_Category  = "OTHER                 " ;
END;
IF( _MAXP_ LT P_CategoryINFORMATION_TECHNOLOGY  ) THEN DO; 
   _MAXP_ = P_CategoryINFORMATION_TECHNOLOGY ;
   I_Category  = "INFORMATION-TECHNOLOGY" ;
   U_Category  = "INFORMATION-TECHNOLOGY" ;
END;
IF( _MAXP_ LT P_CategoryHR  ) THEN DO; 
   _MAXP_ = P_CategoryHR ;
   I_Category  = "HR                    " ;
   U_Category  = "HR                    " ;
END;
IF( _MAXP_ LT P_CategoryHEALTHCARE  ) THEN DO; 
   _MAXP_ = P_CategoryHEALTHCARE ;
   I_Category  = "HEALTHCARE            " ;
   U_Category  = "HEALTHCARE            " ;
END;
IF( _MAXP_ LT P_CategoryFITNESS  ) THEN DO; 
   _MAXP_ = P_CategoryFITNESS ;
   I_Category  = "FITNESS               " ;
   U_Category  = "FITNESS               " ;
END;
IF( _MAXP_ LT P_CategoryDIGITAL_MEDIA  ) THEN DO; 
   _MAXP_ = P_CategoryDIGITAL_MEDIA ;
   I_Category  = "DIGITAL-MEDIA         " ;
   U_Category  = "DIGITAL-MEDIA         " ;
END;
IF( _MAXP_ LT P_CategoryDESIGNER  ) THEN DO; 
   _MAXP_ = P_CategoryDESIGNER ;
   I_Category  = "DESIGNER              " ;
   U_Category  = "DESIGNER              " ;
END;
IF( _MAXP_ LT P_CategoryCONSULTANT  ) THEN DO; 
   _MAXP_ = P_CategoryCONSULTANT ;
   I_Category  = "CONSULTANT            " ;
   U_Category  = "CONSULTANT            " ;
END;
IF( _MAXP_ LT P_CategoryBUSINESS_DEVELOPMENT  ) THEN DO; 
   _MAXP_ = P_CategoryBUSINESS_DEVELOPMENT ;
   I_Category  = "BUSINESS-DEVELOPMENT  " ;
   U_Category  = "BUSINESS-DEVELOPMENT  " ;
END;
IF( _MAXP_ LT P_CategoryADVOCATE  ) THEN DO; 
   _MAXP_ = P_CategoryADVOCATE ;
   I_Category  = "ADVOCATE              " ;
   U_Category  = "ADVOCATE              " ;
END;
********************************;
*** End Scoring Code for Neural;
********************************;
