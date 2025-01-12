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
      label S_TextCluster6_SVD1 = 'Standard: TextCluster6_SVD1' ;

      label S_TextCluster6_SVD10 = 'Standard: TextCluster6_SVD10' ;

      label S_TextCluster6_SVD11 = 'Standard: TextCluster6_SVD11' ;

      label S_TextCluster6_SVD12 = 'Standard: TextCluster6_SVD12' ;

      label S_TextCluster6_SVD13 = 'Standard: TextCluster6_SVD13' ;

      label S_TextCluster6_SVD14 = 'Standard: TextCluster6_SVD14' ;

      label S_TextCluster6_SVD15 = 'Standard: TextCluster6_SVD15' ;

      label S_TextCluster6_SVD16 = 'Standard: TextCluster6_SVD16' ;

      label S_TextCluster6_SVD17 = 'Standard: TextCluster6_SVD17' ;

      label S_TextCluster6_SVD18 = 'Standard: TextCluster6_SVD18' ;

      label S_TextCluster6_SVD19 = 'Standard: TextCluster6_SVD19' ;

      label S_TextCluster6_SVD2 = 'Standard: TextCluster6_SVD2' ;

      label S_TextCluster6_SVD20 = 'Standard: TextCluster6_SVD20' ;

      label S_TextCluster6_SVD21 = 'Standard: TextCluster6_SVD21' ;

      label S_TextCluster6_SVD22 = 'Standard: TextCluster6_SVD22' ;

      label S_TextCluster6_SVD23 = 'Standard: TextCluster6_SVD23' ;

      label S_TextCluster6_SVD24 = 'Standard: TextCluster6_SVD24' ;

      label S_TextCluster6_SVD25 = 'Standard: TextCluster6_SVD25' ;

      label S_TextCluster6_SVD26 = 'Standard: TextCluster6_SVD26' ;

      label S_TextCluster6_SVD27 = 'Standard: TextCluster6_SVD27' ;

      label S_TextCluster6_SVD28 = 'Standard: TextCluster6_SVD28' ;

      label S_TextCluster6_SVD29 = 'Standard: TextCluster6_SVD29' ;

      label S_TextCluster6_SVD3 = 'Standard: TextCluster6_SVD3' ;

      label S_TextCluster6_SVD30 = 'Standard: TextCluster6_SVD30' ;

      label S_TextCluster6_SVD31 = 'Standard: TextCluster6_SVD31' ;

      label S_TextCluster6_SVD32 = 'Standard: TextCluster6_SVD32' ;

      label S_TextCluster6_SVD33 = 'Standard: TextCluster6_SVD33' ;

      label S_TextCluster6_SVD34 = 'Standard: TextCluster6_SVD34' ;

      label S_TextCluster6_SVD35 = 'Standard: TextCluster6_SVD35' ;

      label S_TextCluster6_SVD36 = 'Standard: TextCluster6_SVD36' ;

      label S_TextCluster6_SVD37 = 'Standard: TextCluster6_SVD37' ;

      label S_TextCluster6_SVD38 = 'Standard: TextCluster6_SVD38' ;

      label S_TextCluster6_SVD39 = 'Standard: TextCluster6_SVD39' ;

      label S_TextCluster6_SVD4 = 'Standard: TextCluster6_SVD4' ;

      label S_TextCluster6_SVD40 = 'Standard: TextCluster6_SVD40' ;

      label S_TextCluster6_SVD41 = 'Standard: TextCluster6_SVD41' ;

      label S_TextCluster6_SVD42 = 'Standard: TextCluster6_SVD42' ;

      label S_TextCluster6_SVD43 = 'Standard: TextCluster6_SVD43' ;

      label S_TextCluster6_SVD44 = 'Standard: TextCluster6_SVD44' ;

      label S_TextCluster6_SVD5 = 'Standard: TextCluster6_SVD5' ;

      label S_TextCluster6_SVD6 = 'Standard: TextCluster6_SVD6' ;

      label S_TextCluster6_SVD7 = 'Standard: TextCluster6_SVD7' ;

      label S_TextCluster6_SVD8 = 'Standard: TextCluster6_SVD8' ;

      label S_TextCluster6_SVD9 = 'Standard: TextCluster6_SVD9' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label I_Category = 'Into: Category' ;

      label F_Category = 'From: Category' ;

      label U_Category = 'Unnormalized Into: Category' ;

      label P_CategoryTEACHER = 'Predicted: Category=TEACHER' ;

      label R_CategoryTEACHER = 'Residual: Category=TEACHER' ;

      label P_CategorySALES = 'Predicted: Category=SALES' ;

      label R_CategorySALES = 'Residual: Category=SALES' ;

      label P_CategoryOTHER = 'Predicted: Category=OTHER' ;

      label R_CategoryOTHER = 'Residual: Category=OTHER' ;

      label P_CategoryINFORMATION_TECHNOLOGY =
'Predicted: Category=INFORMATION-TECHNOLOGY' ;

      label R_CategoryINFORMATION_TECHNOLOGY =
'Residual: Category=INFORMATION-TECHNOLOGY' ;

      label P_CategoryHR = 'Predicted: Category=HR' ;

      label R_CategoryHR = 'Residual: Category=HR' ;

      label P_CategoryHEALTHCARE = 'Predicted: Category=HEALTHCARE' ;

      label R_CategoryHEALTHCARE = 'Residual: Category=HEALTHCARE' ;

      label P_CategoryFITNESS = 'Predicted: Category=FITNESS' ;

      label R_CategoryFITNESS = 'Residual: Category=FITNESS' ;

      label P_CategoryDIGITAL_MEDIA = 'Predicted: Category=DIGITAL-MEDIA' ;

      label R_CategoryDIGITAL_MEDIA = 'Residual: Category=DIGITAL-MEDIA' ;

      label P_CategoryDESIGNER = 'Predicted: Category=DESIGNER' ;

      label R_CategoryDESIGNER = 'Residual: Category=DESIGNER' ;

      label P_CategoryCONSULTANT = 'Predicted: Category=CONSULTANT' ;

      label R_CategoryCONSULTANT = 'Residual: Category=CONSULTANT' ;

      label P_CategoryBUSINESS_DEVELOPMENT =
