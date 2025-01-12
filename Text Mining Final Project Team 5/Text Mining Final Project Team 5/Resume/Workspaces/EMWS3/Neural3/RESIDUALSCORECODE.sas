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
      label S_TextCluster10_SVD1 = 'Standard: TextCluster10_SVD1' ;

      label S_TextCluster10_SVD10 = 'Standard: TextCluster10_SVD10' ;

      label S_TextCluster10_SVD11 = 'Standard: TextCluster10_SVD11' ;

      label S_TextCluster10_SVD12 = 'Standard: TextCluster10_SVD12' ;

      label S_TextCluster10_SVD13 = 'Standard: TextCluster10_SVD13' ;

      label S_TextCluster10_SVD14 = 'Standard: TextCluster10_SVD14' ;

      label S_TextCluster10_SVD15 = 'Standard: TextCluster10_SVD15' ;

      label S_TextCluster10_SVD16 = 'Standard: TextCluster10_SVD16' ;

      label S_TextCluster10_SVD17 = 'Standard: TextCluster10_SVD17' ;

      label S_TextCluster10_SVD18 = 'Standard: TextCluster10_SVD18' ;

      label S_TextCluster10_SVD19 = 'Standard: TextCluster10_SVD19' ;

      label S_TextCluster10_SVD2 = 'Standard: TextCluster10_SVD2' ;

      label S_TextCluster10_SVD20 = 'Standard: TextCluster10_SVD20' ;

      label S_TextCluster10_SVD21 = 'Standard: TextCluster10_SVD21' ;

      label S_TextCluster10_SVD22 = 'Standard: TextCluster10_SVD22' ;

      label S_TextCluster10_SVD23 = 'Standard: TextCluster10_SVD23' ;

      label S_TextCluster10_SVD24 = 'Standard: TextCluster10_SVD24' ;

      label S_TextCluster10_SVD25 = 'Standard: TextCluster10_SVD25' ;

      label S_TextCluster10_SVD26 = 'Standard: TextCluster10_SVD26' ;

      label S_TextCluster10_SVD27 = 'Standard: TextCluster10_SVD27' ;

      label S_TextCluster10_SVD28 = 'Standard: TextCluster10_SVD28' ;

      label S_TextCluster10_SVD29 = 'Standard: TextCluster10_SVD29' ;

      label S_TextCluster10_SVD3 = 'Standard: TextCluster10_SVD3' ;

      label S_TextCluster10_SVD30 = 'Standard: TextCluster10_SVD30' ;

      label S_TextCluster10_SVD31 = 'Standard: TextCluster10_SVD31' ;

      label S_TextCluster10_SVD32 = 'Standard: TextCluster10_SVD32' ;

      label S_TextCluster10_SVD33 = 'Standard: TextCluster10_SVD33' ;

      label S_TextCluster10_SVD34 = 'Standard: TextCluster10_SVD34' ;

      label S_TextCluster10_SVD35 = 'Standard: TextCluster10_SVD35' ;

      label S_TextCluster10_SVD36 = 'Standard: TextCluster10_SVD36' ;

      label S_TextCluster10_SVD37 = 'Standard: TextCluster10_SVD37' ;

      label S_TextCluster10_SVD38 = 'Standard: TextCluster10_SVD38' ;

      label S_TextCluster10_SVD39 = 'Standard: TextCluster10_SVD39' ;

      label S_TextCluster10_SVD4 = 'Standard: TextCluster10_SVD4' ;

      label S_TextCluster10_SVD40 = 'Standard: TextCluster10_SVD40' ;

      label S_TextCluster10_SVD41 = 'Standard: TextCluster10_SVD41' ;

      label S_TextCluster10_SVD42 = 'Standard: TextCluster10_SVD42' ;

      label S_TextCluster10_SVD5 = 'Standard: TextCluster10_SVD5' ;

      label S_TextCluster10_SVD6 = 'Standard: TextCluster10_SVD6' ;

      label S_TextCluster10_SVD7 = 'Standard: TextCluster10_SVD7' ;

      label S_TextCluster10_SVD8 = 'Standard: TextCluster10_SVD8' ;

      label S_TextCluster10_SVD9 = 'Standard: TextCluster10_SVD9' ;

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
   TextCluster10_SVD1 , 
   TextCluster10_SVD10 , 
   TextCluster10_SVD11 , 
   TextCluster10_SVD12 , 
   TextCluster10_SVD13 , 
   TextCluster10_SVD14 , 
   TextCluster10_SVD15 , 
   TextCluster10_SVD16 , 
   TextCluster10_SVD17 , 
   TextCluster10_SVD18 , 
   TextCluster10_SVD19 , 
   TextCluster10_SVD2 , 
   TextCluster10_SVD20 , 
   TextCluster10_SVD21 , 
   TextCluster10_SVD22 , 
   TextCluster10_SVD23 , 
   TextCluster10_SVD24 , 
   TextCluster10_SVD25 , 
   TextCluster10_SVD26 , 
   TextCluster10_SVD27 , 
   TextCluster10_SVD28 , 
   TextCluster10_SVD29 , 
   TextCluster10_SVD3 , 
   TextCluster10_SVD30 , 
   TextCluster10_SVD31 , 
   TextCluster10_SVD32 , 
   TextCluster10_SVD33 , 
   TextCluster10_SVD34 , 
   TextCluster10_SVD35 , 
   TextCluster10_SVD36 , 
   TextCluster10_SVD37 , 
   TextCluster10_SVD38 , 
   TextCluster10_SVD39 , 
   TextCluster10_SVD4 , 
   TextCluster10_SVD40 , 
   TextCluster10_SVD41 , 
   TextCluster10_SVD42 , 
   TextCluster10_SVD5 , 
   TextCluster10_SVD6 , 
   TextCluster10_SVD7 , 
   TextCluster10_SVD8 , 
   TextCluster10_SVD9   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster10_SVD1  =    -4.85050171627297 +     8.14906060718506 * 
        TextCluster10_SVD1 ;
   S_TextCluster10_SVD10  =    -0.15038568471268 +      6.6432740475586 * 
        TextCluster10_SVD10 ;
   S_TextCluster10_SVD11  =    -0.13384323704836 +     7.35120825597985 * 
        TextCluster10_SVD11 ;
   S_TextCluster10_SVD12  =    -0.05715187593439 +     8.02053476557644 * 
        TextCluster10_SVD12 ;
   S_TextCluster10_SVD13  =     -0.0620420726621 +     8.49054077105841 * 
        TextCluster10_SVD13 ;
   S_TextCluster10_SVD14  =     0.01407285915583 +     8.37571298171707 * 
        TextCluster10_SVD14 ;
   S_TextCluster10_SVD15  =    -0.03078182631767 +     8.55265029758955 * 
        TextCluster10_SVD15 ;
   S_TextCluster10_SVD16  =     0.02873209916014 +     9.31598446803268 * 
        TextCluster10_SVD16 ;
   S_TextCluster10_SVD17  =      0.0120701073679 +     9.17191861517938 * 
        TextCluster10_SVD17 ;
   S_TextCluster10_SVD18  =    -0.00168872895761 +     11.5667649458311 * 
        TextCluster10_SVD18 ;
   S_TextCluster10_SVD19  =     0.02528000088696 +     8.96580798082532 * 
        TextCluster10_SVD19 ;
   S_TextCluster10_SVD2  =     0.15373008275273 +     4.28189722623091 * 
        TextCluster10_SVD2 ;
   S_TextCluster10_SVD20  =     0.03253417044885 +     10.3621650140509 * 
        TextCluster10_SVD20 ;
   S_TextCluster10_SVD21  =     0.04423567083429 +      9.6428280365164 * 
        TextCluster10_SVD21 ;
   S_TextCluster10_SVD22  =       0.190165178823 +     9.43879229650783 * 
        TextCluster10_SVD22 ;
   S_TextCluster10_SVD23  =     -0.0022003735942 +     10.0842515726562 * 
        TextCluster10_SVD23 ;
   S_TextCluster10_SVD24  =     0.02082103691639 +     10.3279952791557 * 
        TextCluster10_SVD24 ;
   S_TextCluster10_SVD25  =      -0.047643774229 +     10.8785964631514 * 
        TextCluster10_SVD25 ;
   S_TextCluster10_SVD26  =    -0.09420977262494 +     10.6507209963658 * 
        TextCluster10_SVD26 ;
   S_TextCluster10_SVD27  =    -0.06082617837441 +     10.3378632681471 * 
        TextCluster10_SVD27 ;
   S_TextCluster10_SVD28  =     -0.0431158078738 +     10.6497100194814 * 
        TextCluster10_SVD28 ;
   S_TextCluster10_SVD29  =     -0.1135280433613 +     10.8266419434848 * 
        TextCluster10_SVD29 ;
   S_TextCluster10_SVD3  =     0.02878865241016 +      4.5061509866089 * 
        TextCluster10_SVD3 ;
   S_TextCluster10_SVD30  =    -0.00400861447642 +     11.3076318451322 * 
        TextCluster10_SVD30 ;
   S_TextCluster10_SVD31  =     0.16855938218913 +      11.440163364598 * 
        TextCluster10_SVD31 ;
   S_TextCluster10_SVD32  =     0.08240136269349 +     11.1928996989093 * 
        TextCluster10_SVD32 ;
   S_TextCluster10_SVD33  =     0.02526371745402 +     12.2244230553155 * 
        TextCluster10_SVD33 ;
   S_TextCluster10_SVD34  =     0.20809657607378 +     10.8974089594678 * 
        TextCluster10_SVD34 ;
   S_TextCluster10_SVD35  =      0.0212116665457 +     11.3289772012926 * 
        TextCluster10_SVD35 ;
   S_TextCluster10_SVD36  =     0.08138653476768 +     10.6291801242763 * 
        TextCluster10_SVD36 ;
   S_TextCluster10_SVD37  =     -0.1020582796244 +     10.5716981635654 * 
        TextCluster10_SVD37 ;
   S_TextCluster10_SVD38  =     0.02790710184043 +     10.6623754166468 * 
        TextCluster10_SVD38 ;
   S_TextCluster10_SVD39  =    -0.08072825025189 +     10.5429923908384 * 
        TextCluster10_SVD39 ;
   S_TextCluster10_SVD4  =    -0.18270286801126 +     4.87798006131652 * 
        TextCluster10_SVD4 ;
   S_TextCluster10_SVD40  =      0.0814963695999 +      11.511025874601 * 
        TextCluster10_SVD40 ;
   S_TextCluster10_SVD41  =    -0.04056056308503 +     11.4424069406245 * 
        TextCluster10_SVD41 ;
   S_TextCluster10_SVD42  =    -0.03420229452973 +     11.5268461217733 * 
        TextCluster10_SVD42 ;
   S_TextCluster10_SVD5  =    -0.05059034715646 +     4.90464114611752 * 
        TextCluster10_SVD5 ;
   S_TextCluster10_SVD6  =      0.0372575669329 +     6.14338036654825 * 
        TextCluster10_SVD6 ;
   S_TextCluster10_SVD7  =     -0.0231486879096 +     6.27401225757314 * 
        TextCluster10_SVD7 ;
   S_TextCluster10_SVD8  =     0.12338699291842 +     6.52095930646466 * 
        TextCluster10_SVD8 ;
   S_TextCluster10_SVD9  =    -0.03551359040427 +     6.98886996211653 * 
        TextCluster10_SVD9 ;
