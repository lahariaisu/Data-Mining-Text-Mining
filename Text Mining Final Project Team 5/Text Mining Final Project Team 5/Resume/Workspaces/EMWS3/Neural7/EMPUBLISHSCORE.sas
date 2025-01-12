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
      label S_TextCluster11_SVD1 = 'Standard: TextCluster11_SVD1' ;

      label S_TextCluster11_SVD10 = 'Standard: TextCluster11_SVD10' ;

      label S_TextCluster11_SVD11 = 'Standard: TextCluster11_SVD11' ;

      label S_TextCluster11_SVD12 = 'Standard: TextCluster11_SVD12' ;

      label S_TextCluster11_SVD13 = 'Standard: TextCluster11_SVD13' ;

      label S_TextCluster11_SVD14 = 'Standard: TextCluster11_SVD14' ;

      label S_TextCluster11_SVD15 = 'Standard: TextCluster11_SVD15' ;

      label S_TextCluster11_SVD16 = 'Standard: TextCluster11_SVD16' ;

      label S_TextCluster11_SVD17 = 'Standard: TextCluster11_SVD17' ;

      label S_TextCluster11_SVD18 = 'Standard: TextCluster11_SVD18' ;

      label S_TextCluster11_SVD19 = 'Standard: TextCluster11_SVD19' ;

      label S_TextCluster11_SVD2 = 'Standard: TextCluster11_SVD2' ;

      label S_TextCluster11_SVD20 = 'Standard: TextCluster11_SVD20' ;

      label S_TextCluster11_SVD21 = 'Standard: TextCluster11_SVD21' ;

      label S_TextCluster11_SVD22 = 'Standard: TextCluster11_SVD22' ;

      label S_TextCluster11_SVD23 = 'Standard: TextCluster11_SVD23' ;

      label S_TextCluster11_SVD24 = 'Standard: TextCluster11_SVD24' ;

      label S_TextCluster11_SVD25 = 'Standard: TextCluster11_SVD25' ;

      label S_TextCluster11_SVD26 = 'Standard: TextCluster11_SVD26' ;

      label S_TextCluster11_SVD27 = 'Standard: TextCluster11_SVD27' ;

      label S_TextCluster11_SVD28 = 'Standard: TextCluster11_SVD28' ;

      label S_TextCluster11_SVD29 = 'Standard: TextCluster11_SVD29' ;

      label S_TextCluster11_SVD3 = 'Standard: TextCluster11_SVD3' ;

      label S_TextCluster11_SVD30 = 'Standard: TextCluster11_SVD30' ;

      label S_TextCluster11_SVD31 = 'Standard: TextCluster11_SVD31' ;

      label S_TextCluster11_SVD32 = 'Standard: TextCluster11_SVD32' ;

      label S_TextCluster11_SVD33 = 'Standard: TextCluster11_SVD33' ;

      label S_TextCluster11_SVD34 = 'Standard: TextCluster11_SVD34' ;

      label S_TextCluster11_SVD35 = 'Standard: TextCluster11_SVD35' ;

      label S_TextCluster11_SVD36 = 'Standard: TextCluster11_SVD36' ;

      label S_TextCluster11_SVD37 = 'Standard: TextCluster11_SVD37' ;

      label S_TextCluster11_SVD38 = 'Standard: TextCluster11_SVD38' ;

      label S_TextCluster11_SVD39 = 'Standard: TextCluster11_SVD39' ;

      label S_TextCluster11_SVD4 = 'Standard: TextCluster11_SVD4' ;

      label S_TextCluster11_SVD40 = 'Standard: TextCluster11_SVD40' ;

      label S_TextCluster11_SVD41 = 'Standard: TextCluster11_SVD41' ;

      label S_TextCluster11_SVD42 = 'Standard: TextCluster11_SVD42' ;

      label S_TextCluster11_SVD43 = 'Standard: TextCluster11_SVD43' ;

      label S_TextCluster11_SVD44 = 'Standard: TextCluster11_SVD44' ;

      label S_TextCluster11_SVD45 = 'Standard: TextCluster11_SVD45' ;

      label S_TextCluster11_SVD46 = 'Standard: TextCluster11_SVD46' ;

      label S_TextCluster11_SVD47 = 'Standard: TextCluster11_SVD47' ;

      label S_TextCluster11_SVD48 = 'Standard: TextCluster11_SVD48' ;

      label S_TextCluster11_SVD49 = 'Standard: TextCluster11_SVD49' ;

      label S_TextCluster11_SVD5 = 'Standard: TextCluster11_SVD5' ;

      label S_TextCluster11_SVD50 = 'Standard: TextCluster11_SVD50' ;

      label S_TextCluster11_SVD51 = 'Standard: TextCluster11_SVD51' ;

      label S_TextCluster11_SVD52 = 'Standard: TextCluster11_SVD52' ;

      label S_TextCluster11_SVD53 = 'Standard: TextCluster11_SVD53' ;

      label S_TextCluster11_SVD54 = 'Standard: TextCluster11_SVD54' ;

      label S_TextCluster11_SVD55 = 'Standard: TextCluster11_SVD55' ;

      label S_TextCluster11_SVD56 = 'Standard: TextCluster11_SVD56' ;

      label S_TextCluster11_SVD57 = 'Standard: TextCluster11_SVD57' ;

      label S_TextCluster11_SVD58 = 'Standard: TextCluster11_SVD58' ;

      label S_TextCluster11_SVD59 = 'Standard: TextCluster11_SVD59' ;

      label S_TextCluster11_SVD6 = 'Standard: TextCluster11_SVD6' ;

      label S_TextCluster11_SVD60 = 'Standard: TextCluster11_SVD60' ;

      label S_TextCluster11_SVD61 = 'Standard: TextCluster11_SVD61' ;

      label S_TextCluster11_SVD7 = 'Standard: TextCluster11_SVD7' ;

      label S_TextCluster11_SVD8 = 'Standard: TextCluster11_SVD8' ;

      label S_TextCluster11_SVD9 = 'Standard: TextCluster11_SVD9' ;

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
   TextCluster11_SVD1 ,
   TextCluster11_SVD10 ,
   TextCluster11_SVD11 ,
   TextCluster11_SVD12 ,
   TextCluster11_SVD13 ,
   TextCluster11_SVD14 ,
   TextCluster11_SVD15 ,
   TextCluster11_SVD16 ,
   TextCluster11_SVD17 ,
   TextCluster11_SVD18 ,
   TextCluster11_SVD19 ,
   TextCluster11_SVD2 ,
   TextCluster11_SVD20 ,
   TextCluster11_SVD21 ,
   TextCluster11_SVD22 ,
   TextCluster11_SVD23 ,
   TextCluster11_SVD24 ,
   TextCluster11_SVD25 ,
   TextCluster11_SVD26 ,
   TextCluster11_SVD27 ,
   TextCluster11_SVD28 ,
   TextCluster11_SVD29 ,
   TextCluster11_SVD3 ,
   TextCluster11_SVD30 ,
   TextCluster11_SVD31 ,
   TextCluster11_SVD32 ,
   TextCluster11_SVD33 ,
   TextCluster11_SVD34 ,
   TextCluster11_SVD35 ,
   TextCluster11_SVD36 ,
   TextCluster11_SVD37 ,
   TextCluster11_SVD38 ,
   TextCluster11_SVD39 ,
   TextCluster11_SVD4 ,
   TextCluster11_SVD40 ,
   TextCluster11_SVD41 ,
   TextCluster11_SVD42 ,
   TextCluster11_SVD43 ,
   TextCluster11_SVD44 ,
   TextCluster11_SVD45 ,
   TextCluster11_SVD46 ,
   TextCluster11_SVD47 ,
   TextCluster11_SVD48 ,
   TextCluster11_SVD49 ,
   TextCluster11_SVD5 ,
   TextCluster11_SVD50 ,
   TextCluster11_SVD51 ,
   TextCluster11_SVD52 ,
   TextCluster11_SVD53 ,
   TextCluster11_SVD54 ,
   TextCluster11_SVD55 ,
   TextCluster11_SVD56 ,
   TextCluster11_SVD57 ,
   TextCluster11_SVD58 ,
   TextCluster11_SVD59 ,
   TextCluster11_SVD6 ,
   TextCluster11_SVD60 ,
   TextCluster11_SVD61 ,
   TextCluster11_SVD7 ,
   TextCluster11_SVD8 ,
   TextCluster11_SVD9   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster11_SVD1  =    -4.28025222260867 +     8.73979011612784 *
        TextCluster11_SVD1 ;
   S_TextCluster11_SVD10  =     0.04155147905061 +     6.80025793301827 *
        TextCluster11_SVD10 ;
   S_TextCluster11_SVD11  =    -0.06309602472321 +     8.37185377044154 *
        TextCluster11_SVD11 ;
   S_TextCluster11_SVD12  =    -0.04958843336131 +     8.62259769301395 *
        TextCluster11_SVD12 ;
   S_TextCluster11_SVD13  =     0.02711811923959 +     8.18558496185222 *
        TextCluster11_SVD13 ;
   S_TextCluster11_SVD14  =    -0.13232036141253 +     10.1851387611445 *
        TextCluster11_SVD14 ;
   S_TextCluster11_SVD15  =     0.09330534388958 +     9.21372232551693 *
        TextCluster11_SVD15 ;
   S_TextCluster11_SVD16  =     0.02766307591246 +     10.4061858475623 *
        TextCluster11_SVD16 ;
   S_TextCluster11_SVD17  =    -0.01737858400096 +     11.0218326606837 *
        TextCluster11_SVD17 ;
   S_TextCluster11_SVD18  =     0.08242080497589 +     9.73487614495375 *
        TextCluster11_SVD18 ;
   S_TextCluster11_SVD19  =    -0.15456476212991 +     9.81662954122181 *
        TextCluster11_SVD19 ;
   S_TextCluster11_SVD2  =     0.23415621782255 +     4.26022373973189 *
        TextCluster11_SVD2 ;
   S_TextCluster11_SVD20  =     0.08059473214745 +     9.98043930831257 *
        TextCluster11_SVD20 ;
   S_TextCluster11_SVD21  =    -0.07658354120341 +     10.4787735161081 *
        TextCluster11_SVD21 ;
   S_TextCluster11_SVD22  =     0.02395340091657 +     10.6483668834222 *
        TextCluster11_SVD22 ;
   S_TextCluster11_SVD23  =    -0.01099418649602 +     10.5439842092718 *
        TextCluster11_SVD23 ;
   S_TextCluster11_SVD24  =    -0.04623674424114 +     10.4516668376228 *
        TextCluster11_SVD24 ;
   S_TextCluster11_SVD25  =     0.10362180434834 +      10.555894411934 *
        TextCluster11_SVD25 ;
   S_TextCluster11_SVD26  =     0.11988956100174 +     11.0199329173713 *
        TextCluster11_SVD26 ;
   S_TextCluster11_SVD27  =    -0.02550453274612 +     11.7467494000834 *
        TextCluster11_SVD27 ;
   S_TextCluster11_SVD28  =     0.02483067729357 +     11.6147365714317 *
        TextCluster11_SVD28 ;
   S_TextCluster11_SVD29  =    -0.03138976496291 +     11.5505800919831 *
        TextCluster11_SVD29 ;
   S_TextCluster11_SVD3  =     0.13262062843781 +      4.4104171249022 *
        TextCluster11_SVD3 ;
   S_TextCluster11_SVD30  =     0.08361036721284 +     12.4395053642767 *
        TextCluster11_SVD30 ;
   S_TextCluster11_SVD31  =     0.01539973105447 +     12.1464906694452 *
        TextCluster11_SVD31 ;
   S_TextCluster11_SVD32  =      0.0502295176109 +     12.1986297290063 *
        TextCluster11_SVD32 ;
   S_TextCluster11_SVD33  =     0.00013380670313 +     11.9291104292826 *
        TextCluster11_SVD33 ;
   S_TextCluster11_SVD34  =     0.01093426921009 +     11.7814635855874 *
        TextCluster11_SVD34 ;
   S_TextCluster11_SVD35  =     0.02659642490322 +     12.5672715265857 *
        TextCluster11_SVD35 ;
   S_TextCluster11_SVD36  =      0.0070404827793 +     11.1359828493803 *
        TextCluster11_SVD36 ;
   S_TextCluster11_SVD37  =    -0.01269422908443 +     12.5949409080398 *
        TextCluster11_SVD37 ;
   S_TextCluster11_SVD38  =     0.00071511912762 +     11.8565624787517 *
        TextCluster11_SVD38 ;
   S_TextCluster11_SVD39  =    -0.03400406947527 +     12.4296074247283 *
        TextCluster11_SVD39 ;
   S_TextCluster11_SVD4  =    -0.22629833873459 +     4.39569126583458 *
        TextCluster11_SVD4 ;
   S_TextCluster11_SVD40  =     0.02258835418683 +     12.8989981904975 *
        TextCluster11_SVD40 ;
   S_TextCluster11_SVD41  =    -0.08170621000173 +     11.9225145003294 *
        TextCluster11_SVD41 ;
   S_TextCluster11_SVD42  =     0.01459703017676 +     13.1717081964118 *
        TextCluster11_SVD42 ;
   S_TextCluster11_SVD43  =    -0.05157094226298 +     12.0310373706359 *
        TextCluster11_SVD43 ;
   S_TextCluster11_SVD44  =     0.01627713659313 +     12.1950075019257 *
        TextCluster11_SVD44 ;
   S_TextCluster11_SVD45  =    -0.13294564705435 +     13.2459799358281 *
        TextCluster11_SVD45 ;
   S_TextCluster11_SVD46  =     0.01315542983203 +     12.8744200640299 *
        TextCluster11_SVD46 ;
   S_TextCluster11_SVD47  =    -0.02744011541124 +     12.7869636320408 *
        TextCluster11_SVD47 ;
   S_TextCluster11_SVD48  =     0.02529045328773 +     12.2374980043071 *
        TextCluster11_SVD48 ;
   S_TextCluster11_SVD49  =    -0.03554400004804 +     12.8257094952343 *
        TextCluster11_SVD49 ;
   S_TextCluster11_SVD5  =     0.26408517987222 +     4.77093165132149 *
        TextCluster11_SVD5 ;
   S_TextCluster11_SVD50  =    -0.03996925478523 +     12.2419051010702 *
        TextCluster11_SVD50 ;
   S_TextCluster11_SVD51  =     0.12810164586188 +     12.3083430105574 *
        TextCluster11_SVD51 ;
   S_TextCluster11_SVD52  =    -0.00098816056338 +     12.6045327001548 *
        TextCluster11_SVD52 ;
   S_TextCluster11_SVD53  =     0.00510610661605 +     13.1729607822274 *
        TextCluster11_SVD53 ;
   S_TextCluster11_SVD54  =    -0.00366740685685 +     13.4762245834745 *
        TextCluster11_SVD54 ;
   S_TextCluster11_SVD55  =     0.00442907264481 +     13.6205807057659 *
        TextCluster11_SVD55 ;
   S_TextCluster11_SVD56  =    -0.01430487006473 +     12.3081404599382 *
        TextCluster11_SVD56 ;
   S_TextCluster11_SVD57  =    -0.00396921804087 +     12.9398664730192 *
        TextCluster11_SVD57 ;
   S_TextCluster11_SVD58  =    -0.01320536902887 +     13.0873664715918 *
        TextCluster11_SVD58 ;
   S_TextCluster11_SVD59  =    -0.03834883749495 +     13.5317960319814 *
        TextCluster11_SVD59 ;
   S_TextCluster11_SVD6  =     0.08763295399431 +      5.2939020831757 *
        TextCluster11_SVD6 ;
   S_TextCluster11_SVD60  =    -0.06831887545876 +     13.3316499286216 *
        TextCluster11_SVD60 ;
   S_TextCluster11_SVD61  =     0.10004312574157 +     13.7112691676308 *
        TextCluster11_SVD61 ;
   S_TextCluster11_SVD7  =     0.14977709691471 +     5.32191806676511 *
        TextCluster11_SVD7 ;
   S_TextCluster11_SVD8  =     0.01355123314755 +     6.20172682932592 *
        TextCluster11_SVD8 ;
   S_TextCluster11_SVD9  =      0.0709070234891 +     6.60062656299984 *
        TextCluster11_SVD9 ;