'Predicted: Category=BUSINESS-DEVELOPMENT' ;

      label R_CategoryBUSINESS_DEVELOPMENT =
'Residual: Category=BUSINESS-DEVELOPMENT' ;

      label P_CategoryADVOCATE = 'Predicted: Category=ADVOCATE' ;

      label R_CategoryADVOCATE = 'Residual: Category=ADVOCATE' ;

      label  _WARN_ = "Warnings";

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   TextCluster6_SVD1 ,
   TextCluster6_SVD10 ,
   TextCluster6_SVD11 ,
   TextCluster6_SVD12 ,
   TextCluster6_SVD13 ,
   TextCluster6_SVD14 ,
   TextCluster6_SVD15 ,
   TextCluster6_SVD16 ,
   TextCluster6_SVD17 ,
   TextCluster6_SVD18 ,
   TextCluster6_SVD19 ,
   TextCluster6_SVD2 ,
   TextCluster6_SVD20 ,
   TextCluster6_SVD21 ,
   TextCluster6_SVD22 ,
   TextCluster6_SVD23 ,
   TextCluster6_SVD24 ,
   TextCluster6_SVD25 ,
   TextCluster6_SVD26 ,
   TextCluster6_SVD27 ,
   TextCluster6_SVD28 ,
   TextCluster6_SVD29 ,
   TextCluster6_SVD3 ,
   TextCluster6_SVD30 ,
   TextCluster6_SVD31 ,
   TextCluster6_SVD32 ,
   TextCluster6_SVD33 ,
   TextCluster6_SVD34 ,
   TextCluster6_SVD35 ,
   TextCluster6_SVD36 ,
   TextCluster6_SVD37 ,
   TextCluster6_SVD38 ,
   TextCluster6_SVD39 ,
   TextCluster6_SVD4 ,
   TextCluster6_SVD40 ,
   TextCluster6_SVD41 ,
   TextCluster6_SVD42 ,
   TextCluster6_SVD43 ,
   TextCluster6_SVD44 ,
   TextCluster6_SVD5 ,
   TextCluster6_SVD6 ,
   TextCluster6_SVD7 ,
   TextCluster6_SVD8 ,
   TextCluster6_SVD9   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster6_SVD1  =    -4.48391530640763 +     7.94215281540153 *
        TextCluster6_SVD1 ;
   S_TextCluster6_SVD10  =    -0.10984174644481 +     6.43985271993717 *
        TextCluster6_SVD10 ;
   S_TextCluster6_SVD11  =    -0.06424968277619 +     7.11043965052911 *
        TextCluster6_SVD11 ;
   S_TextCluster6_SVD12  =      -0.129190905505 +     7.99416306622949 *
        TextCluster6_SVD12 ;
   S_TextCluster6_SVD13  =    -0.05165457393953 +     8.16964336475428 *
        TextCluster6_SVD13 ;
   S_TextCluster6_SVD14  =     0.01743543290865 +     8.18433317977152 *
        TextCluster6_SVD14 ;
   S_TextCluster6_SVD15  =    -0.03863985795669 +     8.97340795222145 *
        TextCluster6_SVD15 ;
   S_TextCluster6_SVD16  =     0.03577552946243 +     9.47869429807921 *
        TextCluster6_SVD16 ;
   S_TextCluster6_SVD17  =     0.00571432991414 +     11.4687821535202 *
        TextCluster6_SVD17 ;
   S_TextCluster6_SVD18  =    -0.02714181840764 +     8.87363895101687 *
        TextCluster6_SVD18 ;
   S_TextCluster6_SVD19  =    -0.02514953805031 +     9.81953111758938 *
        TextCluster6_SVD19 ;
   S_TextCluster6_SVD2  =      0.1842354520005 +      4.2666668357197 *
        TextCluster6_SVD2 ;
   S_TextCluster6_SVD20  =    -0.04928971663764 +     9.07978771774002 *
        TextCluster6_SVD20 ;
   S_TextCluster6_SVD21  =     0.11954264610925 +     9.85168163691044 *
        TextCluster6_SVD21 ;
   S_TextCluster6_SVD22  =     0.09391871633185 +     10.0844209913301 *
        TextCluster6_SVD22 ;
   S_TextCluster6_SVD23  =    -0.11777396975865 +      8.7793941202082 *
        TextCluster6_SVD23 ;
   S_TextCluster6_SVD24  =     0.02557693877455 +     11.2778215369426 *
        TextCluster6_SVD24 ;
   S_TextCluster6_SVD25  =    -0.03489119874792 +      10.721895875802 *
        TextCluster6_SVD25 ;
   S_TextCluster6_SVD26  =    -0.03140528194884 +     9.89371440440188 *
        TextCluster6_SVD26 ;
   S_TextCluster6_SVD27  =      0.0841977445377 +     10.4036096797803 *
        TextCluster6_SVD27 ;
   S_TextCluster6_SVD28  =     -0.0232452548229 +     10.6641379366024 *
        TextCluster6_SVD28 ;
   S_TextCluster6_SVD29  =     0.05089930075308 +     11.5909019740941 *
        TextCluster6_SVD29 ;
   S_TextCluster6_SVD3  =     0.02540508906878 +     4.43467912996027 *
        TextCluster6_SVD3 ;
   S_TextCluster6_SVD30  =     0.12069053121418 +     9.93892985852358 *
        TextCluster6_SVD30 ;
   S_TextCluster6_SVD31  =     0.02646280206763 +     11.3340643729279 *
        TextCluster6_SVD31 ;
   S_TextCluster6_SVD32  =    -0.11543572786568 +     11.0222746565468 *
        TextCluster6_SVD32 ;
   S_TextCluster6_SVD33  =    -0.04345793231713 +     11.7506125841455 *
        TextCluster6_SVD33 ;
   S_TextCluster6_SVD34  =     -0.1573121309487 +     10.6909884041161 *
        TextCluster6_SVD34 ;
   S_TextCluster6_SVD35  =     -0.0363227431957 +     10.9536338245828 *
        TextCluster6_SVD35 ;
   S_TextCluster6_SVD36  =    -0.01879658184913 +     10.3594557967973 *
        TextCluster6_SVD36 ;
   S_TextCluster6_SVD37  =    -0.03866308955186 +     10.7800408261287 *
        TextCluster6_SVD37 ;
   S_TextCluster6_SVD38  =     0.00147339847356 +     11.0815502249765 *
        TextCluster6_SVD38 ;
   S_TextCluster6_SVD39  =    -0.01706757705748 +     10.7827126736748 *
        TextCluster6_SVD39 ;
   S_TextCluster6_SVD4  =    -0.14731861998887 +     4.73082367864578 *
        TextCluster6_SVD4 ;
   S_TextCluster6_SVD40  =     0.16704183759822 +      10.684385606541 *
        TextCluster6_SVD40 ;
   S_TextCluster6_SVD41  =     -0.0289890688684 +     11.4793672728048 *
        TextCluster6_SVD41 ;
   S_TextCluster6_SVD42  =    -0.03128508022553 +     10.9451748579511 *
        TextCluster6_SVD42 ;
   S_TextCluster6_SVD43  =    -0.16475480491169 +     11.0627222028557 *
        TextCluster6_SVD43 ;
   S_TextCluster6_SVD44  =    -0.00970646163834 +     11.9099511186151 *
        TextCluster6_SVD44 ;
   S_TextCluster6_SVD5  =    -0.09653850386424 +     4.82619811238731 *
        TextCluster6_SVD5 ;
   S_TextCluster6_SVD6  =    -0.00508434476111 +     6.52332257748182 *
        TextCluster6_SVD6 ;
   S_TextCluster6_SVD7  =     -0.0332136858475 +       5.783972557778 *
        TextCluster6_SVD7 ;
   S_TextCluster6_SVD8  =     0.09273835100558 +     6.22302159578381 *
        TextCluster6_SVD8 ;
   S_TextCluster6_SVD9  =     -0.0464352057307 +     7.02857726476677 *
        TextCluster6_SVD9 ;