END;
ELSE DO;
   IF MISSING( TextCluster10_SVD1 ) THEN S_TextCluster10_SVD1  = . ;
   ELSE S_TextCluster10_SVD1  =    -4.85050171627297 +     8.14906060718506 * 
        TextCluster10_SVD1 ;
   IF MISSING( TextCluster10_SVD10 ) THEN S_TextCluster10_SVD10  = . ;
   ELSE S_TextCluster10_SVD10
          =    -0.15038568471268 +      6.6432740475586 * TextCluster10_SVD10
         ;
   IF MISSING( TextCluster10_SVD11 ) THEN S_TextCluster10_SVD11  = . ;
   ELSE S_TextCluster10_SVD11
          =    -0.13384323704836 +     7.35120825597985 * TextCluster10_SVD11
         ;
   IF MISSING( TextCluster10_SVD12 ) THEN S_TextCluster10_SVD12  = . ;
   ELSE S_TextCluster10_SVD12
          =    -0.05715187593439 +     8.02053476557644 * TextCluster10_SVD12
         ;
   IF MISSING( TextCluster10_SVD13 ) THEN S_TextCluster10_SVD13  = . ;
   ELSE S_TextCluster10_SVD13
          =     -0.0620420726621 +     8.49054077105841 * TextCluster10_SVD13
         ;
   IF MISSING( TextCluster10_SVD14 ) THEN S_TextCluster10_SVD14  = . ;
   ELSE S_TextCluster10_SVD14
          =     0.01407285915583 +     8.37571298171707 * TextCluster10_SVD14
         ;
   IF MISSING( TextCluster10_SVD15 ) THEN S_TextCluster10_SVD15  = . ;
   ELSE S_TextCluster10_SVD15
          =    -0.03078182631767 +     8.55265029758955 * TextCluster10_SVD15
         ;
   IF MISSING( TextCluster10_SVD16 ) THEN S_TextCluster10_SVD16  = . ;
   ELSE S_TextCluster10_SVD16
          =     0.02873209916014 +     9.31598446803268 * TextCluster10_SVD16
         ;
   IF MISSING( TextCluster10_SVD17 ) THEN S_TextCluster10_SVD17  = . ;
   ELSE S_TextCluster10_SVD17
          =      0.0120701073679 +     9.17191861517938 * TextCluster10_SVD17
         ;
   IF MISSING( TextCluster10_SVD18 ) THEN S_TextCluster10_SVD18  = . ;
   ELSE S_TextCluster10_SVD18
          =    -0.00168872895761 +     11.5667649458311 * TextCluster10_SVD18
         ;
   IF MISSING( TextCluster10_SVD19 ) THEN S_TextCluster10_SVD19  = . ;
   ELSE S_TextCluster10_SVD19
          =     0.02528000088696 +     8.96580798082532 * TextCluster10_SVD19
         ;
   IF MISSING( TextCluster10_SVD2 ) THEN S_TextCluster10_SVD2  = . ;
   ELSE S_TextCluster10_SVD2  =     0.15373008275273 +     4.28189722623091 * 
        TextCluster10_SVD2 ;
   IF MISSING( TextCluster10_SVD20 ) THEN S_TextCluster10_SVD20  = . ;
   ELSE S_TextCluster10_SVD20
          =     0.03253417044885 +     10.3621650140509 * TextCluster10_SVD20
         ;
   IF MISSING( TextCluster10_SVD21 ) THEN S_TextCluster10_SVD21  = . ;
   ELSE S_TextCluster10_SVD21
          =     0.04423567083429 +      9.6428280365164 * TextCluster10_SVD21
         ;
   IF MISSING( TextCluster10_SVD22 ) THEN S_TextCluster10_SVD22  = . ;
   ELSE S_TextCluster10_SVD22
          =       0.190165178823 +     9.43879229650783 * TextCluster10_SVD22
         ;
   IF MISSING( TextCluster10_SVD23 ) THEN S_TextCluster10_SVD23  = . ;
   ELSE S_TextCluster10_SVD23
          =     -0.0022003735942 +     10.0842515726562 * TextCluster10_SVD23
         ;
   IF MISSING( TextCluster10_SVD24 ) THEN S_TextCluster10_SVD24  = . ;
   ELSE S_TextCluster10_SVD24
          =     0.02082103691639 +     10.3279952791557 * TextCluster10_SVD24
         ;
   IF MISSING( TextCluster10_SVD25 ) THEN S_TextCluster10_SVD25  = . ;
   ELSE S_TextCluster10_SVD25
          =      -0.047643774229 +     10.8785964631514 * TextCluster10_SVD25
         ;
   IF MISSING( TextCluster10_SVD26 ) THEN S_TextCluster10_SVD26  = . ;
   ELSE S_TextCluster10_SVD26
          =    -0.09420977262494 +     10.6507209963658 * TextCluster10_SVD26
         ;
   IF MISSING( TextCluster10_SVD27 ) THEN S_TextCluster10_SVD27  = . ;
   ELSE S_TextCluster10_SVD27
          =    -0.06082617837441 +     10.3378632681471 * TextCluster10_SVD27
         ;
   IF MISSING( TextCluster10_SVD28 ) THEN S_TextCluster10_SVD28  = . ;
   ELSE S_TextCluster10_SVD28
          =     -0.0431158078738 +     10.6497100194814 * TextCluster10_SVD28
         ;
   IF MISSING( TextCluster10_SVD29 ) THEN S_TextCluster10_SVD29  = . ;
   ELSE S_TextCluster10_SVD29
          =     -0.1135280433613 +     10.8266419434848 * TextCluster10_SVD29
         ;
   IF MISSING( TextCluster10_SVD3 ) THEN S_TextCluster10_SVD3  = . ;
   ELSE S_TextCluster10_SVD3  =     0.02878865241016 +      4.5061509866089 * 
        TextCluster10_SVD3 ;
   IF MISSING( TextCluster10_SVD30 ) THEN S_TextCluster10_SVD30  = . ;
   ELSE S_TextCluster10_SVD30
          =    -0.00400861447642 +     11.3076318451322 * TextCluster10_SVD30
         ;
   IF MISSING( TextCluster10_SVD31 ) THEN S_TextCluster10_SVD31  = . ;
   ELSE S_TextCluster10_SVD31
          =     0.16855938218913 +      11.440163364598 * TextCluster10_SVD31
         ;
   IF MISSING( TextCluster10_SVD32 ) THEN S_TextCluster10_SVD32  = . ;
   ELSE S_TextCluster10_SVD32
          =     0.08240136269349 +     11.1928996989093 * TextCluster10_SVD32
         ;
   IF MISSING( TextCluster10_SVD33 ) THEN S_TextCluster10_SVD33  = . ;
   ELSE S_TextCluster10_SVD33
          =     0.02526371745402 +     12.2244230553155 * TextCluster10_SVD33
         ;
   IF MISSING( TextCluster10_SVD34 ) THEN S_TextCluster10_SVD34  = . ;
   ELSE S_TextCluster10_SVD34
          =     0.20809657607378 +     10.8974089594678 * TextCluster10_SVD34
         ;
   IF MISSING( TextCluster10_SVD35 ) THEN S_TextCluster10_SVD35  = . ;
   ELSE S_TextCluster10_SVD35
          =      0.0212116665457 +     11.3289772012926 * TextCluster10_SVD35
         ;
   IF MISSING( TextCluster10_SVD36 ) THEN S_TextCluster10_SVD36  = . ;
   ELSE S_TextCluster10_SVD36
          =     0.08138653476768 +     10.6291801242763 * TextCluster10_SVD36
         ;
   IF MISSING( TextCluster10_SVD37 ) THEN S_TextCluster10_SVD37  = . ;
   ELSE S_TextCluster10_SVD37
          =     -0.1020582796244 +     10.5716981635654 * TextCluster10_SVD37
         ;
   IF MISSING( TextCluster10_SVD38 ) THEN S_TextCluster10_SVD38  = . ;
   ELSE S_TextCluster10_SVD38
          =     0.02790710184043 +     10.6623754166468 * TextCluster10_SVD38
         ;
   IF MISSING( TextCluster10_SVD39 ) THEN S_TextCluster10_SVD39  = . ;
   ELSE S_TextCluster10_SVD39
          =    -0.08072825025189 +     10.5429923908384 * TextCluster10_SVD39
         ;
   IF MISSING( TextCluster10_SVD4 ) THEN S_TextCluster10_SVD4  = . ;
   ELSE S_TextCluster10_SVD4  =    -0.18270286801126 +     4.87798006131652 * 
        TextCluster10_SVD4 ;
   IF MISSING( TextCluster10_SVD40 ) THEN S_TextCluster10_SVD40  = . ;
   ELSE S_TextCluster10_SVD40
          =      0.0814963695999 +      11.511025874601 * TextCluster10_SVD40
         ;
   IF MISSING( TextCluster10_SVD41 ) THEN S_TextCluster10_SVD41  = . ;
   ELSE S_TextCluster10_SVD41
          =    -0.04056056308503 +     11.4424069406245 * TextCluster10_SVD41
         ;
   IF MISSING( TextCluster10_SVD42 ) THEN S_TextCluster10_SVD42  = . ;
   ELSE S_TextCluster10_SVD42
          =    -0.03420229452973 +     11.5268461217733 * TextCluster10_SVD42
         ;
   IF MISSING( TextCluster10_SVD5 ) THEN S_TextCluster10_SVD5  = . ;
   ELSE S_TextCluster10_SVD5  =    -0.05059034715646 +     4.90464114611752 * 
        TextCluster10_SVD5 ;
   IF MISSING( TextCluster10_SVD6 ) THEN S_TextCluster10_SVD6  = . ;
   ELSE S_TextCluster10_SVD6  =      0.0372575669329 +     6.14338036654825 * 
        TextCluster10_SVD6 ;
   IF MISSING( TextCluster10_SVD7 ) THEN S_TextCluster10_SVD7  = . ;
   ELSE S_TextCluster10_SVD7  =     -0.0231486879096 +     6.27401225757314 * 
        TextCluster10_SVD7 ;
   IF MISSING( TextCluster10_SVD8 ) THEN S_TextCluster10_SVD8  = . ;
   ELSE S_TextCluster10_SVD8  =     0.12338699291842 +     6.52095930646466 * 
        TextCluster10_SVD8 ;
   IF MISSING( TextCluster10_SVD9 ) THEN S_TextCluster10_SVD9  = . ;
   ELSE S_TextCluster10_SVD9  =    -0.03551359040427 +     6.98886996211653 * 
        TextCluster10_SVD9 ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =    -0.00335972304143 * S_TextCluster10_SVD1
          +     0.03637138145586 * S_TextCluster10_SVD10
          +     0.41261034334977 * S_TextCluster10_SVD11
          +    -0.52229091544646 * S_TextCluster10_SVD12
          +    -0.13045452557571 * S_TextCluster10_SVD13
          +    -0.24399111441284 * S_TextCluster10_SVD14
          +    -0.00809674089996 * S_TextCluster10_SVD15
          +     0.03751880465209 * S_TextCluster10_SVD16
          +    -0.29141832414581 * S_TextCluster10_SVD17
          +     0.15568799435679 * S_TextCluster10_SVD18
          +     0.07585877207961 * S_TextCluster10_SVD19
          +     0.16930769693058 * S_TextCluster10_SVD2
          +    -0.02788262377216 * S_TextCluster10_SVD20
          +     0.00979287013592 * S_TextCluster10_SVD21
          +    -0.05791142093331 * S_TextCluster10_SVD22
          +     0.09452572044399 * S_TextCluster10_SVD23
          +    -0.13099436532431 * S_TextCluster10_SVD24
          +    -0.08980196186985 * S_TextCluster10_SVD25
          +     0.02172619278911 * S_TextCluster10_SVD26
          +    -0.17905722737667 * S_TextCluster10_SVD27
          +    -0.10401275562055 * S_TextCluster10_SVD28
          +    -0.04874982932618 * S_TextCluster10_SVD29
          +    -0.17718963637493 * S_TextCluster10_SVD3
          +    -0.06906083526701 * S_TextCluster10_SVD30
          +     0.19212141267484 * S_TextCluster10_SVD31
          +     0.05648313139328 * S_TextCluster10_SVD32
          +    -0.05041616697748 * S_TextCluster10_SVD33
          +     0.03128897543568 * S_TextCluster10_SVD34
          +     0.00491573536996 * S_TextCluster10_SVD35
          +     0.03710662793861 * S_TextCluster10_SVD36
          +    -0.05230821636238 * S_TextCluster10_SVD37
          +    -0.05104293298461 * S_TextCluster10_SVD38
          +     0.04512472595002 * S_TextCluster10_SVD39
          +    -0.66827264866175 * S_TextCluster10_SVD4
          +     0.01727521844238 * S_TextCluster10_SVD40
          +    -0.07083999682817 * S_TextCluster10_SVD41
          +     0.03639167864623 * S_TextCluster10_SVD42
          +    -0.06492264507752 * S_TextCluster10_SVD5
          +      0.4522421350011 * S_TextCluster10_SVD6
          +    -0.23843268125897 * S_TextCluster10_SVD7
          +    -0.12158200307387 * S_TextCluster10_SVD8
          +    -0.30598552698987 * S_TextCluster10_SVD9 ;
   H12  =     0.05046832642088 * S_TextCluster10_SVD1
          +    -0.25729217896298 * S_TextCluster10_SVD10
          +    -0.08211173493072 * S_TextCluster10_SVD11
          +     0.70019074722911 * S_TextCluster10_SVD12
          +    -0.06453278150769 * S_TextCluster10_SVD13
          +     0.24303014526273 * S_TextCluster10_SVD14
          +    -0.14340106097056 * S_TextCluster10_SVD15
          +    -0.20733373005345 * S_TextCluster10_SVD16
          +     0.11393179708922 * S_TextCluster10_SVD17
          +      0.0087580215815 * S_TextCluster10_SVD18
          +    -0.09780079545866 * S_TextCluster10_SVD19
          +    -0.17881921328263 * S_TextCluster10_SVD2
          +      0.0973660767051 * S_TextCluster10_SVD20
          +     0.02485307678871 * S_TextCluster10_SVD21
          +     0.06861847953488 * S_TextCluster10_SVD22
          +     0.11890847790288 * S_TextCluster10_SVD23
          +    -0.10209746788991 * S_TextCluster10_SVD24
          +     0.06514611894435 * S_TextCluster10_SVD25
          +    -0.15996152977989 * S_TextCluster10_SVD26
          +    -0.08359195667352 * S_TextCluster10_SVD27
          +    -0.00907187198247 * S_TextCluster10_SVD28
          +     0.23065757305898 * S_TextCluster10_SVD29
          +    -0.07430696637282 * S_TextCluster10_SVD3
          +     0.02068302936611 * S_TextCluster10_SVD30
          +    -0.01435564384748 * S_TextCluster10_SVD31
          +     0.04921828955927 * S_TextCluster10_SVD32
          +    -0.07413389440941 * S_TextCluster10_SVD33
          +    -0.00958574194653 * S_TextCluster10_SVD34
          +     0.27697839795916 * S_TextCluster10_SVD35
          +    -0.00978519737274 * S_TextCluster10_SVD36
          +     0.08678673749137 * S_TextCluster10_SVD37
          +     0.11973175911678 * S_TextCluster10_SVD38
          +    -0.16706722596642 * S_TextCluster10_SVD39
          +    -0.62412010530912 * S_TextCluster10_SVD4
          +    -0.16656775325762 * S_TextCluster10_SVD40
          +    -0.06114793102162 * S_TextCluster10_SVD41
          +     0.00220529561168 * S_TextCluster10_SVD42
          +    -0.74978731135537 * S_TextCluster10_SVD5
          +    -0.05356969985097 * S_TextCluster10_SVD6
          +     0.00777629023019 * S_TextCluster10_SVD7
          +     0.38715980560755 * S_TextCluster10_SVD8
          +     0.16474747745283 * S_TextCluster10_SVD9 ;
   H13  =    -0.02734427755946 * S_TextCluster10_SVD1
          +     0.22003381579604 * S_TextCluster10_SVD10
          +     0.21357763209872 * S_TextCluster10_SVD11
          +      -0.801936732341 * S_TextCluster10_SVD12
          +      0.6957406312896 * S_TextCluster10_SVD13
          +     0.33589841750907 * S_TextCluster10_SVD14
          +     0.09243817965737 * S_TextCluster10_SVD15
          +     -0.1718463879297 * S_TextCluster10_SVD16
          +     0.17175358410161 * S_TextCluster10_SVD17
          +    -0.04638132777697 * S_TextCluster10_SVD18
          +    -0.52237481247331 * S_TextCluster10_SVD19
          +    -1.04058409637106 * S_TextCluster10_SVD2
          +    -0.04428517633063 * S_TextCluster10_SVD20
          +     0.11227624450049 * S_TextCluster10_SVD21
          +    -0.31258639427793 * S_TextCluster10_SVD22
          +    -0.42847193071076 * S_TextCluster10_SVD23
          +     0.50002368553485 * S_TextCluster10_SVD24
          +    -0.46277041456663 * S_TextCluster10_SVD25
          +    -0.26932968455908 * S_TextCluster10_SVD26
          +     0.24190384936477 * S_TextCluster10_SVD27
          +     0.25340561986431 * S_TextCluster10_SVD28
          +     0.08904256079618 * S_TextCluster10_SVD29
          +     0.30859811691655 * S_TextCluster10_SVD3
          +    -0.07400109438606 * S_TextCluster10_SVD30
          +    -0.20320137612072 * S_TextCluster10_SVD31
          +    -0.22441912643723 * S_TextCluster10_SVD32
          +     0.38837773125132 * S_TextCluster10_SVD33
          +    -0.14525658205408 * S_TextCluster10_SVD34
          +    -0.65194214163813 * S_TextCluster10_SVD35
          +    -0.27903413853755 * S_TextCluster10_SVD36
          +     0.12993179765312 * S_TextCluster10_SVD37
          +     0.11235757409677 * S_TextCluster10_SVD38
          +     0.00563559887045 * S_TextCluster10_SVD39
          +    -0.68563094110126 * S_TextCluster10_SVD4
          +     -0.0142985676648 * S_TextCluster10_SVD40
          +     0.25344813284739 * S_TextCluster10_SVD41
          +    -0.16560853181632 * S_TextCluster10_SVD42
          +     0.79643805989238 * S_TextCluster10_SVD5
          +     0.44414644267348 * S_TextCluster10_SVD6
          +    -0.47906909463305 * S_TextCluster10_SVD7
          +    -0.53235030207988 * S_TextCluster10_SVD8
          +    -0.63814375254338 * S_TextCluster10_SVD9 ;
   H11  =     0.38080244226703 + H11 ;
   H12  =    -0.14932205854453 + H12 ;
   H13  =     0.96401695665659 + H13 ;
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
   P_CategoryTEACHER  =    -3.50548332576107 * H11  +     1.31192784423016 * 
        H12  +    -2.27781058105913 * H13 ;
   P_CategorySALES  =    -1.45350954941304 * H11  +     -0.7740985091076 * H12
          +     1.13557734577478 * H13 ;
   P_CategoryOTHER  =     0.69494938190435 * H11  +     0.47779187238936 * H12
          +    -1.16612223613176 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =     0.79314522044515 * H11
          +    -0.66882739450713 * H12  +    -2.64877221163835 * H13 ;
   P_CategoryHR  =     1.53485739984028 * H11  +     3.21480025874438 * H12
          +     1.11055006748225 * H13 ;
   P_CategoryHEALTHCARE  =    -0.14098316130393 * H11
          +     1.95799415458437 * H12  +     1.67487271040709 * H13 ;
   P_CategoryFITNESS  =      1.8739499254904 * H11  +    -1.39164701582349 * 
        H12  +     0.82961860050981 * H13 ;
   P_CategoryDIGITAL_MEDIA  =    -0.97941284554771 * H11
          +    -2.98205704760465 * H12  +    -2.57463009995165 * H13 ;
   P_CategoryDESIGNER  =    -3.84870437919574 * H11  +    -0.85953957407822 * 
        H12  +     0.20212472527175 * H13 ;
   P_CategoryCONSULTANT  =    -0.02886435790708 * H11
          +     0.34367677683145 * H12  +    -1.09158022867546 * H13 ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -1.97049585465166 * H11
          +     1.32560010948174 * H12  +     1.37562526559687 * H13 ;
   P_CategoryTEACHER  =    -0.70163310360306 + P_CategoryTEACHER ;
   P_CategorySALES  =    -0.38811059085712 + P_CategorySALES ;
   P_CategoryOTHER  =     0.50710074181579 + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -0.09977263773091 + 
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =    -1.90616689208864 + P_CategoryHR ;
   P_CategoryHEALTHCARE  =    -0.63453997550822 + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  =    -1.91156729418322 + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  =    -0.61720181272206 + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  =    -0.75504710440666 + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  =     0.62264313743468 + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  =     -0.0062168088091 + 
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