END;
ELSE DO;
   IF MISSING( TextCluster11_SVD1 ) THEN S_TextCluster11_SVD1  = . ;
   ELSE S_TextCluster11_SVD1  =    -4.28025222260867 +     8.73979011612784 *
        TextCluster11_SVD1 ;
   IF MISSING( TextCluster11_SVD10 ) THEN S_TextCluster11_SVD10  = . ;
   ELSE S_TextCluster11_SVD10
          =     0.04155147905061 +     6.80025793301827 * TextCluster11_SVD10
         ;
   IF MISSING( TextCluster11_SVD11 ) THEN S_TextCluster11_SVD11  = . ;
   ELSE S_TextCluster11_SVD11
          =    -0.06309602472321 +     8.37185377044154 * TextCluster11_SVD11
         ;
   IF MISSING( TextCluster11_SVD12 ) THEN S_TextCluster11_SVD12  = . ;
   ELSE S_TextCluster11_SVD12
          =    -0.04958843336131 +     8.62259769301395 * TextCluster11_SVD12
         ;
   IF MISSING( TextCluster11_SVD13 ) THEN S_TextCluster11_SVD13  = . ;
   ELSE S_TextCluster11_SVD13
          =     0.02711811923959 +     8.18558496185222 * TextCluster11_SVD13
         ;
   IF MISSING( TextCluster11_SVD14 ) THEN S_TextCluster11_SVD14  = . ;
   ELSE S_TextCluster11_SVD14
          =    -0.13232036141253 +     10.1851387611445 * TextCluster11_SVD14
         ;
   IF MISSING( TextCluster11_SVD15 ) THEN S_TextCluster11_SVD15  = . ;
   ELSE S_TextCluster11_SVD15
          =     0.09330534388958 +     9.21372232551693 * TextCluster11_SVD15
         ;
   IF MISSING( TextCluster11_SVD16 ) THEN S_TextCluster11_SVD16  = . ;
   ELSE S_TextCluster11_SVD16
          =     0.02766307591246 +     10.4061858475623 * TextCluster11_SVD16
         ;
   IF MISSING( TextCluster11_SVD17 ) THEN S_TextCluster11_SVD17  = . ;
   ELSE S_TextCluster11_SVD17
          =    -0.01737858400096 +     11.0218326606837 * TextCluster11_SVD17
         ;
   IF MISSING( TextCluster11_SVD18 ) THEN S_TextCluster11_SVD18  = . ;
   ELSE S_TextCluster11_SVD18
          =     0.08242080497589 +     9.73487614495375 * TextCluster11_SVD18
         ;
   IF MISSING( TextCluster11_SVD19 ) THEN S_TextCluster11_SVD19  = . ;
   ELSE S_TextCluster11_SVD19
          =    -0.15456476212991 +     9.81662954122181 * TextCluster11_SVD19
         ;
   IF MISSING( TextCluster11_SVD2 ) THEN S_TextCluster11_SVD2  = . ;
   ELSE S_TextCluster11_SVD2  =     0.23415621782255 +     4.26022373973189 *
        TextCluster11_SVD2 ;
   IF MISSING( TextCluster11_SVD20 ) THEN S_TextCluster11_SVD20  = . ;
   ELSE S_TextCluster11_SVD20
          =     0.08059473214745 +     9.98043930831257 * TextCluster11_SVD20
         ;
   IF MISSING( TextCluster11_SVD21 ) THEN S_TextCluster11_SVD21  = . ;
   ELSE S_TextCluster11_SVD21
          =    -0.07658354120341 +     10.4787735161081 * TextCluster11_SVD21
         ;
   IF MISSING( TextCluster11_SVD22 ) THEN S_TextCluster11_SVD22  = . ;
   ELSE S_TextCluster11_SVD22
          =     0.02395340091657 +     10.6483668834222 * TextCluster11_SVD22
         ;
   IF MISSING( TextCluster11_SVD23 ) THEN S_TextCluster11_SVD23  = . ;
   ELSE S_TextCluster11_SVD23
          =    -0.01099418649602 +     10.5439842092718 * TextCluster11_SVD23
         ;
   IF MISSING( TextCluster11_SVD24 ) THEN S_TextCluster11_SVD24  = . ;
   ELSE S_TextCluster11_SVD24
          =    -0.04623674424114 +     10.4516668376228 * TextCluster11_SVD24
         ;
   IF MISSING( TextCluster11_SVD25 ) THEN S_TextCluster11_SVD25  = . ;
   ELSE S_TextCluster11_SVD25
          =     0.10362180434834 +      10.555894411934 * TextCluster11_SVD25
         ;
   IF MISSING( TextCluster11_SVD26 ) THEN S_TextCluster11_SVD26  = . ;
   ELSE S_TextCluster11_SVD26
          =     0.11988956100174 +     11.0199329173713 * TextCluster11_SVD26
         ;
   IF MISSING( TextCluster11_SVD27 ) THEN S_TextCluster11_SVD27  = . ;
   ELSE S_TextCluster11_SVD27
          =    -0.02550453274612 +     11.7467494000834 * TextCluster11_SVD27
         ;
   IF MISSING( TextCluster11_SVD28 ) THEN S_TextCluster11_SVD28  = . ;
   ELSE S_TextCluster11_SVD28
          =     0.02483067729357 +     11.6147365714317 * TextCluster11_SVD28
         ;
   IF MISSING( TextCluster11_SVD29 ) THEN S_TextCluster11_SVD29  = . ;
   ELSE S_TextCluster11_SVD29
          =    -0.03138976496291 +     11.5505800919831 * TextCluster11_SVD29
         ;
   IF MISSING( TextCluster11_SVD3 ) THEN S_TextCluster11_SVD3  = . ;
   ELSE S_TextCluster11_SVD3  =     0.13262062843781 +      4.4104171249022 *
        TextCluster11_SVD3 ;
   IF MISSING( TextCluster11_SVD30 ) THEN S_TextCluster11_SVD30  = . ;
   ELSE S_TextCluster11_SVD30
          =     0.08361036721284 +     12.4395053642767 * TextCluster11_SVD30
         ;
   IF MISSING( TextCluster11_SVD31 ) THEN S_TextCluster11_SVD31  = . ;
   ELSE S_TextCluster11_SVD31
          =     0.01539973105447 +     12.1464906694452 * TextCluster11_SVD31
         ;
   IF MISSING( TextCluster11_SVD32 ) THEN S_TextCluster11_SVD32  = . ;
   ELSE S_TextCluster11_SVD32
          =      0.0502295176109 +     12.1986297290063 * TextCluster11_SVD32
         ;
   IF MISSING( TextCluster11_SVD33 ) THEN S_TextCluster11_SVD33  = . ;
   ELSE S_TextCluster11_SVD33
          =     0.00013380670313 +     11.9291104292826 * TextCluster11_SVD33
         ;
   IF MISSING( TextCluster11_SVD34 ) THEN S_TextCluster11_SVD34  = . ;
   ELSE S_TextCluster11_SVD34
          =     0.01093426921009 +     11.7814635855874 * TextCluster11_SVD34
         ;
   IF MISSING( TextCluster11_SVD35 ) THEN S_TextCluster11_SVD35  = . ;
   ELSE S_TextCluster11_SVD35
          =     0.02659642490322 +     12.5672715265857 * TextCluster11_SVD35
         ;
   IF MISSING( TextCluster11_SVD36 ) THEN S_TextCluster11_SVD36  = . ;
   ELSE S_TextCluster11_SVD36
          =      0.0070404827793 +     11.1359828493803 * TextCluster11_SVD36
         ;
   IF MISSING( TextCluster11_SVD37 ) THEN S_TextCluster11_SVD37  = . ;
   ELSE S_TextCluster11_SVD37
          =    -0.01269422908443 +     12.5949409080398 * TextCluster11_SVD37
         ;
   IF MISSING( TextCluster11_SVD38 ) THEN S_TextCluster11_SVD38  = . ;
   ELSE S_TextCluster11_SVD38
          =     0.00071511912762 +     11.8565624787517 * TextCluster11_SVD38
         ;
   IF MISSING( TextCluster11_SVD39 ) THEN S_TextCluster11_SVD39  = . ;
   ELSE S_TextCluster11_SVD39
          =    -0.03400406947527 +     12.4296074247283 * TextCluster11_SVD39
         ;
   IF MISSING( TextCluster11_SVD4 ) THEN S_TextCluster11_SVD4  = . ;
   ELSE S_TextCluster11_SVD4  =    -0.22629833873459 +     4.39569126583458 *
        TextCluster11_SVD4 ;
   IF MISSING( TextCluster11_SVD40 ) THEN S_TextCluster11_SVD40  = . ;
   ELSE S_TextCluster11_SVD40
          =     0.02258835418683 +     12.8989981904975 * TextCluster11_SVD40
         ;
   IF MISSING( TextCluster11_SVD41 ) THEN S_TextCluster11_SVD41  = . ;
   ELSE S_TextCluster11_SVD41
          =    -0.08170621000173 +     11.9225145003294 * TextCluster11_SVD41
         ;
   IF MISSING( TextCluster11_SVD42 ) THEN S_TextCluster11_SVD42  = . ;
   ELSE S_TextCluster11_SVD42
          =     0.01459703017676 +     13.1717081964118 * TextCluster11_SVD42
         ;
   IF MISSING( TextCluster11_SVD43 ) THEN S_TextCluster11_SVD43  = . ;
   ELSE S_TextCluster11_SVD43
          =    -0.05157094226298 +     12.0310373706359 * TextCluster11_SVD43
         ;
   IF MISSING( TextCluster11_SVD44 ) THEN S_TextCluster11_SVD44  = . ;
   ELSE S_TextCluster11_SVD44
          =     0.01627713659313 +     12.1950075019257 * TextCluster11_SVD44
         ;
   IF MISSING( TextCluster11_SVD45 ) THEN S_TextCluster11_SVD45  = . ;
   ELSE S_TextCluster11_SVD45
          =    -0.13294564705435 +     13.2459799358281 * TextCluster11_SVD45
         ;
   IF MISSING( TextCluster11_SVD46 ) THEN S_TextCluster11_SVD46  = . ;
   ELSE S_TextCluster11_SVD46
          =     0.01315542983203 +     12.8744200640299 * TextCluster11_SVD46
         ;
   IF MISSING( TextCluster11_SVD47 ) THEN S_TextCluster11_SVD47  = . ;
   ELSE S_TextCluster11_SVD47
          =    -0.02744011541124 +     12.7869636320408 * TextCluster11_SVD47
         ;
   IF MISSING( TextCluster11_SVD48 ) THEN S_TextCluster11_SVD48  = . ;
   ELSE S_TextCluster11_SVD48
          =     0.02529045328773 +     12.2374980043071 * TextCluster11_SVD48
         ;
   IF MISSING( TextCluster11_SVD49 ) THEN S_TextCluster11_SVD49  = . ;
   ELSE S_TextCluster11_SVD49
          =    -0.03554400004804 +     12.8257094952343 * TextCluster11_SVD49
         ;
   IF MISSING( TextCluster11_SVD5 ) THEN S_TextCluster11_SVD5  = . ;
   ELSE S_TextCluster11_SVD5  =     0.26408517987222 +     4.77093165132149 *
        TextCluster11_SVD5 ;
   IF MISSING( TextCluster11_SVD50 ) THEN S_TextCluster11_SVD50  = . ;
   ELSE S_TextCluster11_SVD50
          =    -0.03996925478523 +     12.2419051010702 * TextCluster11_SVD50
         ;
   IF MISSING( TextCluster11_SVD51 ) THEN S_TextCluster11_SVD51  = . ;
   ELSE S_TextCluster11_SVD51
          =     0.12810164586188 +     12.3083430105574 * TextCluster11_SVD51
         ;
   IF MISSING( TextCluster11_SVD52 ) THEN S_TextCluster11_SVD52  = . ;
   ELSE S_TextCluster11_SVD52
          =    -0.00098816056338 +     12.6045327001548 * TextCluster11_SVD52
         ;
   IF MISSING( TextCluster11_SVD53 ) THEN S_TextCluster11_SVD53  = . ;
   ELSE S_TextCluster11_SVD53
          =     0.00510610661605 +     13.1729607822274 * TextCluster11_SVD53
         ;
   IF MISSING( TextCluster11_SVD54 ) THEN S_TextCluster11_SVD54  = . ;
   ELSE S_TextCluster11_SVD54
          =    -0.00366740685685 +     13.4762245834745 * TextCluster11_SVD54
         ;
   IF MISSING( TextCluster11_SVD55 ) THEN S_TextCluster11_SVD55  = . ;
   ELSE S_TextCluster11_SVD55
          =     0.00442907264481 +     13.6205807057659 * TextCluster11_SVD55
         ;
   IF MISSING( TextCluster11_SVD56 ) THEN S_TextCluster11_SVD56  = . ;
   ELSE S_TextCluster11_SVD56
          =    -0.01430487006473 +     12.3081404599382 * TextCluster11_SVD56
         ;
   IF MISSING( TextCluster11_SVD57 ) THEN S_TextCluster11_SVD57  = . ;
   ELSE S_TextCluster11_SVD57
          =    -0.00396921804087 +     12.9398664730192 * TextCluster11_SVD57
         ;
   IF MISSING( TextCluster11_SVD58 ) THEN S_TextCluster11_SVD58  = . ;
   ELSE S_TextCluster11_SVD58
          =    -0.01320536902887 +     13.0873664715918 * TextCluster11_SVD58
         ;
   IF MISSING( TextCluster11_SVD59 ) THEN S_TextCluster11_SVD59  = . ;
   ELSE S_TextCluster11_SVD59
          =    -0.03834883749495 +     13.5317960319814 * TextCluster11_SVD59
         ;
   IF MISSING( TextCluster11_SVD6 ) THEN S_TextCluster11_SVD6  = . ;
   ELSE S_TextCluster11_SVD6  =     0.08763295399431 +      5.2939020831757 *
        TextCluster11_SVD6 ;
   IF MISSING( TextCluster11_SVD60 ) THEN S_TextCluster11_SVD60  = . ;
   ELSE S_TextCluster11_SVD60
          =    -0.06831887545876 +     13.3316499286216 * TextCluster11_SVD60
         ;
   IF MISSING( TextCluster11_SVD61 ) THEN S_TextCluster11_SVD61  = . ;
   ELSE S_TextCluster11_SVD61
          =     0.10004312574157 +     13.7112691676308 * TextCluster11_SVD61
         ;
   IF MISSING( TextCluster11_SVD7 ) THEN S_TextCluster11_SVD7  = . ;
   ELSE S_TextCluster11_SVD7  =     0.14977709691471 +     5.32191806676511 *
        TextCluster11_SVD7 ;
   IF MISSING( TextCluster11_SVD8 ) THEN S_TextCluster11_SVD8  = . ;
   ELSE S_TextCluster11_SVD8  =     0.01355123314755 +     6.20172682932592 *
        TextCluster11_SVD8 ;
   IF MISSING( TextCluster11_SVD9 ) THEN S_TextCluster11_SVD9  = . ;
   ELSE S_TextCluster11_SVD9  =      0.0709070234891 +     6.60062656299984 *
        TextCluster11_SVD9 ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     0.06781270724681 * S_TextCluster11_SVD1
          +     0.16066088846337 * S_TextCluster11_SVD10
          +    -0.02840111936581 * S_TextCluster11_SVD11
          +     0.31257877700828 * S_TextCluster11_SVD12
          +     0.28664535767509 * S_TextCluster11_SVD13
          +     0.06655148292939 * S_TextCluster11_SVD14
          +     0.15202637298965 * S_TextCluster11_SVD15
          +     0.02996757878592 * S_TextCluster11_SVD16
          +      0.0281221029335 * S_TextCluster11_SVD17
          +    -0.12953458401698 * S_TextCluster11_SVD18
          +     0.30127001116302 * S_TextCluster11_SVD19
          +     0.36835370513168 * S_TextCluster11_SVD2
          +     0.20176720579455 * S_TextCluster11_SVD20
          +    -0.29778367074092 * S_TextCluster11_SVD21
          +    -0.46608889961788 * S_TextCluster11_SVD22
          +    -0.13516649221198 * S_TextCluster11_SVD23
          +     -0.0750930339244 * S_TextCluster11_SVD24
          +    -0.25514439019244 * S_TextCluster11_SVD25
          +     0.07001623565316 * S_TextCluster11_SVD26
          +    -0.01156083086586 * S_TextCluster11_SVD27
          +     0.28004410196152 * S_TextCluster11_SVD28
          +    -0.30701314375332 * S_TextCluster11_SVD29
          +      0.8940366851228 * S_TextCluster11_SVD3
          +    -0.28877671680772 * S_TextCluster11_SVD30
          +     0.04998123352441 * S_TextCluster11_SVD31
          +     0.05913757471851 * S_TextCluster11_SVD32
          +    -0.03935528594448 * S_TextCluster11_SVD33
          +    -0.00955790537728 * S_TextCluster11_SVD34
          +     -0.2654042901353 * S_TextCluster11_SVD35
          +    -0.01056763136191 * S_TextCluster11_SVD36
          +    -0.09143525521494 * S_TextCluster11_SVD37
          +    -0.01788174926178 * S_TextCluster11_SVD38
          +    -0.09527645445009 * S_TextCluster11_SVD39
          +    -0.51670552752826 * S_TextCluster11_SVD4
          +     0.02577710390009 * S_TextCluster11_SVD40
          +    -0.29327236625425 * S_TextCluster11_SVD41
          +     0.19465636667159 * S_TextCluster11_SVD42
          +      0.0635776464153 * S_TextCluster11_SVD43
          +    -0.21058342082933 * S_TextCluster11_SVD44
          +     -0.0359095760778 * S_TextCluster11_SVD45
          +     0.16733450435362 * S_TextCluster11_SVD46
          +     0.22303584879451 * S_TextCluster11_SVD47
          +     0.12787949270009 * S_TextCluster11_SVD48
          +     0.18488573577626 * S_TextCluster11_SVD49
          +      1.0271244883228 * S_TextCluster11_SVD5
          +     0.10709944230029 * S_TextCluster11_SVD50
          +      0.1456399123893 * S_TextCluster11_SVD51
          +     0.16598071427592 * S_TextCluster11_SVD52
          +    -0.26109105457638 * S_TextCluster11_SVD53
          +    -0.14975915476901 * S_TextCluster11_SVD54
          +     0.07307544424174 * S_TextCluster11_SVD55
          +    -0.02581284856602 * S_TextCluster11_SVD56
          +     0.06467763467456 * S_TextCluster11_SVD57
          +    -0.05916665197967 * S_TextCluster11_SVD58
          +    -0.04597250913148 * S_TextCluster11_SVD59
          +    -1.04056078314511 * S_TextCluster11_SVD6
          +    -0.10261561098588 * S_TextCluster11_SVD60
          +     0.17415281213366 * S_TextCluster11_SVD61
          +    -0.63299313569551 * S_TextCluster11_SVD7
          +     0.34528342640876 * S_TextCluster11_SVD8
          +    -0.13897274385206 * S_TextCluster11_SVD9 ;
   H12  =    -0.38853702551524 * S_TextCluster11_SVD1
          +    -0.84231273698605 * S_TextCluster11_SVD10
          +    -0.19176537739833 * S_TextCluster11_SVD11
          +    -0.10665466006411 * S_TextCluster11_SVD12
          +    -0.62343290784308 * S_TextCluster11_SVD13
          +     0.17564671704741 * S_TextCluster11_SVD14
          +     0.20319406596757 * S_TextCluster11_SVD15
          +    -0.24065326015287 * S_TextCluster11_SVD16
          +     0.15538498424261 * S_TextCluster11_SVD17
          +    -0.13876089108682 * S_TextCluster11_SVD18
          +    -0.03998879816024 * S_TextCluster11_SVD19
          +     0.26326277907573 * S_TextCluster11_SVD2
          +    -0.04154933384304 * S_TextCluster11_SVD20
          +     0.43587776653453 * S_TextCluster11_SVD21
          +     0.55893662042619 * S_TextCluster11_SVD22
          +     0.32125384733867 * S_TextCluster11_SVD23
          +    -0.03893150909828 * S_TextCluster11_SVD24
          +      0.0301141359526 * S_TextCluster11_SVD25
          +    -0.10169008170067 * S_TextCluster11_SVD26
          +     0.20931256369065 * S_TextCluster11_SVD27
          +     0.35661747134279 * S_TextCluster11_SVD28
          +     0.28434162943795 * S_TextCluster11_SVD29
          +    -0.52825036299007 * S_TextCluster11_SVD3
          +    -0.35351079366998 * S_TextCluster11_SVD30
          +     0.41262528280502 * S_TextCluster11_SVD31
          +     0.19132413110844 * S_TextCluster11_SVD32
          +     0.32157242083646 * S_TextCluster11_SVD33
          +     0.31161839238929 * S_TextCluster11_SVD34
          +    -0.27167005247672 * S_TextCluster11_SVD35
          +     -0.3981367227808 * S_TextCluster11_SVD36
          +     0.01229556156941 * S_TextCluster11_SVD37
          +    -0.05359081155335 * S_TextCluster11_SVD38
          +    -0.35858768551343 * S_TextCluster11_SVD39
          +    -1.86076206928242 * S_TextCluster11_SVD4
          +    -0.09971653320522 * S_TextCluster11_SVD40
          +     0.33784878478436 * S_TextCluster11_SVD41
          +    -0.29760962373109 * S_TextCluster11_SVD42
          +    -0.50307383882223 * S_TextCluster11_SVD43
          +    -0.09143844267324 * S_TextCluster11_SVD44
          +      0.2093898181564 * S_TextCluster11_SVD45
          +     0.31921164214079 * S_TextCluster11_SVD46
          +     0.09739258091472 * S_TextCluster11_SVD47
          +     0.06476922927143 * S_TextCluster11_SVD48
          +    -0.00747988031891 * S_TextCluster11_SVD49
          +    -0.32950863198514 * S_TextCluster11_SVD5
          +    -0.07389644336198 * S_TextCluster11_SVD50
          +    -0.04938304178823 * S_TextCluster11_SVD51
          +    -0.23365303202783 * S_TextCluster11_SVD52
          +    -0.31192808558145 * S_TextCluster11_SVD53
          +     0.25520419755746 * S_TextCluster11_SVD54
          +    -0.00496251415397 * S_TextCluster11_SVD55
          +    -0.34344508916925 * S_TextCluster11_SVD56
          +    -0.27971931128092 * S_TextCluster11_SVD57
          +     0.04226907117124 * S_TextCluster11_SVD58
          +     0.38245605581029 * S_TextCluster11_SVD59
          +     1.18349699534916 * S_TextCluster11_SVD6
          +    -0.21471227619941 * S_TextCluster11_SVD60
          +      0.0996124120248 * S_TextCluster11_SVD61
          +     0.52011982478718 * S_TextCluster11_SVD7
          +     0.80460105929299 * S_TextCluster11_SVD8
          +    -0.00419693220925 * S_TextCluster11_SVD9 ;
   H13  =     0.33610185630555 * S_TextCluster11_SVD1
          +    -0.26426802713873 * S_TextCluster11_SVD10
          +     0.24683298930242 * S_TextCluster11_SVD11
          +     0.02739682092561 * S_TextCluster11_SVD12
          +     0.57914349585154 * S_TextCluster11_SVD13
          +    -0.87711572965629 * S_TextCluster11_SVD14
          +    -0.38747892330555 * S_TextCluster11_SVD15
          +    -0.05260310760428 * S_TextCluster11_SVD16
          +    -0.14054490463838 * S_TextCluster11_SVD17
          +     0.28761125890694 * S_TextCluster11_SVD18
          +     0.61345701983992 * S_TextCluster11_SVD19
          +    -1.37036240511526 * S_TextCluster11_SVD2
          +     0.02114863248545 * S_TextCluster11_SVD20
          +    -0.12378036402052 * S_TextCluster11_SVD21
          +    -0.23517436995266 * S_TextCluster11_SVD22
          +     0.20627220264488 * S_TextCluster11_SVD23
          +      0.3126317375666 * S_TextCluster11_SVD24
          +    -0.03250987315432 * S_TextCluster11_SVD25
          +    -0.37350292226163 * S_TextCluster11_SVD26
          +    -0.37151654399498 * S_TextCluster11_SVD27
          +     0.09184586998724 * S_TextCluster11_SVD28
          +    -0.02362467150777 * S_TextCluster11_SVD29
          +     0.41396778180752 * S_TextCluster11_SVD3
          +    -0.11468169217205 * S_TextCluster11_SVD30
          +    -0.12512878128664 * S_TextCluster11_SVD31
          +    -0.24979018056916 * S_TextCluster11_SVD32
          +    -0.17144519222221 * S_TextCluster11_SVD33
          +      0.5439634375604 * S_TextCluster11_SVD34
          +    -0.02228823307417 * S_TextCluster11_SVD35
          +    -0.02598155093925 * S_TextCluster11_SVD36
          +     0.22273456937515 * S_TextCluster11_SVD37
          +    -0.61475517935546 * S_TextCluster11_SVD38
          +    -0.03771426883916 * S_TextCluster11_SVD39
          +     0.15620556232811 * S_TextCluster11_SVD4
          +     0.06688443829198 * S_TextCluster11_SVD40
          +     0.15280015438046 * S_TextCluster11_SVD41
          +    -0.14269550367175 * S_TextCluster11_SVD42
          +     0.57755324785679 * S_TextCluster11_SVD43
          +    -0.34672485666515 * S_TextCluster11_SVD44
          +     0.20712193421764 * S_TextCluster11_SVD45
          +      0.1757328500909 * S_TextCluster11_SVD46
          +     0.39425801650259 * S_TextCluster11_SVD47
          +     0.05358129511533 * S_TextCluster11_SVD48
          +    -0.34368293348819 * S_TextCluster11_SVD49
          +    -0.14896952230098 * S_TextCluster11_SVD5
          +     0.02207389758523 * S_TextCluster11_SVD50
          +    -0.03941175869202 * S_TextCluster11_SVD51
          +     0.21315899952722 * S_TextCluster11_SVD52
          +    -0.32115054610196 * S_TextCluster11_SVD53
          +     0.16775345995432 * S_TextCluster11_SVD54
          +     0.01341866769451 * S_TextCluster11_SVD55
          +    -0.06659897237667 * S_TextCluster11_SVD56
          +    -0.03663222251668 * S_TextCluster11_SVD57
          +    -0.14022019914297 * S_TextCluster11_SVD58
          +      0.0686781093643 * S_TextCluster11_SVD59
          +     0.34214265431165 * S_TextCluster11_SVD6
          +    -0.00770631955908 * S_TextCluster11_SVD60
          +    -0.08748700308937 * S_TextCluster11_SVD61
          +    -1.08857750467804 * S_TextCluster11_SVD7
          +     1.54137159424079 * S_TextCluster11_SVD8
          +    -0.66399159980846 * S_TextCluster11_SVD9 ;
   H11  =    -1.02396151879837 + H11 ;
   H12  =     1.38135291344905 + H12 ;
   H13  =    -1.15282014053659 + H13 ;
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
   P_CategoryTEACHER  =    -1.89810504232835 * H11  +      1.5201270914889 *
        H12  +     1.51971319235071 * H13 ;
   P_CategorySALES  =      -1.517804157198 * H11  +    -1.38274307250662 * H12
          +     4.81372914914265 * H13 ;
   P_CategoryOTHER  =    -0.26399288494189 * H11  +     0.96309671399779 * H12
          +     2.45816566559561 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =     4.58205409742868 * H11
          +     0.13561190062887 * H12  +    -1.18747956182506 * H13 ;
   P_CategoryHR  =     4.34169766162136 * H11  +     1.95036533227281 * H12
          +     3.28009146412491 * H13 ;
   P_CategoryHEALTHCARE  =     -2.2009801537821 * H11
          +    -3.10361882907174 * H12  +    -2.31254267837855 * H13 ;
   P_CategoryFITNESS  =    -1.27426742526178 * H11  +     2.47094474910676 *
        H12  +     5.12279967755747 * H13 ;
   P_CategoryDIGITAL_MEDIA  =     0.85745065470602 * H11
          +     -4.3272531056424 * H12  +    -2.57617032006604 * H13 ;
   P_CategoryDESIGNER  =      5.2865337625772 * H11  +     -4.0450063587745 *
        H12  +    -2.01780908903055 * H13 ;
   P_CategoryCONSULTANT  =     0.17786046705869 * H11
          +    -0.43777724144595 * H12  +    -0.06523629839643 * H13 ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -2.81921767326826 * H11
          +    -4.42668532949164 * H12  +     1.38014905182598 * H13 ;
   P_CategoryTEACHER  =    -1.85808227481127 + P_CategoryTEACHER ;
   P_CategorySALES  =     -0.6441801745281 + P_CategorySALES ;
   P_CategoryOTHER  =     0.55104793756153 + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -0.94009559595772 +
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =    -1.57246301856567 + P_CategoryHR ;
   P_CategoryHEALTHCARE  =    -2.03906961872706 + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  =    -2.73442517690447 + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  =    -0.50040975267462 + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  =    -1.64890357473482 + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  =     0.47682433919569 + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -1.09228208642309 +
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
drop
S_TextCluster11_SVD1
S_TextCluster11_SVD10
S_TextCluster11_SVD11
S_TextCluster11_SVD12
S_TextCluster11_SVD13
S_TextCluster11_SVD14
S_TextCluster11_SVD15
S_TextCluster11_SVD16
S_TextCluster11_SVD17
S_TextCluster11_SVD18
S_TextCluster11_SVD19
S_TextCluster11_SVD2
S_TextCluster11_SVD20
S_TextCluster11_SVD21
S_TextCluster11_SVD22
S_TextCluster11_SVD23
S_TextCluster11_SVD24
S_TextCluster11_SVD25
S_TextCluster11_SVD26
S_TextCluster11_SVD27
S_TextCluster11_SVD28
S_TextCluster11_SVD29
S_TextCluster11_SVD3
S_TextCluster11_SVD30
S_TextCluster11_SVD31
S_TextCluster11_SVD32
S_TextCluster11_SVD33
S_TextCluster11_SVD34
S_TextCluster11_SVD35
S_TextCluster11_SVD36
S_TextCluster11_SVD37
S_TextCluster11_SVD38
S_TextCluster11_SVD39
S_TextCluster11_SVD4
S_TextCluster11_SVD40
S_TextCluster11_SVD41
S_TextCluster11_SVD42
S_TextCluster11_SVD43
S_TextCluster11_SVD44
S_TextCluster11_SVD45
S_TextCluster11_SVD46
S_TextCluster11_SVD47
S_TextCluster11_SVD48
S_TextCluster11_SVD49
S_TextCluster11_SVD5
S_TextCluster11_SVD50
S_TextCluster11_SVD51
S_TextCluster11_SVD52
S_TextCluster11_SVD53
S_TextCluster11_SVD54
S_TextCluster11_SVD55
S_TextCluster11_SVD56
S_TextCluster11_SVD57
S_TextCluster11_SVD58
S_TextCluster11_SVD59
S_TextCluster11_SVD6
S_TextCluster11_SVD60
S_TextCluster11_SVD61
S_TextCluster11_SVD7
S_TextCluster11_SVD8
S_TextCluster11_SVD9
H11
H12
H13
;