END;
ELSE DO;
   IF MISSING( TextCluster6_SVD1 ) THEN S_TextCluster6_SVD1  = . ;
   ELSE S_TextCluster6_SVD1  =    -4.48391530640763 +     7.94215281540153 *
        TextCluster6_SVD1 ;
   IF MISSING( TextCluster6_SVD10 ) THEN S_TextCluster6_SVD10  = . ;
   ELSE S_TextCluster6_SVD10  =    -0.10984174644481 +     6.43985271993717 *
        TextCluster6_SVD10 ;
   IF MISSING( TextCluster6_SVD11 ) THEN S_TextCluster6_SVD11  = . ;
   ELSE S_TextCluster6_SVD11  =    -0.06424968277619 +     7.11043965052911 *
        TextCluster6_SVD11 ;
   IF MISSING( TextCluster6_SVD12 ) THEN S_TextCluster6_SVD12  = . ;
   ELSE S_TextCluster6_SVD12  =      -0.129190905505 +     7.99416306622949 *
        TextCluster6_SVD12 ;
   IF MISSING( TextCluster6_SVD13 ) THEN S_TextCluster6_SVD13  = . ;
   ELSE S_TextCluster6_SVD13  =    -0.05165457393953 +     8.16964336475428 *
        TextCluster6_SVD13 ;
   IF MISSING( TextCluster6_SVD14 ) THEN S_TextCluster6_SVD14  = . ;
   ELSE S_TextCluster6_SVD14  =     0.01743543290865 +     8.18433317977152 *
        TextCluster6_SVD14 ;
   IF MISSING( TextCluster6_SVD15 ) THEN S_TextCluster6_SVD15  = . ;
   ELSE S_TextCluster6_SVD15  =    -0.03863985795669 +     8.97340795222145 *
        TextCluster6_SVD15 ;
   IF MISSING( TextCluster6_SVD16 ) THEN S_TextCluster6_SVD16  = . ;
   ELSE S_TextCluster6_SVD16  =     0.03577552946243 +     9.47869429807921 *
        TextCluster6_SVD16 ;
   IF MISSING( TextCluster6_SVD17 ) THEN S_TextCluster6_SVD17  = . ;
   ELSE S_TextCluster6_SVD17  =     0.00571432991414 +     11.4687821535202 *
        TextCluster6_SVD17 ;
   IF MISSING( TextCluster6_SVD18 ) THEN S_TextCluster6_SVD18  = . ;
   ELSE S_TextCluster6_SVD18  =    -0.02714181840764 +     8.87363895101687 *
        TextCluster6_SVD18 ;
   IF MISSING( TextCluster6_SVD19 ) THEN S_TextCluster6_SVD19  = . ;
   ELSE S_TextCluster6_SVD19  =    -0.02514953805031 +     9.81953111758938 *
        TextCluster6_SVD19 ;
   IF MISSING( TextCluster6_SVD2 ) THEN S_TextCluster6_SVD2  = . ;
   ELSE S_TextCluster6_SVD2  =      0.1842354520005 +      4.2666668357197 *
        TextCluster6_SVD2 ;
   IF MISSING( TextCluster6_SVD20 ) THEN S_TextCluster6_SVD20  = . ;
   ELSE S_TextCluster6_SVD20  =    -0.04928971663764 +     9.07978771774002 *
        TextCluster6_SVD20 ;
   IF MISSING( TextCluster6_SVD21 ) THEN S_TextCluster6_SVD21  = . ;
   ELSE S_TextCluster6_SVD21  =     0.11954264610925 +     9.85168163691044 *
        TextCluster6_SVD21 ;
   IF MISSING( TextCluster6_SVD22 ) THEN S_TextCluster6_SVD22  = . ;
   ELSE S_TextCluster6_SVD22  =     0.09391871633185 +     10.0844209913301 *
        TextCluster6_SVD22 ;
   IF MISSING( TextCluster6_SVD23 ) THEN S_TextCluster6_SVD23  = . ;
   ELSE S_TextCluster6_SVD23  =    -0.11777396975865 +      8.7793941202082 *
        TextCluster6_SVD23 ;
   IF MISSING( TextCluster6_SVD24 ) THEN S_TextCluster6_SVD24  = . ;
   ELSE S_TextCluster6_SVD24  =     0.02557693877455 +     11.2778215369426 *
        TextCluster6_SVD24 ;
   IF MISSING( TextCluster6_SVD25 ) THEN S_TextCluster6_SVD25  = . ;
   ELSE S_TextCluster6_SVD25  =    -0.03489119874792 +      10.721895875802 *
        TextCluster6_SVD25 ;
   IF MISSING( TextCluster6_SVD26 ) THEN S_TextCluster6_SVD26  = . ;
   ELSE S_TextCluster6_SVD26  =    -0.03140528194884 +     9.89371440440188 *
        TextCluster6_SVD26 ;
   IF MISSING( TextCluster6_SVD27 ) THEN S_TextCluster6_SVD27  = . ;
   ELSE S_TextCluster6_SVD27  =      0.0841977445377 +     10.4036096797803 *
        TextCluster6_SVD27 ;
   IF MISSING( TextCluster6_SVD28 ) THEN S_TextCluster6_SVD28  = . ;
   ELSE S_TextCluster6_SVD28  =     -0.0232452548229 +     10.6641379366024 *
        TextCluster6_SVD28 ;
   IF MISSING( TextCluster6_SVD29 ) THEN S_TextCluster6_SVD29  = . ;
   ELSE S_TextCluster6_SVD29  =     0.05089930075308 +     11.5909019740941 *
        TextCluster6_SVD29 ;
   IF MISSING( TextCluster6_SVD3 ) THEN S_TextCluster6_SVD3  = . ;
   ELSE S_TextCluster6_SVD3  =     0.02540508906878 +     4.43467912996027 *
        TextCluster6_SVD3 ;
   IF MISSING( TextCluster6_SVD30 ) THEN S_TextCluster6_SVD30  = . ;
   ELSE S_TextCluster6_SVD30  =     0.12069053121418 +     9.93892985852358 *
        TextCluster6_SVD30 ;
   IF MISSING( TextCluster6_SVD31 ) THEN S_TextCluster6_SVD31  = . ;
   ELSE S_TextCluster6_SVD31  =     0.02646280206763 +     11.3340643729279 *
        TextCluster6_SVD31 ;
   IF MISSING( TextCluster6_SVD32 ) THEN S_TextCluster6_SVD32  = . ;
   ELSE S_TextCluster6_SVD32  =    -0.11543572786568 +     11.0222746565468 *
        TextCluster6_SVD32 ;
   IF MISSING( TextCluster6_SVD33 ) THEN S_TextCluster6_SVD33  = . ;
   ELSE S_TextCluster6_SVD33  =    -0.04345793231713 +     11.7506125841455 *
        TextCluster6_SVD33 ;
   IF MISSING( TextCluster6_SVD34 ) THEN S_TextCluster6_SVD34  = . ;
   ELSE S_TextCluster6_SVD34  =     -0.1573121309487 +     10.6909884041161 *
        TextCluster6_SVD34 ;
   IF MISSING( TextCluster6_SVD35 ) THEN S_TextCluster6_SVD35  = . ;
   ELSE S_TextCluster6_SVD35  =     -0.0363227431957 +     10.9536338245828 *
        TextCluster6_SVD35 ;
   IF MISSING( TextCluster6_SVD36 ) THEN S_TextCluster6_SVD36  = . ;
   ELSE S_TextCluster6_SVD36  =    -0.01879658184913 +     10.3594557967973 *
        TextCluster6_SVD36 ;
   IF MISSING( TextCluster6_SVD37 ) THEN S_TextCluster6_SVD37  = . ;
   ELSE S_TextCluster6_SVD37  =    -0.03866308955186 +     10.7800408261287 *
        TextCluster6_SVD37 ;
   IF MISSING( TextCluster6_SVD38 ) THEN S_TextCluster6_SVD38  = . ;
   ELSE S_TextCluster6_SVD38  =     0.00147339847356 +     11.0815502249765 *
        TextCluster6_SVD38 ;
   IF MISSING( TextCluster6_SVD39 ) THEN S_TextCluster6_SVD39  = . ;
   ELSE S_TextCluster6_SVD39  =    -0.01706757705748 +     10.7827126736748 *
        TextCluster6_SVD39 ;
   IF MISSING( TextCluster6_SVD4 ) THEN S_TextCluster6_SVD4  = . ;
   ELSE S_TextCluster6_SVD4  =    -0.14731861998887 +     4.73082367864578 *
        TextCluster6_SVD4 ;
   IF MISSING( TextCluster6_SVD40 ) THEN S_TextCluster6_SVD40  = . ;
   ELSE S_TextCluster6_SVD40  =     0.16704183759822 +      10.684385606541 *
        TextCluster6_SVD40 ;
   IF MISSING( TextCluster6_SVD41 ) THEN S_TextCluster6_SVD41  = . ;
   ELSE S_TextCluster6_SVD41  =     -0.0289890688684 +     11.4793672728048 *
        TextCluster6_SVD41 ;
   IF MISSING( TextCluster6_SVD42 ) THEN S_TextCluster6_SVD42  = . ;
   ELSE S_TextCluster6_SVD42  =    -0.03128508022553 +     10.9451748579511 *
        TextCluster6_SVD42 ;
   IF MISSING( TextCluster6_SVD43 ) THEN S_TextCluster6_SVD43  = . ;
   ELSE S_TextCluster6_SVD43  =    -0.16475480491169 +     11.0627222028557 *
        TextCluster6_SVD43 ;
   IF MISSING( TextCluster6_SVD44 ) THEN S_TextCluster6_SVD44  = . ;
   ELSE S_TextCluster6_SVD44  =    -0.00970646163834 +     11.9099511186151 *
        TextCluster6_SVD44 ;
   IF MISSING( TextCluster6_SVD5 ) THEN S_TextCluster6_SVD5  = . ;
   ELSE S_TextCluster6_SVD5  =    -0.09653850386424 +     4.82619811238731 *
        TextCluster6_SVD5 ;
   IF MISSING( TextCluster6_SVD6 ) THEN S_TextCluster6_SVD6  = . ;
   ELSE S_TextCluster6_SVD6  =    -0.00508434476111 +     6.52332257748182 *
        TextCluster6_SVD6 ;
   IF MISSING( TextCluster6_SVD7 ) THEN S_TextCluster6_SVD7  = . ;
   ELSE S_TextCluster6_SVD7  =     -0.0332136858475 +       5.783972557778 *
        TextCluster6_SVD7 ;
   IF MISSING( TextCluster6_SVD8 ) THEN S_TextCluster6_SVD8  = . ;
   ELSE S_TextCluster6_SVD8  =     0.09273835100558 +     6.22302159578381 *
        TextCluster6_SVD8 ;
   IF MISSING( TextCluster6_SVD9 ) THEN S_TextCluster6_SVD9  = . ;
   ELSE S_TextCluster6_SVD9  =     -0.0464352057307 +     7.02857726476677 *
        TextCluster6_SVD9 ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =    -0.01858448851402 * S_TextCluster6_SVD1
          +    -0.20338580216374 * S_TextCluster6_SVD10
          +    -0.74241904872207 * S_TextCluster6_SVD11
          +     0.32850573865573 * S_TextCluster6_SVD12
          +     0.17563008096253 * S_TextCluster6_SVD13
          +    -0.22750313376407 * S_TextCluster6_SVD14
          +     0.02518444092248 * S_TextCluster6_SVD15
          +    -0.22914255172871 * S_TextCluster6_SVD16
          +     0.08608615219738 * S_TextCluster6_SVD17
          +    -0.04224799037866 * S_TextCluster6_SVD18
          +    -0.08569226512149 * S_TextCluster6_SVD19
          +     0.22971511705921 * S_TextCluster6_SVD2
          +     0.23965628354235 * S_TextCluster6_SVD20
          +     0.15326434662673 * S_TextCluster6_SVD21
          +     0.08617320131267 * S_TextCluster6_SVD22
          +     -0.2818222144337 * S_TextCluster6_SVD23
          +    -0.13053157106297 * S_TextCluster6_SVD24
          +     -0.0197582289615 * S_TextCluster6_SVD25
          +    -0.03547535000284 * S_TextCluster6_SVD26
          +     -0.0255173952935 * S_TextCluster6_SVD27
          +    -0.11502396099224 * S_TextCluster6_SVD28
          +     0.17224223853025 * S_TextCluster6_SVD29
          +    -0.52968538725217 * S_TextCluster6_SVD3
          +    -0.00237263119119 * S_TextCluster6_SVD30
          +     0.09405426834476 * S_TextCluster6_SVD31
          +     0.08677343477644 * S_TextCluster6_SVD32
          +     0.10483782611789 * S_TextCluster6_SVD33
          +     0.06574934069818 * S_TextCluster6_SVD34
          +    -0.02223955759707 * S_TextCluster6_SVD35
          +    -0.16732871956224 * S_TextCluster6_SVD36
          +     0.26249272518552 * S_TextCluster6_SVD37
          +     0.11888546756209 * S_TextCluster6_SVD38
          +    -0.02477040906225 * S_TextCluster6_SVD39
          +    -0.43391204161151 * S_TextCluster6_SVD4
          +    -0.20350327046826 * S_TextCluster6_SVD40
          +    -0.10130185293437 * S_TextCluster6_SVD41
          +    -0.01254396637166 * S_TextCluster6_SVD42
          +    -0.14517761190702 * S_TextCluster6_SVD43
          +     0.01095232031147 * S_TextCluster6_SVD44
          +    -0.90966404789909 * S_TextCluster6_SVD5
          +    -0.07325224196207 * S_TextCluster6_SVD6
          +     0.16384196546577 * S_TextCluster6_SVD7
          +    -0.03795779840256 * S_TextCluster6_SVD8
          +     0.08971599816584 * S_TextCluster6_SVD9 ;
   H12  =    -0.06188034498991 * S_TextCluster6_SVD1
          +     0.13998463346362 * S_TextCluster6_SVD10
          +    -0.60750126904166 * S_TextCluster6_SVD11
          +     0.14199386329121 * S_TextCluster6_SVD12
          +      0.0525938200835 * S_TextCluster6_SVD13
          +    -0.33378693436201 * S_TextCluster6_SVD14
          +     0.24320926703988 * S_TextCluster6_SVD15
          +    -0.09191250232548 * S_TextCluster6_SVD16
          +     -0.0667335345963 * S_TextCluster6_SVD17
          +    -0.10462121339671 * S_TextCluster6_SVD18
          +     0.12529221687264 * S_TextCluster6_SVD19
          +    -0.69373262579526 * S_TextCluster6_SVD2
          +    -0.29185257900937 * S_TextCluster6_SVD20
          +    -0.02890587970293 * S_TextCluster6_SVD21
          +    -0.14466720431458 * S_TextCluster6_SVD22
          +      0.0286255238971 * S_TextCluster6_SVD23
          +    -0.29091487442356 * S_TextCluster6_SVD24
          +     0.05521579024251 * S_TextCluster6_SVD25
          +     0.11773081831775 * S_TextCluster6_SVD26
          +    -0.01648100272581 * S_TextCluster6_SVD27
          +    -0.10963402081704 * S_TextCluster6_SVD28
          +    -0.38647180821502 * S_TextCluster6_SVD29
          +     0.37044760339552 * S_TextCluster6_SVD3
          +     0.01206349081076 * S_TextCluster6_SVD30
          +    -0.14303474376935 * S_TextCluster6_SVD31
          +    -0.06674128849379 * S_TextCluster6_SVD32
          +    -0.17813134846049 * S_TextCluster6_SVD33
          +     0.22156293156073 * S_TextCluster6_SVD34
          +     0.09969101391322 * S_TextCluster6_SVD35
          +     0.25001928955338 * S_TextCluster6_SVD36
          +    -0.01488219559741 * S_TextCluster6_SVD37
          +    -0.10641956837224 * S_TextCluster6_SVD38
          +     0.26033740728538 * S_TextCluster6_SVD39
          +    -0.05216321249891 * S_TextCluster6_SVD4
          +     0.03163499795834 * S_TextCluster6_SVD40
          +     0.07263415348153 * S_TextCluster6_SVD41
          +    -0.01338147729826 * S_TextCluster6_SVD42
          +     0.15136088623392 * S_TextCluster6_SVD43
          +    -0.04426672945679 * S_TextCluster6_SVD44
          +     0.06375149501557 * S_TextCluster6_SVD5
          +    -0.45542235942497 * S_TextCluster6_SVD6
          +     0.95818633630434 * S_TextCluster6_SVD7
          +    -0.54904923858014 * S_TextCluster6_SVD8
          +     0.06828367825934 * S_TextCluster6_SVD9 ;
   H13  =    -0.59180653676823 * S_TextCluster6_SVD1
          +      0.6306242362577 * S_TextCluster6_SVD10
          +     0.55564105953681 * S_TextCluster6_SVD11
          +    -0.81893837301576 * S_TextCluster6_SVD12
          +    -0.07339826820522 * S_TextCluster6_SVD13
          +     0.33620270366517 * S_TextCluster6_SVD14
          +     0.97089106507631 * S_TextCluster6_SVD15
          +     0.37172397509624 * S_TextCluster6_SVD16
          +    -0.14522612656784 * S_TextCluster6_SVD17
          +     0.25614648307101 * S_TextCluster6_SVD18
          +     0.00054493228622 * S_TextCluster6_SVD19
          +      1.1380475484256 * S_TextCluster6_SVD2
          +     0.44888583912402 * S_TextCluster6_SVD20
          +     0.13472881157973 * S_TextCluster6_SVD21
          +     0.13901019989721 * S_TextCluster6_SVD22
          +    -0.35573558204718 * S_TextCluster6_SVD23
          +     0.20168359199766 * S_TextCluster6_SVD24
          +    -0.13486141689512 * S_TextCluster6_SVD25
          +    -0.14352618173943 * S_TextCluster6_SVD26
          +    -0.09412206578505 * S_TextCluster6_SVD27
          +    -0.27589665847604 * S_TextCluster6_SVD28
          +    -0.04170124104975 * S_TextCluster6_SVD29
          +    -0.52241655854325 * S_TextCluster6_SVD3
          +      0.3345752238981 * S_TextCluster6_SVD30
          +    -0.03533500705342 * S_TextCluster6_SVD31
          +     0.00991413307123 * S_TextCluster6_SVD32
          +     0.05263674626862 * S_TextCluster6_SVD33
          +      -0.153940594636 * S_TextCluster6_SVD34
          +     0.05196321765868 * S_TextCluster6_SVD35
          +    -0.15253191986683 * S_TextCluster6_SVD36
          +     -0.0525007917739 * S_TextCluster6_SVD37
          +    -0.04069535357649 * S_TextCluster6_SVD38
          +    -0.28671113131143 * S_TextCluster6_SVD39
          +      1.9289628901054 * S_TextCluster6_SVD4
          +    -0.12436905904789 * S_TextCluster6_SVD40
          +      0.1765078273057 * S_TextCluster6_SVD41
          +    -0.09725727212738 * S_TextCluster6_SVD42
          +     0.10077973336877 * S_TextCluster6_SVD43
          +     0.13742694595306 * S_TextCluster6_SVD44
          +    -1.07300583159087 * S_TextCluster6_SVD5
          +     0.10629804724771 * S_TextCluster6_SVD6
          +     0.51783259792829 * S_TextCluster6_SVD7
          +     -0.2310388488392 * S_TextCluster6_SVD8
          +    -0.09582769985494 * S_TextCluster6_SVD9 ;
   H11  =     0.02231492849779 + H11 ;
   H12  =     0.18761113656434 + H12 ;
   H13  =    -0.50456568759707 + H13 ;
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
drop CategoryTEACHER CategorySALES CategoryOTHER
        CategoryINFORMATION_TECHNOLOGY CategoryHR CategoryHEALTHCARE
        CategoryFITNESS CategoryDIGITAL_MEDIA CategoryDESIGNER
        CategoryCONSULTANT CategoryBUSINESS_DEVELOPMENT CategoryADVOCATE ;
label F_Category = 'From: Category' ;
length F_Category $ 22;
F_Category = put( Category , $22. );
%DMNORMIP( F_Category )
*** encoding is sparse, initialize to zero;
CategoryTEACHER = 0;
CategorySALES = 0;
CategoryOTHER = 0;
CategoryINFORMATION_TECHNOLOGY = 0;
CategoryHR = 0;
CategoryHEALTHCARE = 0;
CategoryFITNESS = 0;
CategoryDIGITAL_MEDIA = 0;
CategoryDESIGNER = 0;
CategoryCONSULTANT = 0;
CategoryBUSINESS_DEVELOPMENT = 0;
CategoryADVOCATE = 0;
if missing( Category ) then do;
   CategoryTEACHER = .;
   CategorySALES = .;
   CategoryOTHER = .;
   CategoryINFORMATION_TECHNOLOGY = .;
   CategoryHR = .;
   CategoryHEALTHCARE = .;
   CategoryFITNESS = .;
   CategoryDIGITAL_MEDIA = .;
   CategoryDESIGNER = .;
   CategoryCONSULTANT = .;
   CategoryBUSINESS_DEVELOPMENT = .;
   CategoryADVOCATE = .;
end;
else do;
   _dm_find = 0; drop _dm_find;
   if F_Category <= 'FITNESS'  then do;
      if F_Category <= 'CONSULTANT'  then do;
         if F_Category <= 'BUSINESS-DEVELOPMENT'  then do;
            if F_Category = 'ADVOCATE'  then do;
               CategoryADVOCATE = 1;
               _dm_find = 1;
            end;
            else do;
               if F_Category = 'BUSINESS-DEVELOPMENT'  then do;
                  CategoryBUSINESS_DEVELOPMENT = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if F_Category = 'CONSULTANT'  then do;
               CategoryCONSULTANT = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if F_Category <= 'DIGITAL-MEDIA'  then do;
            if F_Category = 'DESIGNER'  then do;
               CategoryDESIGNER = 1;
               _dm_find = 1;
            end;
            else do;
               if F_Category = 'DIGITAL-MEDIA'  then do;
                  CategoryDIGITAL_MEDIA = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if F_Category = 'FITNESS'  then do;
               CategoryFITNESS = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if F_Category <= 'INFORMATION-TECHNOLOGY'  then do;
         if F_Category <= 'HR'  then do;
            if F_Category = 'HEALTHCARE'  then do;
               CategoryHEALTHCARE = 1;
               _dm_find = 1;
            end;
            else do;
               if F_Category = 'HR'  then do;
                  CategoryHR = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if F_Category = 'INFORMATION-TECHNOLOGY'  then do;
               CategoryINFORMATION_TECHNOLOGY = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if F_Category <= 'SALES'  then do;
            if F_Category = 'OTHER'  then do;
               CategoryOTHER = 1;
               _dm_find = 1;
            end;
            else do;
               if F_Category = 'SALES'  then do;
                  CategorySALES = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if F_Category = 'TEACHER'  then do;
               CategoryTEACHER = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      CategoryTEACHER = .;
      CategorySALES = .;
      CategoryOTHER = .;
      CategoryINFORMATION_TECHNOLOGY = .;
      CategoryHR = .;
      CategoryHEALTHCARE = .;
      CategoryFITNESS = .;
      CategoryDIGITAL_MEDIA = .;
      CategoryDESIGNER = .;
      CategoryCONSULTANT = .;
      CategoryBUSINESS_DEVELOPMENT = .;
      CategoryADVOCATE = .;
   end;
end;
IF _DM_BAD EQ 0 THEN DO;
   P_CategoryTEACHER  =     1.87110567514126 * H11  +     0.97906654659832 *
        H12  +     2.57882308262198 * H13 ;
   P_CategorySALES  =    -2.25796417686184 * H11  +    -0.31084416817484 * H12
          +    -0.82237238807348 * H13 ;
   P_CategoryOTHER  =    -0.28086183246827 * H11  +      0.1166456632183 * H12
          +     0.80176606363165 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =     0.75901125421963 * H11
          +    -2.37583066717903 * H12  +     2.30648221938953 * H13 ;
   P_CategoryHR  =     2.56533029154051 * H11  +     1.89956795629647 * H12
          +    -1.23073476633383 * H13 ;
   P_CategoryHEALTHCARE  =     1.55768381354398 * H11
          +    -2.14187790741967 * H12  +    -1.22364202378968 * H13 ;
   P_CategoryFITNESS  =    -3.44826516889628 * H11  +    -2.21130286947435 *
        H12  +     1.37086869531103 * H13 ;
   P_CategoryDIGITAL_MEDIA  =    -1.89593269628513 * H11
          +      1.4543675052438 * H12  +     2.60250661912834 * H13 ;
   P_CategoryDESIGNER  =     1.32661442387119 * H11  +     3.18421191092809 *
        H12  +      2.7412753646913 * H13 ;
   P_CategoryCONSULTANT  =    -0.22196191220118 * H11
          +    -1.20911952685176 * H12  +     0.56406023163726 * H13 ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -1.21260010424536 * H11
          +    -2.54514719413703 * H12  +    -1.56014519873417 * H13 ;
   P_CategoryTEACHER  =    -0.89067891245566 + P_CategoryTEACHER ;
   P_CategorySALES  =    -1.07343227425055 + P_CategorySALES ;
   P_CategoryOTHER  =     0.90777066805814 + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -1.02582562010333 +
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =    -2.74484887337897 + P_CategoryHR ;
   P_CategoryHEALTHCARE  =    -0.97664000855775 + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  =    -0.85365667059794 + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  =    -0.85905314237384 + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  =    -1.95494472170236 + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  =     0.81910703194529 + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -1.09558437245567 +
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
*** *****************************;
*** Writing the Residuals  of the Node Category ;
*** ******************************;
IF MISSING( CategoryTEACHER ) THEN R_CategoryTEACHER  = . ;
ELSE R_CategoryTEACHER  = CategoryTEACHER  - P_CategoryTEACHER ;
IF MISSING( CategorySALES ) THEN R_CategorySALES  = . ;
ELSE R_CategorySALES  = CategorySALES  - P_CategorySALES ;
IF MISSING( CategoryOTHER ) THEN R_CategoryOTHER  = . ;
ELSE R_CategoryOTHER  = CategoryOTHER  - P_CategoryOTHER ;
IF MISSING( CategoryINFORMATION_TECHNOLOGY ) THEN
        R_CategoryINFORMATION_TECHNOLOGY  = . ;
ELSE R_CategoryINFORMATION_TECHNOLOGY  = CategoryINFORMATION_TECHNOLOGY  -
        P_CategoryINFORMATION_TECHNOLOGY ;
IF MISSING( CategoryHR ) THEN R_CategoryHR  = . ;
ELSE R_CategoryHR  = CategoryHR  - P_CategoryHR ;
IF MISSING( CategoryHEALTHCARE ) THEN R_CategoryHEALTHCARE  = . ;
ELSE R_CategoryHEALTHCARE  = CategoryHEALTHCARE  - P_CategoryHEALTHCARE ;
IF MISSING( CategoryFITNESS ) THEN R_CategoryFITNESS  = . ;
ELSE R_CategoryFITNESS  = CategoryFITNESS  - P_CategoryFITNESS ;
IF MISSING( CategoryDIGITAL_MEDIA ) THEN R_CategoryDIGITAL_MEDIA  = . ;
ELSE R_CategoryDIGITAL_MEDIA  = CategoryDIGITAL_MEDIA  -
        P_CategoryDIGITAL_MEDIA ;
IF MISSING( CategoryDESIGNER ) THEN R_CategoryDESIGNER  = . ;
ELSE R_CategoryDESIGNER  = CategoryDESIGNER  - P_CategoryDESIGNER ;
IF MISSING( CategoryCONSULTANT ) THEN R_CategoryCONSULTANT  = . ;
ELSE R_CategoryCONSULTANT  = CategoryCONSULTANT  - P_CategoryCONSULTANT ;
IF MISSING( CategoryBUSINESS_DEVELOPMENT ) THEN R_CategoryBUSINESS_DEVELOPMENT
          = . ;
ELSE R_CategoryBUSINESS_DEVELOPMENT  = CategoryBUSINESS_DEVELOPMENT  -
        P_CategoryBUSINESS_DEVELOPMENT ;
IF MISSING( CategoryADVOCATE ) THEN R_CategoryADVOCATE  = . ;
ELSE R_CategoryADVOCATE  = CategoryADVOCATE  - P_CategoryADVOCATE ;
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
drop
S_TextCluster6_SVD1
S_TextCluster6_SVD10
S_TextCluster6_SVD11
S_TextCluster6_SVD12
S_TextCluster6_SVD13
S_TextCluster6_SVD14
S_TextCluster6_SVD15
S_TextCluster6_SVD16
S_TextCluster6_SVD17
S_TextCluster6_SVD18
S_TextCluster6_SVD19
S_TextCluster6_SVD2
S_TextCluster6_SVD20
S_TextCluster6_SVD21
S_TextCluster6_SVD22
S_TextCluster6_SVD23
S_TextCluster6_SVD24
S_TextCluster6_SVD25
S_TextCluster6_SVD26
S_TextCluster6_SVD27
S_TextCluster6_SVD28
S_TextCluster6_SVD29
S_TextCluster6_SVD3
S_TextCluster6_SVD30
S_TextCluster6_SVD31
S_TextCluster6_SVD32
S_TextCluster6_SVD33
S_TextCluster6_SVD34
S_TextCluster6_SVD35
S_TextCluster6_SVD36
S_TextCluster6_SVD37
S_TextCluster6_SVD38
S_TextCluster6_SVD39
S_TextCluster6_SVD4
S_TextCluster6_SVD40
S_TextCluster6_SVD41
S_TextCluster6_SVD42
S_TextCluster6_SVD43
S_TextCluster6_SVD44
S_TextCluster6_SVD5
S_TextCluster6_SVD6
S_TextCluster6_SVD7
S_TextCluster6_SVD8
S_TextCluster6_SVD9
H11
H12
H13
;
