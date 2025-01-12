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
      label S_TextCluster5_SVD1 = 'Standard: TextCluster5_SVD1' ;

      label S_TextCluster5_SVD10 = 'Standard: TextCluster5_SVD10' ;

      label S_TextCluster5_SVD100 = 'Standard: TextCluster5_SVD100' ;

      label S_TextCluster5_SVD11 = 'Standard: TextCluster5_SVD11' ;

      label S_TextCluster5_SVD12 = 'Standard: TextCluster5_SVD12' ;

      label S_TextCluster5_SVD13 = 'Standard: TextCluster5_SVD13' ;

      label S_TextCluster5_SVD14 = 'Standard: TextCluster5_SVD14' ;

      label S_TextCluster5_SVD15 = 'Standard: TextCluster5_SVD15' ;

      label S_TextCluster5_SVD16 = 'Standard: TextCluster5_SVD16' ;

      label S_TextCluster5_SVD17 = 'Standard: TextCluster5_SVD17' ;

      label S_TextCluster5_SVD18 = 'Standard: TextCluster5_SVD18' ;

      label S_TextCluster5_SVD19 = 'Standard: TextCluster5_SVD19' ;

      label S_TextCluster5_SVD2 = 'Standard: TextCluster5_SVD2' ;

      label S_TextCluster5_SVD20 = 'Standard: TextCluster5_SVD20' ;

      label S_TextCluster5_SVD21 = 'Standard: TextCluster5_SVD21' ;

      label S_TextCluster5_SVD22 = 'Standard: TextCluster5_SVD22' ;

      label S_TextCluster5_SVD23 = 'Standard: TextCluster5_SVD23' ;

      label S_TextCluster5_SVD24 = 'Standard: TextCluster5_SVD24' ;

      label S_TextCluster5_SVD25 = 'Standard: TextCluster5_SVD25' ;

      label S_TextCluster5_SVD26 = 'Standard: TextCluster5_SVD26' ;

      label S_TextCluster5_SVD27 = 'Standard: TextCluster5_SVD27' ;

      label S_TextCluster5_SVD28 = 'Standard: TextCluster5_SVD28' ;

      label S_TextCluster5_SVD29 = 'Standard: TextCluster5_SVD29' ;

      label S_TextCluster5_SVD3 = 'Standard: TextCluster5_SVD3' ;

      label S_TextCluster5_SVD30 = 'Standard: TextCluster5_SVD30' ;

      label S_TextCluster5_SVD31 = 'Standard: TextCluster5_SVD31' ;

      label S_TextCluster5_SVD32 = 'Standard: TextCluster5_SVD32' ;

      label S_TextCluster5_SVD33 = 'Standard: TextCluster5_SVD33' ;

      label S_TextCluster5_SVD34 = 'Standard: TextCluster5_SVD34' ;

      label S_TextCluster5_SVD35 = 'Standard: TextCluster5_SVD35' ;

      label S_TextCluster5_SVD36 = 'Standard: TextCluster5_SVD36' ;

      label S_TextCluster5_SVD37 = 'Standard: TextCluster5_SVD37' ;

      label S_TextCluster5_SVD38 = 'Standard: TextCluster5_SVD38' ;

      label S_TextCluster5_SVD39 = 'Standard: TextCluster5_SVD39' ;

      label S_TextCluster5_SVD4 = 'Standard: TextCluster5_SVD4' ;

      label S_TextCluster5_SVD40 = 'Standard: TextCluster5_SVD40' ;

      label S_TextCluster5_SVD41 = 'Standard: TextCluster5_SVD41' ;

      label S_TextCluster5_SVD42 = 'Standard: TextCluster5_SVD42' ;

      label S_TextCluster5_SVD43 = 'Standard: TextCluster5_SVD43' ;

      label S_TextCluster5_SVD44 = 'Standard: TextCluster5_SVD44' ;

      label S_TextCluster5_SVD45 = 'Standard: TextCluster5_SVD45' ;

      label S_TextCluster5_SVD46 = 'Standard: TextCluster5_SVD46' ;

      label S_TextCluster5_SVD47 = 'Standard: TextCluster5_SVD47' ;

      label S_TextCluster5_SVD48 = 'Standard: TextCluster5_SVD48' ;

      label S_TextCluster5_SVD49 = 'Standard: TextCluster5_SVD49' ;

      label S_TextCluster5_SVD5 = 'Standard: TextCluster5_SVD5' ;

      label S_TextCluster5_SVD50 = 'Standard: TextCluster5_SVD50' ;

      label S_TextCluster5_SVD51 = 'Standard: TextCluster5_SVD51' ;

      label S_TextCluster5_SVD52 = 'Standard: TextCluster5_SVD52' ;

      label S_TextCluster5_SVD53 = 'Standard: TextCluster5_SVD53' ;

      label S_TextCluster5_SVD54 = 'Standard: TextCluster5_SVD54' ;

      label S_TextCluster5_SVD55 = 'Standard: TextCluster5_SVD55' ;

      label S_TextCluster5_SVD56 = 'Standard: TextCluster5_SVD56' ;

      label S_TextCluster5_SVD57 = 'Standard: TextCluster5_SVD57' ;

      label S_TextCluster5_SVD58 = 'Standard: TextCluster5_SVD58' ;

      label S_TextCluster5_SVD59 = 'Standard: TextCluster5_SVD59' ;

      label S_TextCluster5_SVD6 = 'Standard: TextCluster5_SVD6' ;

      label S_TextCluster5_SVD60 = 'Standard: TextCluster5_SVD60' ;

      label S_TextCluster5_SVD61 = 'Standard: TextCluster5_SVD61' ;

      label S_TextCluster5_SVD62 = 'Standard: TextCluster5_SVD62' ;

      label S_TextCluster5_SVD63 = 'Standard: TextCluster5_SVD63' ;

      label S_TextCluster5_SVD64 = 'Standard: TextCluster5_SVD64' ;

      label S_TextCluster5_SVD65 = 'Standard: TextCluster5_SVD65' ;

      label S_TextCluster5_SVD66 = 'Standard: TextCluster5_SVD66' ;

      label S_TextCluster5_SVD67 = 'Standard: TextCluster5_SVD67' ;

      label S_TextCluster5_SVD68 = 'Standard: TextCluster5_SVD68' ;

      label S_TextCluster5_SVD69 = 'Standard: TextCluster5_SVD69' ;

      label S_TextCluster5_SVD7 = 'Standard: TextCluster5_SVD7' ;

      label S_TextCluster5_SVD70 = 'Standard: TextCluster5_SVD70' ;

      label S_TextCluster5_SVD71 = 'Standard: TextCluster5_SVD71' ;

      label S_TextCluster5_SVD72 = 'Standard: TextCluster5_SVD72' ;

      label S_TextCluster5_SVD73 = 'Standard: TextCluster5_SVD73' ;

      label S_TextCluster5_SVD74 = 'Standard: TextCluster5_SVD74' ;

      label S_TextCluster5_SVD75 = 'Standard: TextCluster5_SVD75' ;

      label S_TextCluster5_SVD76 = 'Standard: TextCluster5_SVD76' ;

      label S_TextCluster5_SVD77 = 'Standard: TextCluster5_SVD77' ;

      label S_TextCluster5_SVD78 = 'Standard: TextCluster5_SVD78' ;

      label S_TextCluster5_SVD79 = 'Standard: TextCluster5_SVD79' ;

      label S_TextCluster5_SVD8 = 'Standard: TextCluster5_SVD8' ;

      label S_TextCluster5_SVD80 = 'Standard: TextCluster5_SVD80' ;

      label S_TextCluster5_SVD81 = 'Standard: TextCluster5_SVD81' ;

      label S_TextCluster5_SVD82 = 'Standard: TextCluster5_SVD82' ;

      label S_TextCluster5_SVD83 = 'Standard: TextCluster5_SVD83' ;

      label S_TextCluster5_SVD84 = 'Standard: TextCluster5_SVD84' ;

      label S_TextCluster5_SVD85 = 'Standard: TextCluster5_SVD85' ;

      label S_TextCluster5_SVD86 = 'Standard: TextCluster5_SVD86' ;

      label S_TextCluster5_SVD87 = 'Standard: TextCluster5_SVD87' ;

      label S_TextCluster5_SVD88 = 'Standard: TextCluster5_SVD88' ;

      label S_TextCluster5_SVD89 = 'Standard: TextCluster5_SVD89' ;

      label S_TextCluster5_SVD9 = 'Standard: TextCluster5_SVD9' ;

      label S_TextCluster5_SVD90 = 'Standard: TextCluster5_SVD90' ;

      label S_TextCluster5_SVD91 = 'Standard: TextCluster5_SVD91' ;

      label S_TextCluster5_SVD92 = 'Standard: TextCluster5_SVD92' ;

      label S_TextCluster5_SVD93 = 'Standard: TextCluster5_SVD93' ;

      label S_TextCluster5_SVD94 = 'Standard: TextCluster5_SVD94' ;

      label S_TextCluster5_SVD95 = 'Standard: TextCluster5_SVD95' ;

      label S_TextCluster5_SVD96 = 'Standard: TextCluster5_SVD96' ;

      label S_TextCluster5_SVD97 = 'Standard: TextCluster5_SVD97' ;

      label S_TextCluster5_SVD98 = 'Standard: TextCluster5_SVD98' ;

      label S_TextCluster5_SVD99 = 'Standard: TextCluster5_SVD99' ;

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
   TextCluster5_SVD1 , 
   TextCluster5_SVD10 , 
   TextCluster5_SVD100 , 
   TextCluster5_SVD11 , 
   TextCluster5_SVD12 , 
   TextCluster5_SVD13 , 
   TextCluster5_SVD14 , 
   TextCluster5_SVD15 , 
   TextCluster5_SVD16 , 
   TextCluster5_SVD17 , 
   TextCluster5_SVD18 , 
   TextCluster5_SVD19 , 
   TextCluster5_SVD2 , 
   TextCluster5_SVD20 , 
   TextCluster5_SVD21 , 
   TextCluster5_SVD22 , 
   TextCluster5_SVD23 , 
   TextCluster5_SVD24 , 
   TextCluster5_SVD25 , 
   TextCluster5_SVD26 , 
   TextCluster5_SVD27 , 
   TextCluster5_SVD28 , 
   TextCluster5_SVD29 , 
   TextCluster5_SVD3 , 
   TextCluster5_SVD30 , 
   TextCluster5_SVD31 , 
   TextCluster5_SVD32 , 
   TextCluster5_SVD33 , 
   TextCluster5_SVD34 , 
   TextCluster5_SVD35 , 
   TextCluster5_SVD36 , 
   TextCluster5_SVD37 , 
   TextCluster5_SVD38 , 
   TextCluster5_SVD39 , 
   TextCluster5_SVD4 , 
   TextCluster5_SVD40 , 
   TextCluster5_SVD41 , 
   TextCluster5_SVD42 , 
   TextCluster5_SVD43 , 
   TextCluster5_SVD44 , 
   TextCluster5_SVD45 , 
   TextCluster5_SVD46 , 
   TextCluster5_SVD47 , 
   TextCluster5_SVD48 , 
   TextCluster5_SVD49 , 
   TextCluster5_SVD5 , 
   TextCluster5_SVD50 , 
   TextCluster5_SVD51 , 
   TextCluster5_SVD52 , 
   TextCluster5_SVD53 , 
   TextCluster5_SVD54 , 
   TextCluster5_SVD55 , 
   TextCluster5_SVD56 , 
   TextCluster5_SVD57 , 
   TextCluster5_SVD58 , 
   TextCluster5_SVD59 , 
   TextCluster5_SVD6 , 
   TextCluster5_SVD60 , 
   TextCluster5_SVD61 , 
   TextCluster5_SVD62 , 
   TextCluster5_SVD63 , 
   TextCluster5_SVD64 , 
   TextCluster5_SVD65 , 
   TextCluster5_SVD66 , 
   TextCluster5_SVD67 , 
   TextCluster5_SVD68 , 
   TextCluster5_SVD69 , 
   TextCluster5_SVD7 , 
   TextCluster5_SVD70 , 
   TextCluster5_SVD71 , 
   TextCluster5_SVD72 , 
   TextCluster5_SVD73 , 
   TextCluster5_SVD74 , 
   TextCluster5_SVD75 , 
   TextCluster5_SVD76 , 
   TextCluster5_SVD77 , 
   TextCluster5_SVD78 , 
   TextCluster5_SVD79 , 
   TextCluster5_SVD8 , 
   TextCluster5_SVD80 , 
   TextCluster5_SVD81 , 
   TextCluster5_SVD82 , 
   TextCluster5_SVD83 , 
   TextCluster5_SVD84 , 
   TextCluster5_SVD85 , 
   TextCluster5_SVD86 , 
   TextCluster5_SVD87 , 
   TextCluster5_SVD88 , 
   TextCluster5_SVD89 , 
   TextCluster5_SVD9 , 
   TextCluster5_SVD90 , 
   TextCluster5_SVD91 , 
   TextCluster5_SVD92 , 
   TextCluster5_SVD93 , 
   TextCluster5_SVD94 , 
   TextCluster5_SVD95 , 
   TextCluster5_SVD96 , 
   TextCluster5_SVD97 , 
   TextCluster5_SVD98 , 
   TextCluster5_SVD99   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster5_SVD1  =    -4.46694129318721 +     9.01023373759407 * 
        TextCluster5_SVD1 ;
   S_TextCluster5_SVD10  =    -0.14167548976744 +     7.94414179293071 * 
        TextCluster5_SVD10 ;
   S_TextCluster5_SVD100  =    -0.01178537390938 +     13.9240063669361 * 
        TextCluster5_SVD100 ;
   S_TextCluster5_SVD11  =    -0.13840581255342 +     8.86972217735124 * 
        TextCluster5_SVD11 ;
   S_TextCluster5_SVD12  =    -0.05173262962971 +     9.25799911649105 * 
        TextCluster5_SVD12 ;
   S_TextCluster5_SVD13  =    -0.06828451809615 +     10.2068802805027 * 
        TextCluster5_SVD13 ;
   S_TextCluster5_SVD14  =     0.02035756112292 +     10.0918114077125 * 
        TextCluster5_SVD14 ;
   S_TextCluster5_SVD15  =    -0.02847433663397 +     10.1493011533211 * 
        TextCluster5_SVD15 ;
   S_TextCluster5_SVD16  =      0.0372303897004 +     11.2977978223552 * 
        TextCluster5_SVD16 ;
   S_TextCluster5_SVD17  =     0.00408867467267 +     11.0869604407133 * 
        TextCluster5_SVD17 ;
   S_TextCluster5_SVD18  =      0.0042012709139 +     13.6933082144394 * 
        TextCluster5_SVD18 ;
   S_TextCluster5_SVD19  =     0.04100241069381 +     10.8105216498639 * 
        TextCluster5_SVD19 ;
   S_TextCluster5_SVD2  =        0.16251549331 +      5.0860607976038 * 
        TextCluster5_SVD2 ;
   S_TextCluster5_SVD20  =     0.03034168134814 +     12.5134577796161 * 
        TextCluster5_SVD20 ;
   S_TextCluster5_SVD21  =     0.04838374033119 +     11.7629274912315 * 
        TextCluster5_SVD21 ;
   S_TextCluster5_SVD22  =      0.1916162689351 +     11.3497060276309 * 
        TextCluster5_SVD22 ;
   S_TextCluster5_SVD23  =    -0.00215465389213 +     12.1131164555223 * 
        TextCluster5_SVD23 ;
   S_TextCluster5_SVD24  =     0.01772269951362 +     12.5057199149617 * 
        TextCluster5_SVD24 ;
   S_TextCluster5_SVD25  =    -0.04742952016562 +     13.3189399970303 * 
        TextCluster5_SVD25 ;
   S_TextCluster5_SVD26  =    -0.09260810965673 +     12.8153624061873 * 
        TextCluster5_SVD26 ;
   S_TextCluster5_SVD27  =    -0.06296432549182 +     12.8449256120779 * 
        TextCluster5_SVD27 ;
   S_TextCluster5_SVD28  =    -0.04502029352991 +     12.9364406639091 * 
        TextCluster5_SVD28 ;
   S_TextCluster5_SVD29  =    -0.11111760109763 +     13.0831668026068 * 
        TextCluster5_SVD29 ;
   S_TextCluster5_SVD3  =     0.03476570022266 +     5.32904397984138 * 
        TextCluster5_SVD3 ;
   S_TextCluster5_SVD30  =     0.00213378980625 +     13.8315530288895 * 
        TextCluster5_SVD30 ;
   S_TextCluster5_SVD31  =     0.18486686786846 +     13.8791543756685 * 
        TextCluster5_SVD31 ;
   S_TextCluster5_SVD32  =      0.0870765128028 +     13.5350109303657 * 
        TextCluster5_SVD32 ;
   S_TextCluster5_SVD33  =     0.02773964853597 +     14.7922257206593 * 
        TextCluster5_SVD33 ;
   S_TextCluster5_SVD34  =     0.20953467459275 +     13.3112131431933 * 
        TextCluster5_SVD34 ;
   S_TextCluster5_SVD35  =     0.02638148125128 +     13.6380251400513 * 
        TextCluster5_SVD35 ;
   S_TextCluster5_SVD36  =     0.09197322746508 +      13.077788975921 * 
        TextCluster5_SVD36 ;
   S_TextCluster5_SVD37  =    -0.11290661670277 +     12.9409585199596 * 
        TextCluster5_SVD37 ;
   S_TextCluster5_SVD38  =     0.03230725001748 +     12.9421914860236 * 
        TextCluster5_SVD38 ;
   S_TextCluster5_SVD39  =    -0.07979445448338 +     12.9071028531713 * 
        TextCluster5_SVD39 ;
   S_TextCluster5_SVD4  =    -0.18101234030575 +     5.67597774775794 * 
        TextCluster5_SVD4 ;
   S_TextCluster5_SVD40  =     0.08269287996125 +     14.0988545468697 * 
        TextCluster5_SVD40 ;
   S_TextCluster5_SVD41  =    -0.03408878043262 +     14.2186225838689 * 
        TextCluster5_SVD41 ;
   S_TextCluster5_SVD42  =    -0.03648270022008 +     14.0824025226681 * 
        TextCluster5_SVD42 ;
   S_TextCluster5_SVD43  =    -0.04220657012686 +     14.1711007514738 * 
        TextCluster5_SVD43 ;
   S_TextCluster5_SVD44  =    -0.03100028475319 +     14.8703821822629 * 
        TextCluster5_SVD44 ;
   S_TextCluster5_SVD45  =    -0.01147285999109 +     13.4606355116489 * 
        TextCluster5_SVD45 ;
   S_TextCluster5_SVD46  =      0.0174267304425 +     13.8444617096028 * 
        TextCluster5_SVD46 ;
   S_TextCluster5_SVD47  =    -0.09597242170923 +     13.9386369828269 * 
        TextCluster5_SVD47 ;
   S_TextCluster5_SVD48  =     0.00643717436943 +     13.3784392458171 * 
        TextCluster5_SVD48 ;
   S_TextCluster5_SVD49  =     0.16974469582738 +     13.7372650564479 * 
        TextCluster5_SVD49 ;
   S_TextCluster5_SVD5  =    -0.04929454904276 +     5.75524703683232 * 
        TextCluster5_SVD5 ;
   S_TextCluster5_SVD50  =    -0.09359014793845 +     14.0640039012119 * 
        TextCluster5_SVD50 ;
   S_TextCluster5_SVD51  =      0.0311174329916 +     13.6020654511141 * 
        TextCluster5_SVD51 ;
   S_TextCluster5_SVD52  =     0.01404481825969 +     14.2716040933253 * 
        TextCluster5_SVD52 ;
   S_TextCluster5_SVD53  =    -0.04155339239115 +     13.8585628269297 * 
        TextCluster5_SVD53 ;
   S_TextCluster5_SVD54  =    -0.06060841033628 +     13.5957941720597 * 
        TextCluster5_SVD54 ;
   S_TextCluster5_SVD55  =    -0.07595560591844 +     13.3454815721179 * 
        TextCluster5_SVD55 ;
   S_TextCluster5_SVD56  =     0.00721822951718 +      14.207185920988 * 
        TextCluster5_SVD56 ;
   S_TextCluster5_SVD57  =     0.00106902301598 +     13.9250341632942 * 
        TextCluster5_SVD57 ;
   S_TextCluster5_SVD58  =    -0.07607872510708 +     13.6849429422407 * 
        TextCluster5_SVD58 ;
   S_TextCluster5_SVD59  =     0.00782682745019 +     14.2690823254866 * 
        TextCluster5_SVD59 ;
   S_TextCluster5_SVD6  =     0.02925035104856 +     7.31271170099887 * 
        TextCluster5_SVD6 ;
   S_TextCluster5_SVD60  =     0.01312696042215 +     13.6551355709693 * 
        TextCluster5_SVD60 ;
   S_TextCluster5_SVD61  =     0.10972440343763 +     14.4831197414492 * 
        TextCluster5_SVD61 ;
   S_TextCluster5_SVD62  =      0.0546970593357 +     14.1080620168779 * 
        TextCluster5_SVD62 ;
   S_TextCluster5_SVD63  =      0.0577037398396 +     14.2433226294961 * 
        TextCluster5_SVD63 ;
   S_TextCluster5_SVD64  =    -0.05921270500062 +     13.9571664164826 * 
        TextCluster5_SVD64 ;
   S_TextCluster5_SVD65  =     0.02676919978574 +     14.2887819372516 * 
        TextCluster5_SVD65 ;
   S_TextCluster5_SVD66  =    -0.05786380628216 +     13.5001521583865 * 
        TextCluster5_SVD66 ;
   S_TextCluster5_SVD67  =    -0.03360731154096 +     14.0479352970265 * 
        TextCluster5_SVD67 ;
   S_TextCluster5_SVD68  =     -0.0608654254307 +     13.3250439851879 * 
        TextCluster5_SVD68 ;
   S_TextCluster5_SVD69  =    -0.02232958545449 +     14.4878893114833 * 
        TextCluster5_SVD69 ;
   S_TextCluster5_SVD7  =    -0.03660116620082 +     7.45896445220185 * 
        TextCluster5_SVD7 ;
   S_TextCluster5_SVD70  =    -0.00240567213299 +     13.3832542272004 * 
        TextCluster5_SVD70 ;
   S_TextCluster5_SVD71  =    -0.07160768700163 +     14.1228489940125 * 
        TextCluster5_SVD71 ;
   S_TextCluster5_SVD72  =    -0.04129638804916 +     14.1204065679519 * 
        TextCluster5_SVD72 ;
   S_TextCluster5_SVD73  =    -0.01698589369351 +     13.7979747684621 * 
        TextCluster5_SVD73 ;
   S_TextCluster5_SVD74  =     0.08944423541055 +     13.4435109089327 * 
        TextCluster5_SVD74 ;
   S_TextCluster5_SVD75  =    -0.00355613175186 +     14.5943070269067 * 
        TextCluster5_SVD75 ;
   S_TextCluster5_SVD76  =     0.08120925301279 +     14.3078176685441 * 
        TextCluster5_SVD76 ;
   S_TextCluster5_SVD77  =     0.03774873721422 +     14.6078638316468 * 
        TextCluster5_SVD77 ;
   S_TextCluster5_SVD78  =    -0.00156998139037 +     13.7094687950148 * 
        TextCluster5_SVD78 ;
   S_TextCluster5_SVD79  =     0.00651919401595 +     14.1356783610931 * 
        TextCluster5_SVD79 ;
   S_TextCluster5_SVD8  =     0.12990262495455 +     7.71214603407628 * 
        TextCluster5_SVD8 ;
   S_TextCluster5_SVD80  =    -0.03317133730262 +     14.3326258507067 * 
        TextCluster5_SVD80 ;
   S_TextCluster5_SVD81  =    -0.01657167022678 +     13.7544550594531 * 
        TextCluster5_SVD81 ;
   S_TextCluster5_SVD82  =     0.00085916600347 +     13.8755511967072 * 
        TextCluster5_SVD82 ;
   S_TextCluster5_SVD83  =     0.00581837932764 +     13.6909246561326 * 
        TextCluster5_SVD83 ;
   S_TextCluster5_SVD84  =    -0.02390792168814 +      14.064747143488 * 
        TextCluster5_SVD84 ;
   S_TextCluster5_SVD85  =     0.06326733750946 +     14.1872501559975 * 
        TextCluster5_SVD85 ;
   S_TextCluster5_SVD86  =    -0.04377510842459 +       13.32076922315 * 
        TextCluster5_SVD86 ;
   S_TextCluster5_SVD87  =    -0.07881301305958 +     14.0470367516529 * 
        TextCluster5_SVD87 ;
   S_TextCluster5_SVD88  =     0.04310771572791 +     13.8046314257194 * 
        TextCluster5_SVD88 ;
   S_TextCluster5_SVD89  =     0.05886399586325 +     13.6707566025744 * 
        TextCluster5_SVD89 ;
   S_TextCluster5_SVD9  =     -0.0186043731367 +     8.37265779932565 * 
        TextCluster5_SVD9 ;
   S_TextCluster5_SVD90  =     0.00606060407607 +     14.4434734912737 * 
        TextCluster5_SVD90 ;
   S_TextCluster5_SVD91  =     0.01199584220563 +     14.1114488058554 * 
        TextCluster5_SVD91 ;
   S_TextCluster5_SVD92  =    -0.04986805689489 +     13.8453479120593 * 
        TextCluster5_SVD92 ;
   S_TextCluster5_SVD93  =    -0.00468892822347 +     13.9304849216594 * 
        TextCluster5_SVD93 ;
   S_TextCluster5_SVD94  =    -0.00749006536858 +     13.8317795937408 * 
        TextCluster5_SVD94 ;
   S_TextCluster5_SVD95  =     0.05434989850516 +     13.4051721993641 * 
        TextCluster5_SVD95 ;
   S_TextCluster5_SVD96  =     0.01947620486076 +     13.2993665648311 * 
        TextCluster5_SVD96 ;
   S_TextCluster5_SVD97  =    -0.01931975827313 +     13.8596062594304 * 
        TextCluster5_SVD97 ;
   S_TextCluster5_SVD98  =    -0.02601022100808 +     13.4995010269408 * 
        TextCluster5_SVD98 ;
   S_TextCluster5_SVD99  =     0.00644255992476 +     13.9895958236877 * 
        TextCluster5_SVD99 ;
END;
ELSE DO;
   IF MISSING( TextCluster5_SVD1 ) THEN S_TextCluster5_SVD1  = . ;
   ELSE S_TextCluster5_SVD1  =    -4.46694129318721 +     9.01023373759407 * 
        TextCluster5_SVD1 ;
   IF MISSING( TextCluster5_SVD10 ) THEN S_TextCluster5_SVD10  = . ;
   ELSE S_TextCluster5_SVD10  =    -0.14167548976744 +     7.94414179293071 * 
        TextCluster5_SVD10 ;
   IF MISSING( TextCluster5_SVD100 ) THEN S_TextCluster5_SVD100  = . ;
   ELSE S_TextCluster5_SVD100
          =    -0.01178537390938 +     13.9240063669361 * TextCluster5_SVD100
         ;
   IF MISSING( TextCluster5_SVD11 ) THEN S_TextCluster5_SVD11  = . ;
   ELSE S_TextCluster5_SVD11  =    -0.13840581255342 +     8.86972217735124 * 
        TextCluster5_SVD11 ;
   IF MISSING( TextCluster5_SVD12 ) THEN S_TextCluster5_SVD12  = . ;
   ELSE S_TextCluster5_SVD12  =    -0.05173262962971 +     9.25799911649105 * 
        TextCluster5_SVD12 ;
   IF MISSING( TextCluster5_SVD13 ) THEN S_TextCluster5_SVD13  = . ;
   ELSE S_TextCluster5_SVD13  =    -0.06828451809615 +     10.2068802805027 * 
        TextCluster5_SVD13 ;
   IF MISSING( TextCluster5_SVD14 ) THEN S_TextCluster5_SVD14  = . ;
   ELSE S_TextCluster5_SVD14  =     0.02035756112292 +     10.0918114077125 * 
        TextCluster5_SVD14 ;
   IF MISSING( TextCluster5_SVD15 ) THEN S_TextCluster5_SVD15  = . ;
   ELSE S_TextCluster5_SVD15  =    -0.02847433663397 +     10.1493011533211 * 
        TextCluster5_SVD15 ;
   IF MISSING( TextCluster5_SVD16 ) THEN S_TextCluster5_SVD16  = . ;
   ELSE S_TextCluster5_SVD16  =      0.0372303897004 +     11.2977978223552 * 
        TextCluster5_SVD16 ;
   IF MISSING( TextCluster5_SVD17 ) THEN S_TextCluster5_SVD17  = . ;
   ELSE S_TextCluster5_SVD17  =     0.00408867467267 +     11.0869604407133 * 
        TextCluster5_SVD17 ;
   IF MISSING( TextCluster5_SVD18 ) THEN S_TextCluster5_SVD18  = . ;
   ELSE S_TextCluster5_SVD18  =      0.0042012709139 +     13.6933082144394 * 
        TextCluster5_SVD18 ;
   IF MISSING( TextCluster5_SVD19 ) THEN S_TextCluster5_SVD19  = . ;
   ELSE S_TextCluster5_SVD19  =     0.04100241069381 +     10.8105216498639 * 
        TextCluster5_SVD19 ;
   IF MISSING( TextCluster5_SVD2 ) THEN S_TextCluster5_SVD2  = . ;
   ELSE S_TextCluster5_SVD2  =        0.16251549331 +      5.0860607976038 * 
        TextCluster5_SVD2 ;
   IF MISSING( TextCluster5_SVD20 ) THEN S_TextCluster5_SVD20  = . ;
   ELSE S_TextCluster5_SVD20  =     0.03034168134814 +     12.5134577796161 * 
        TextCluster5_SVD20 ;
   IF MISSING( TextCluster5_SVD21 ) THEN S_TextCluster5_SVD21  = . ;
   ELSE S_TextCluster5_SVD21  =     0.04838374033119 +     11.7629274912315 * 
        TextCluster5_SVD21 ;
   IF MISSING( TextCluster5_SVD22 ) THEN S_TextCluster5_SVD22  = . ;
   ELSE S_TextCluster5_SVD22  =      0.1916162689351 +     11.3497060276309 * 
        TextCluster5_SVD22 ;
   IF MISSING( TextCluster5_SVD23 ) THEN S_TextCluster5_SVD23  = . ;
   ELSE S_TextCluster5_SVD23  =    -0.00215465389213 +     12.1131164555223 * 
        TextCluster5_SVD23 ;
   IF MISSING( TextCluster5_SVD24 ) THEN S_TextCluster5_SVD24  = . ;
   ELSE S_TextCluster5_SVD24  =     0.01772269951362 +     12.5057199149617 * 
        TextCluster5_SVD24 ;
   IF MISSING( TextCluster5_SVD25 ) THEN S_TextCluster5_SVD25  = . ;
   ELSE S_TextCluster5_SVD25  =    -0.04742952016562 +     13.3189399970303 * 
        TextCluster5_SVD25 ;
   IF MISSING( TextCluster5_SVD26 ) THEN S_TextCluster5_SVD26  = . ;
   ELSE S_TextCluster5_SVD26  =    -0.09260810965673 +     12.8153624061873 * 
        TextCluster5_SVD26 ;
   IF MISSING( TextCluster5_SVD27 ) THEN S_TextCluster5_SVD27  = . ;
   ELSE S_TextCluster5_SVD27  =    -0.06296432549182 +     12.8449256120779 * 
        TextCluster5_SVD27 ;
   IF MISSING( TextCluster5_SVD28 ) THEN S_TextCluster5_SVD28  = . ;
   ELSE S_TextCluster5_SVD28  =    -0.04502029352991 +     12.9364406639091 * 
        TextCluster5_SVD28 ;
   IF MISSING( TextCluster5_SVD29 ) THEN S_TextCluster5_SVD29  = . ;
   ELSE S_TextCluster5_SVD29  =    -0.11111760109763 +     13.0831668026068 * 
        TextCluster5_SVD29 ;
   IF MISSING( TextCluster5_SVD3 ) THEN S_TextCluster5_SVD3  = . ;
   ELSE S_TextCluster5_SVD3  =     0.03476570022266 +     5.32904397984138 * 
        TextCluster5_SVD3 ;
   IF MISSING( TextCluster5_SVD30 ) THEN S_TextCluster5_SVD30  = . ;
   ELSE S_TextCluster5_SVD30  =     0.00213378980625 +     13.8315530288895 * 
        TextCluster5_SVD30 ;
   IF MISSING( TextCluster5_SVD31 ) THEN S_TextCluster5_SVD31  = . ;
   ELSE S_TextCluster5_SVD31  =     0.18486686786846 +     13.8791543756685 * 
        TextCluster5_SVD31 ;
   IF MISSING( TextCluster5_SVD32 ) THEN S_TextCluster5_SVD32  = . ;
   ELSE S_TextCluster5_SVD32  =      0.0870765128028 +     13.5350109303657 * 
        TextCluster5_SVD32 ;
   IF MISSING( TextCluster5_SVD33 ) THEN S_TextCluster5_SVD33  = . ;
   ELSE S_TextCluster5_SVD33  =     0.02773964853597 +     14.7922257206593 * 
        TextCluster5_SVD33 ;
   IF MISSING( TextCluster5_SVD34 ) THEN S_TextCluster5_SVD34  = . ;
   ELSE S_TextCluster5_SVD34  =     0.20953467459275 +     13.3112131431933 * 
        TextCluster5_SVD34 ;
   IF MISSING( TextCluster5_SVD35 ) THEN S_TextCluster5_SVD35  = . ;
   ELSE S_TextCluster5_SVD35  =     0.02638148125128 +     13.6380251400513 * 
        TextCluster5_SVD35 ;
   IF MISSING( TextCluster5_SVD36 ) THEN S_TextCluster5_SVD36  = . ;
   ELSE S_TextCluster5_SVD36  =     0.09197322746508 +      13.077788975921 * 
        TextCluster5_SVD36 ;
   IF MISSING( TextCluster5_SVD37 ) THEN S_TextCluster5_SVD37  = . ;
   ELSE S_TextCluster5_SVD37  =    -0.11290661670277 +     12.9409585199596 * 
        TextCluster5_SVD37 ;
   IF MISSING( TextCluster5_SVD38 ) THEN S_TextCluster5_SVD38  = . ;
   ELSE S_TextCluster5_SVD38  =     0.03230725001748 +     12.9421914860236 * 
        TextCluster5_SVD38 ;
   IF MISSING( TextCluster5_SVD39 ) THEN S_TextCluster5_SVD39  = . ;
   ELSE S_TextCluster5_SVD39  =    -0.07979445448338 +     12.9071028531713 * 
        TextCluster5_SVD39 ;
   IF MISSING( TextCluster5_SVD4 ) THEN S_TextCluster5_SVD4  = . ;
   ELSE S_TextCluster5_SVD4  =    -0.18101234030575 +     5.67597774775794 * 
        TextCluster5_SVD4 ;
   IF MISSING( TextCluster5_SVD40 ) THEN S_TextCluster5_SVD40  = . ;
   ELSE S_TextCluster5_SVD40  =     0.08269287996125 +     14.0988545468697 * 
        TextCluster5_SVD40 ;
   IF MISSING( TextCluster5_SVD41 ) THEN S_TextCluster5_SVD41  = . ;
   ELSE S_TextCluster5_SVD41  =    -0.03408878043262 +     14.2186225838689 * 
        TextCluster5_SVD41 ;
   IF MISSING( TextCluster5_SVD42 ) THEN S_TextCluster5_SVD42  = . ;
   ELSE S_TextCluster5_SVD42  =    -0.03648270022008 +     14.0824025226681 * 
        TextCluster5_SVD42 ;
   IF MISSING( TextCluster5_SVD43 ) THEN S_TextCluster5_SVD43  = . ;
   ELSE S_TextCluster5_SVD43  =    -0.04220657012686 +     14.1711007514738 * 
        TextCluster5_SVD43 ;
   IF MISSING( TextCluster5_SVD44 ) THEN S_TextCluster5_SVD44  = . ;
   ELSE S_TextCluster5_SVD44  =    -0.03100028475319 +     14.8703821822629 * 
        TextCluster5_SVD44 ;
   IF MISSING( TextCluster5_SVD45 ) THEN S_TextCluster5_SVD45  = . ;
   ELSE S_TextCluster5_SVD45  =    -0.01147285999109 +     13.4606355116489 * 
        TextCluster5_SVD45 ;
   IF MISSING( TextCluster5_SVD46 ) THEN S_TextCluster5_SVD46  = . ;
   ELSE S_TextCluster5_SVD46  =      0.0174267304425 +     13.8444617096028 * 
        TextCluster5_SVD46 ;
   IF MISSING( TextCluster5_SVD47 ) THEN S_TextCluster5_SVD47  = . ;
   ELSE S_TextCluster5_SVD47  =    -0.09597242170923 +     13.9386369828269 * 
        TextCluster5_SVD47 ;
   IF MISSING( TextCluster5_SVD48 ) THEN S_TextCluster5_SVD48  = . ;
   ELSE S_TextCluster5_SVD48  =     0.00643717436943 +     13.3784392458171 * 
        TextCluster5_SVD48 ;
   IF MISSING( TextCluster5_SVD49 ) THEN S_TextCluster5_SVD49  = . ;
   ELSE S_TextCluster5_SVD49  =     0.16974469582738 +     13.7372650564479 * 
        TextCluster5_SVD49 ;
   IF MISSING( TextCluster5_SVD5 ) THEN S_TextCluster5_SVD5  = . ;
   ELSE S_TextCluster5_SVD5  =    -0.04929454904276 +     5.75524703683232 * 
        TextCluster5_SVD5 ;
   IF MISSING( TextCluster5_SVD50 ) THEN S_TextCluster5_SVD50  = . ;
   ELSE S_TextCluster5_SVD50  =    -0.09359014793845 +     14.0640039012119 * 
        TextCluster5_SVD50 ;
   IF MISSING( TextCluster5_SVD51 ) THEN S_TextCluster5_SVD51  = . ;
   ELSE S_TextCluster5_SVD51  =      0.0311174329916 +     13.6020654511141 * 
        TextCluster5_SVD51 ;
   IF MISSING( TextCluster5_SVD52 ) THEN S_TextCluster5_SVD52  = . ;
   ELSE S_TextCluster5_SVD52  =     0.01404481825969 +     14.2716040933253 * 
        TextCluster5_SVD52 ;
   IF MISSING( TextCluster5_SVD53 ) THEN S_TextCluster5_SVD53  = . ;
   ELSE S_TextCluster5_SVD53  =    -0.04155339239115 +     13.8585628269297 * 
        TextCluster5_SVD53 ;
   IF MISSING( TextCluster5_SVD54 ) THEN S_TextCluster5_SVD54  = . ;
   ELSE S_TextCluster5_SVD54  =    -0.06060841033628 +     13.5957941720597 * 
        TextCluster5_SVD54 ;
   IF MISSING( TextCluster5_SVD55 ) THEN S_TextCluster5_SVD55  = . ;
   ELSE S_TextCluster5_SVD55  =    -0.07595560591844 +     13.3454815721179 * 
        TextCluster5_SVD55 ;
   IF MISSING( TextCluster5_SVD56 ) THEN S_TextCluster5_SVD56  = . ;
   ELSE S_TextCluster5_SVD56  =     0.00721822951718 +      14.207185920988 * 
        TextCluster5_SVD56 ;
   IF MISSING( TextCluster5_SVD57 ) THEN S_TextCluster5_SVD57  = . ;
   ELSE S_TextCluster5_SVD57  =     0.00106902301598 +     13.9250341632942 * 
        TextCluster5_SVD57 ;
   IF MISSING( TextCluster5_SVD58 ) THEN S_TextCluster5_SVD58  = . ;
   ELSE S_TextCluster5_SVD58  =    -0.07607872510708 +     13.6849429422407 * 
        TextCluster5_SVD58 ;
   IF MISSING( TextCluster5_SVD59 ) THEN S_TextCluster5_SVD59  = . ;
   ELSE S_TextCluster5_SVD59  =     0.00782682745019 +     14.2690823254866 * 
        TextCluster5_SVD59 ;
   IF MISSING( TextCluster5_SVD6 ) THEN S_TextCluster5_SVD6  = . ;
   ELSE S_TextCluster5_SVD6  =     0.02925035104856 +     7.31271170099887 * 
        TextCluster5_SVD6 ;
   IF MISSING( TextCluster5_SVD60 ) THEN S_TextCluster5_SVD60  = . ;
   ELSE S_TextCluster5_SVD60  =     0.01312696042215 +     13.6551355709693 * 
        TextCluster5_SVD60 ;
   IF MISSING( TextCluster5_SVD61 ) THEN S_TextCluster5_SVD61  = . ;
   ELSE S_TextCluster5_SVD61  =     0.10972440343763 +     14.4831197414492 * 
        TextCluster5_SVD61 ;
   IF MISSING( TextCluster5_SVD62 ) THEN S_TextCluster5_SVD62  = . ;
   ELSE S_TextCluster5_SVD62  =      0.0546970593357 +     14.1080620168779 * 
        TextCluster5_SVD62 ;
   IF MISSING( TextCluster5_SVD63 ) THEN S_TextCluster5_SVD63  = . ;
   ELSE S_TextCluster5_SVD63  =      0.0577037398396 +     14.2433226294961 * 
        TextCluster5_SVD63 ;
   IF MISSING( TextCluster5_SVD64 ) THEN S_TextCluster5_SVD64  = . ;
   ELSE S_TextCluster5_SVD64  =    -0.05921270500062 +     13.9571664164826 * 
        TextCluster5_SVD64 ;
   IF MISSING( TextCluster5_SVD65 ) THEN S_TextCluster5_SVD65  = . ;
   ELSE S_TextCluster5_SVD65  =     0.02676919978574 +     14.2887819372516 * 
        TextCluster5_SVD65 ;
   IF MISSING( TextCluster5_SVD66 ) THEN S_TextCluster5_SVD66  = . ;
   ELSE S_TextCluster5_SVD66  =    -0.05786380628216 +     13.5001521583865 * 
        TextCluster5_SVD66 ;
   IF MISSING( TextCluster5_SVD67 ) THEN S_TextCluster5_SVD67  = . ;
   ELSE S_TextCluster5_SVD67  =    -0.03360731154096 +     14.0479352970265 * 
        TextCluster5_SVD67 ;
   IF MISSING( TextCluster5_SVD68 ) THEN S_TextCluster5_SVD68  = . ;
   ELSE S_TextCluster5_SVD68  =     -0.0608654254307 +     13.3250439851879 * 
        TextCluster5_SVD68 ;
   IF MISSING( TextCluster5_SVD69 ) THEN S_TextCluster5_SVD69  = . ;
   ELSE S_TextCluster5_SVD69  =    -0.02232958545449 +     14.4878893114833 * 
        TextCluster5_SVD69 ;
   IF MISSING( TextCluster5_SVD7 ) THEN S_TextCluster5_SVD7  = . ;
   ELSE S_TextCluster5_SVD7  =    -0.03660116620082 +     7.45896445220185 * 
        TextCluster5_SVD7 ;
   IF MISSING( TextCluster5_SVD70 ) THEN S_TextCluster5_SVD70  = . ;
   ELSE S_TextCluster5_SVD70  =    -0.00240567213299 +     13.3832542272004 * 
        TextCluster5_SVD70 ;
   IF MISSING( TextCluster5_SVD71 ) THEN S_TextCluster5_SVD71  = . ;
   ELSE S_TextCluster5_SVD71  =    -0.07160768700163 +     14.1228489940125 * 
        TextCluster5_SVD71 ;
   IF MISSING( TextCluster5_SVD72 ) THEN S_TextCluster5_SVD72  = . ;
   ELSE S_TextCluster5_SVD72  =    -0.04129638804916 +     14.1204065679519 * 
        TextCluster5_SVD72 ;
   IF MISSING( TextCluster5_SVD73 ) THEN S_TextCluster5_SVD73  = . ;
   ELSE S_TextCluster5_SVD73  =    -0.01698589369351 +     13.7979747684621 * 
        TextCluster5_SVD73 ;
   IF MISSING( TextCluster5_SVD74 ) THEN S_TextCluster5_SVD74  = . ;
   ELSE S_TextCluster5_SVD74  =     0.08944423541055 +     13.4435109089327 * 
        TextCluster5_SVD74 ;
   IF MISSING( TextCluster5_SVD75 ) THEN S_TextCluster5_SVD75  = . ;
   ELSE S_TextCluster5_SVD75  =    -0.00355613175186 +     14.5943070269067 * 
        TextCluster5_SVD75 ;
   IF MISSING( TextCluster5_SVD76 ) THEN S_TextCluster5_SVD76  = . ;
   ELSE S_TextCluster5_SVD76  =     0.08120925301279 +     14.3078176685441 * 
        TextCluster5_SVD76 ;
   IF MISSING( TextCluster5_SVD77 ) THEN S_TextCluster5_SVD77  = . ;
   ELSE S_TextCluster5_SVD77  =     0.03774873721422 +     14.6078638316468 * 
        TextCluster5_SVD77 ;
   IF MISSING( TextCluster5_SVD78 ) THEN S_TextCluster5_SVD78  = . ;
   ELSE S_TextCluster5_SVD78  =    -0.00156998139037 +     13.7094687950148 * 
        TextCluster5_SVD78 ;
   IF MISSING( TextCluster5_SVD79 ) THEN S_TextCluster5_SVD79  = . ;
   ELSE S_TextCluster5_SVD79  =     0.00651919401595 +     14.1356783610931 * 
        TextCluster5_SVD79 ;
   IF MISSING( TextCluster5_SVD8 ) THEN S_TextCluster5_SVD8  = . ;
   ELSE S_TextCluster5_SVD8  =     0.12990262495455 +     7.71214603407628 * 
        TextCluster5_SVD8 ;
   IF MISSING( TextCluster5_SVD80 ) THEN S_TextCluster5_SVD80  = . ;
   ELSE S_TextCluster5_SVD80  =    -0.03317133730262 +     14.3326258507067 * 
        TextCluster5_SVD80 ;
   IF MISSING( TextCluster5_SVD81 ) THEN S_TextCluster5_SVD81  = . ;
   ELSE S_TextCluster5_SVD81  =    -0.01657167022678 +     13.7544550594531 * 
        TextCluster5_SVD81 ;
   IF MISSING( TextCluster5_SVD82 ) THEN S_TextCluster5_SVD82  = . ;
   ELSE S_TextCluster5_SVD82  =     0.00085916600347 +     13.8755511967072 * 
        TextCluster5_SVD82 ;
   IF MISSING( TextCluster5_SVD83 ) THEN S_TextCluster5_SVD83  = . ;
   ELSE S_TextCluster5_SVD83  =     0.00581837932764 +     13.6909246561326 * 
        TextCluster5_SVD83 ;
   IF MISSING( TextCluster5_SVD84 ) THEN S_TextCluster5_SVD84  = . ;
   ELSE S_TextCluster5_SVD84  =    -0.02390792168814 +      14.064747143488 * 
        TextCluster5_SVD84 ;
   IF MISSING( TextCluster5_SVD85 ) THEN S_TextCluster5_SVD85  = . ;
   ELSE S_TextCluster5_SVD85  =     0.06326733750946 +     14.1872501559975 * 
        TextCluster5_SVD85 ;
   IF MISSING( TextCluster5_SVD86 ) THEN S_TextCluster5_SVD86  = . ;
   ELSE S_TextCluster5_SVD86  =    -0.04377510842459 +       13.32076922315 * 
        TextCluster5_SVD86 ;
   IF MISSING( TextCluster5_SVD87 ) THEN S_TextCluster5_SVD87  = . ;
   ELSE S_TextCluster5_SVD87  =    -0.07881301305958 +     14.0470367516529 * 
        TextCluster5_SVD87 ;
   IF MISSING( TextCluster5_SVD88 ) THEN S_TextCluster5_SVD88  = . ;
   ELSE S_TextCluster5_SVD88  =     0.04310771572791 +     13.8046314257194 * 
        TextCluster5_SVD88 ;
   IF MISSING( TextCluster5_SVD89 ) THEN S_TextCluster5_SVD89  = . ;
   ELSE S_TextCluster5_SVD89  =     0.05886399586325 +     13.6707566025744 * 
        TextCluster5_SVD89 ;
   IF MISSING( TextCluster5_SVD9 ) THEN S_TextCluster5_SVD9  = . ;
   ELSE S_TextCluster5_SVD9  =     -0.0186043731367 +     8.37265779932565 * 
        TextCluster5_SVD9 ;
   IF MISSING( TextCluster5_SVD90 ) THEN S_TextCluster5_SVD90  = . ;
   ELSE S_TextCluster5_SVD90  =     0.00606060407607 +     14.4434734912737 * 
        TextCluster5_SVD90 ;
   IF MISSING( TextCluster5_SVD91 ) THEN S_TextCluster5_SVD91  = . ;
   ELSE S_TextCluster5_SVD91  =     0.01199584220563 +     14.1114488058554 * 
        TextCluster5_SVD91 ;
   IF MISSING( TextCluster5_SVD92 ) THEN S_TextCluster5_SVD92  = . ;
   ELSE S_TextCluster5_SVD92  =    -0.04986805689489 +     13.8453479120593 * 
        TextCluster5_SVD92 ;
   IF MISSING( TextCluster5_SVD93 ) THEN S_TextCluster5_SVD93  = . ;
   ELSE S_TextCluster5_SVD93  =    -0.00468892822347 +     13.9304849216594 * 
        TextCluster5_SVD93 ;
   IF MISSING( TextCluster5_SVD94 ) THEN S_TextCluster5_SVD94  = . ;
   ELSE S_TextCluster5_SVD94  =    -0.00749006536858 +     13.8317795937408 * 
        TextCluster5_SVD94 ;
   IF MISSING( TextCluster5_SVD95 ) THEN S_TextCluster5_SVD95  = . ;
   ELSE S_TextCluster5_SVD95  =     0.05434989850516 +     13.4051721993641 * 
        TextCluster5_SVD95 ;
   IF MISSING( TextCluster5_SVD96 ) THEN S_TextCluster5_SVD96  = . ;
   ELSE S_TextCluster5_SVD96  =     0.01947620486076 +     13.2993665648311 * 
        TextCluster5_SVD96 ;
   IF MISSING( TextCluster5_SVD97 ) THEN S_TextCluster5_SVD97  = . ;
   ELSE S_TextCluster5_SVD97  =    -0.01931975827313 +     13.8596062594304 * 
        TextCluster5_SVD97 ;
   IF MISSING( TextCluster5_SVD98 ) THEN S_TextCluster5_SVD98  = . ;
   ELSE S_TextCluster5_SVD98  =    -0.02601022100808 +     13.4995010269408 * 
        TextCluster5_SVD98 ;
   IF MISSING( TextCluster5_SVD99 ) THEN S_TextCluster5_SVD99  = . ;
   ELSE S_TextCluster5_SVD99  =     0.00644255992476 +     13.9895958236877 * 
        TextCluster5_SVD99 ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =    -0.07715998500126 * S_TextCluster5_SVD1
          +     0.10625204179818 * S_TextCluster5_SVD10
          +     0.13611761336841 * S_TextCluster5_SVD100
          +    -0.09627119030406 * S_TextCluster5_SVD11
          +     0.26630479322155 * S_TextCluster5_SVD12
          +     0.05647444722808 * S_TextCluster5_SVD13
          +     0.22971500147903 * S_TextCluster5_SVD14
          +     0.48400908160031 * S_TextCluster5_SVD15
          +     0.09971855092826 * S_TextCluster5_SVD16
          +     0.20341432079941 * S_TextCluster5_SVD17
          +    -0.02903167198473 * S_TextCluster5_SVD18
          +      0.2679112597786 * S_TextCluster5_SVD19
          +     0.31933077005618 * S_TextCluster5_SVD2
          +     0.04694644509307 * S_TextCluster5_SVD20
          +     0.21807014673648 * S_TextCluster5_SVD21
          +     0.22121170313335 * S_TextCluster5_SVD22
          +     0.06524685994704 * S_TextCluster5_SVD23
          +    -0.16141238073738 * S_TextCluster5_SVD24
          +     0.29344326354744 * S_TextCluster5_SVD25
          +     0.17597223832751 * S_TextCluster5_SVD26
          +    -0.34772354034921 * S_TextCluster5_SVD27
          +    -0.22172320583515 * S_TextCluster5_SVD28
          +     0.08449011014636 * S_TextCluster5_SVD29
          +    -0.18826017080222 * S_TextCluster5_SVD3
          +    -0.01356904597578 * S_TextCluster5_SVD30
          +     0.19768062964477 * S_TextCluster5_SVD31
          +      0.0416244748573 * S_TextCluster5_SVD32
          +    -0.17414005797971 * S_TextCluster5_SVD33
          +    -0.34182539135626 * S_TextCluster5_SVD34
          +     0.17221958806932 * S_TextCluster5_SVD35
          +     0.42641267866456 * S_TextCluster5_SVD36
          +     0.01549482888871 * S_TextCluster5_SVD37
          +     0.27151347378216 * S_TextCluster5_SVD38
          +    -0.21490216359101 * S_TextCluster5_SVD39
          +     0.02154159034339 * S_TextCluster5_SVD4
          +    -0.38711338167494 * S_TextCluster5_SVD40
          +    -0.13174324889172 * S_TextCluster5_SVD41
          +    -0.15247092202005 * S_TextCluster5_SVD42
          +     0.24770713861251 * S_TextCluster5_SVD43
          +    -0.10466508385731 * S_TextCluster5_SVD44
          +    -0.26967258553871 * S_TextCluster5_SVD45
          +     0.16467694114394 * S_TextCluster5_SVD46
          +    -0.11585141572974 * S_TextCluster5_SVD47
          +     0.18051160267425 * S_TextCluster5_SVD48
          +     0.02221125252072 * S_TextCluster5_SVD49
          +       0.064694067274 * S_TextCluster5_SVD5
          +     0.14334716384828 * S_TextCluster5_SVD50
          +     0.38140950948551 * S_TextCluster5_SVD51
          +     0.00528242430338 * S_TextCluster5_SVD52
          +    -0.06818507181397 * S_TextCluster5_SVD53
          +    -0.14065194671007 * S_TextCluster5_SVD54
          +     -0.2653072255611 * S_TextCluster5_SVD55
          +    -0.03576055980111 * S_TextCluster5_SVD56
          +     0.02997999900625 * S_TextCluster5_SVD57
          +    -0.16857713999856 * S_TextCluster5_SVD58
          +    -0.22065631419621 * S_TextCluster5_SVD59
          +     -0.6042515260257 * S_TextCluster5_SVD6
          +     -0.2433568159347 * S_TextCluster5_SVD60
          +     0.05454216837413 * S_TextCluster5_SVD61
          +     0.04525303936004 * S_TextCluster5_SVD62
          +    -0.37420582403581 * S_TextCluster5_SVD63
          +     0.14174388407725 * S_TextCluster5_SVD64
          +     0.26090197133249 * S_TextCluster5_SVD65
          +     0.18107740197294 * S_TextCluster5_SVD66
          +    -0.01969838826146 * S_TextCluster5_SVD67
          +    -0.27859245224284 * S_TextCluster5_SVD68
          +      0.0444117421988 * S_TextCluster5_SVD69
          +    -0.87192410637679 * S_TextCluster5_SVD7
          +      0.1194910819273 * S_TextCluster5_SVD70
          +    -0.27391394585854 * S_TextCluster5_SVD71
          +     0.22484768081109 * S_TextCluster5_SVD72
          +       0.288886362343 * S_TextCluster5_SVD73
          +     0.23912390636988 * S_TextCluster5_SVD74
          +    -0.08658597465826 * S_TextCluster5_SVD75
          +     0.17627123025354 * S_TextCluster5_SVD76
          +    -0.17177320156883 * S_TextCluster5_SVD77
          +     0.10235649562442 * S_TextCluster5_SVD78
          +      0.1488434167143 * S_TextCluster5_SVD79
          +    -0.31666338900451 * S_TextCluster5_SVD8
          +     0.15016079394339 * S_TextCluster5_SVD80
          +     0.10765812577955 * S_TextCluster5_SVD81
          +     0.03935673119732 * S_TextCluster5_SVD82
          +    -0.23827342307795 * S_TextCluster5_SVD83
          +    -0.49107399713267 * S_TextCluster5_SVD84
          +    -0.06459590179893 * S_TextCluster5_SVD85
          +     -0.0560685788224 * S_TextCluster5_SVD86
          +    -0.01239002262065 * S_TextCluster5_SVD87
          +     0.01773864598334 * S_TextCluster5_SVD88
          +    -0.19409456750858 * S_TextCluster5_SVD89
          +      0.3175551720968 * S_TextCluster5_SVD9
          +    -0.00603613216225 * S_TextCluster5_SVD90
          +    -0.09384659155988 * S_TextCluster5_SVD91
          +    -0.10929633224158 * S_TextCluster5_SVD92
          +    -0.17377169827468 * S_TextCluster5_SVD93
          +    -0.04814607442075 * S_TextCluster5_SVD94
          +    -0.03534798452048 * S_TextCluster5_SVD95
          +     0.10305250281126 * S_TextCluster5_SVD96
          +    -0.18550017620548 * S_TextCluster5_SVD97
          +    -0.10340767288559 * S_TextCluster5_SVD98
          +    -0.00935340385296 * S_TextCluster5_SVD99 ;
   H12  =    -0.37066863778289 * S_TextCluster5_SVD1
          +    -0.00123214844623 * S_TextCluster5_SVD10
          +     0.27512200251757 * S_TextCluster5_SVD100
          +    -0.80298699956518 * S_TextCluster5_SVD11
          +     0.76189817626472 * S_TextCluster5_SVD12
          +     0.71750322411684 * S_TextCluster5_SVD13
          +     0.89603474070457 * S_TextCluster5_SVD14
          +    -0.04425798326625 * S_TextCluster5_SVD15
          +    -0.12533410338357 * S_TextCluster5_SVD16
          +     0.78092353945352 * S_TextCluster5_SVD17
          +    -0.29380520939807 * S_TextCluster5_SVD18
          +     -0.1395096676207 * S_TextCluster5_SVD19
          +    -0.95850359542091 * S_TextCluster5_SVD2
          +    -0.02232380508709 * S_TextCluster5_SVD20
          +    -0.22015284187164 * S_TextCluster5_SVD21
          +     0.26568691930571 * S_TextCluster5_SVD22
          +    -0.57093902331819 * S_TextCluster5_SVD23
          +     0.68726983087022 * S_TextCluster5_SVD24
          +    -0.36835717295907 * S_TextCluster5_SVD25
          +    -0.20401103572003 * S_TextCluster5_SVD26
          +     0.57688286478926 * S_TextCluster5_SVD27
          +      0.2134087477618 * S_TextCluster5_SVD28
          +     0.29205987659838 * S_TextCluster5_SVD29
          +     0.62082271026786 * S_TextCluster5_SVD3
          +     0.06106566246319 * S_TextCluster5_SVD30
          +     -0.2613888541532 * S_TextCluster5_SVD31
          +    -0.19597326787429 * S_TextCluster5_SVD32
          +     0.39791092894943 * S_TextCluster5_SVD33
          +      0.0769287415117 * S_TextCluster5_SVD34
          +    -0.08312344078586 * S_TextCluster5_SVD35
          +      -0.124899681836 * S_TextCluster5_SVD36
          +     0.34433063460882 * S_TextCluster5_SVD37
          +     0.40574013639157 * S_TextCluster5_SVD38
          +    -0.44531568012924 * S_TextCluster5_SVD39
          +     0.92818313249236 * S_TextCluster5_SVD4
          +    -0.13175394070581 * S_TextCluster5_SVD40
          +    -0.00620007707298 * S_TextCluster5_SVD41
          +    -0.31697997117223 * S_TextCluster5_SVD42
          +     0.01738364766379 * S_TextCluster5_SVD43
          +    -0.03995748408327 * S_TextCluster5_SVD44
          +    -0.37052378026046 * S_TextCluster5_SVD45
          +     0.22602708083093 * S_TextCluster5_SVD46
          +     0.04052000433148 * S_TextCluster5_SVD47
          +     0.36410601711702 * S_TextCluster5_SVD48
          +      0.1881734406944 * S_TextCluster5_SVD49
          +     0.21767205781466 * S_TextCluster5_SVD5
          +     0.17817578903365 * S_TextCluster5_SVD50
          +     0.11588650030522 * S_TextCluster5_SVD51
          +     -0.0850122698937 * S_TextCluster5_SVD52
          +     0.05199845218911 * S_TextCluster5_SVD53
          +     -0.2478540959186 * S_TextCluster5_SVD54
          +    -0.15410734543411 * S_TextCluster5_SVD55
          +    -0.19044113883682 * S_TextCluster5_SVD56
          +     0.38292376304065 * S_TextCluster5_SVD57
          +     -0.0588710195067 * S_TextCluster5_SVD58
          +    -0.20801703963614 * S_TextCluster5_SVD59
          +    -0.00391442548292 * S_TextCluster5_SVD6
          +      0.0807297583582 * S_TextCluster5_SVD60
          +    -0.14512920367626 * S_TextCluster5_SVD61
          +    -0.26339847737675 * S_TextCluster5_SVD62
          +     -0.1993919490776 * S_TextCluster5_SVD63
          +    -0.02352031784856 * S_TextCluster5_SVD64
          +     0.08272553520284 * S_TextCluster5_SVD65
          +    -0.13172966224809 * S_TextCluster5_SVD66
          +     0.06455775410442 * S_TextCluster5_SVD67
          +     0.07341529357699 * S_TextCluster5_SVD68
          +     0.08977211667395 * S_TextCluster5_SVD69
          +      0.1850872108426 * S_TextCluster5_SVD7
          +    -0.25560397852175 * S_TextCluster5_SVD70
          +    -0.11027963881185 * S_TextCluster5_SVD71
          +    -0.09908102609792 * S_TextCluster5_SVD72
          +    -0.00074581658631 * S_TextCluster5_SVD73
          +    -0.36298822933888 * S_TextCluster5_SVD74
          +     0.17191369635042 * S_TextCluster5_SVD75
          +    -0.27966803635746 * S_TextCluster5_SVD76
          +     0.02670686978087 * S_TextCluster5_SVD77
          +     0.07243469659724 * S_TextCluster5_SVD78
          +     0.09003518364096 * S_TextCluster5_SVD79
          +     0.27589453400383 * S_TextCluster5_SVD8
          +    -0.16440902326506 * S_TextCluster5_SVD80
          +     0.28910877869597 * S_TextCluster5_SVD81
          +     -0.3955285431547 * S_TextCluster5_SVD82
          +    -0.13059657162222 * S_TextCluster5_SVD83
          +     -0.0329941399517 * S_TextCluster5_SVD84
          +    -0.21705714810518 * S_TextCluster5_SVD85
          +     0.23542560652614 * S_TextCluster5_SVD86
          +    -0.15481883982948 * S_TextCluster5_SVD87
          +     -0.0380655697879 * S_TextCluster5_SVD88
          +     0.24060264182876 * S_TextCluster5_SVD89
          +     0.49654532765921 * S_TextCluster5_SVD9
          +     0.13534863704829 * S_TextCluster5_SVD90
          +     0.16252568130814 * S_TextCluster5_SVD91
          +    -0.26159027404993 * S_TextCluster5_SVD92
          +     0.38228964043123 * S_TextCluster5_SVD93
          +      0.1271833651882 * S_TextCluster5_SVD94
          +     0.02000848611698 * S_TextCluster5_SVD95
          +    -0.34011183691044 * S_TextCluster5_SVD96
          +     0.02301982812526 * S_TextCluster5_SVD97
          +     0.00309818863693 * S_TextCluster5_SVD98
          +    -0.15217174249915 * S_TextCluster5_SVD99 ;
   H13  =    -0.07908709163004 * S_TextCluster5_SVD1
          +     0.57859951268029 * S_TextCluster5_SVD10
          +      0.1779766503379 * S_TextCluster5_SVD100
          +    -0.19657023595986 * S_TextCluster5_SVD11
          +    -0.25407756972123 * S_TextCluster5_SVD12
          +    -0.13999004234923 * S_TextCluster5_SVD13
          +     0.09155618777923 * S_TextCluster5_SVD14
          +    -0.03467175319303 * S_TextCluster5_SVD15
          +     0.34654588549096 * S_TextCluster5_SVD16
          +    -0.03914684422674 * S_TextCluster5_SVD17
          +     0.23158147289398 * S_TextCluster5_SVD18
          +     0.01755366502482 * S_TextCluster5_SVD19
          +     0.06586698182027 * S_TextCluster5_SVD2
          +    -0.06406900959171 * S_TextCluster5_SVD20
          +    -0.11339448387815 * S_TextCluster5_SVD21
          +     0.04941940819925 * S_TextCluster5_SVD22
          +    -0.17264530516921 * S_TextCluster5_SVD23
          +      0.0760052746902 * S_TextCluster5_SVD24
          +      0.2304620631284 * S_TextCluster5_SVD25
          +    -0.05110051786225 * S_TextCluster5_SVD26
          +    -0.11392718859375 * S_TextCluster5_SVD27
          +     0.01395701181095 * S_TextCluster5_SVD28
          +    -0.19261989674575 * S_TextCluster5_SVD29
          +      0.5696847109825 * S_TextCluster5_SVD3
          +     0.09797639477119 * S_TextCluster5_SVD30
          +    -0.09037717675365 * S_TextCluster5_SVD31
          +     0.03208024786802 * S_TextCluster5_SVD32
          +    -0.05237319051674 * S_TextCluster5_SVD33
          +    -0.07792775367907 * S_TextCluster5_SVD34
          +      0.0196300294901 * S_TextCluster5_SVD35
          +    -0.07534105660406 * S_TextCluster5_SVD36
          +     -0.2577737047329 * S_TextCluster5_SVD37
          +    -0.13243386968226 * S_TextCluster5_SVD38
          +    -0.02206205894695 * S_TextCluster5_SVD39
          +     0.65345310360302 * S_TextCluster5_SVD4
          +     0.08586459169862 * S_TextCluster5_SVD40
          +     0.03543031783304 * S_TextCluster5_SVD41
          +     0.00463443578438 * S_TextCluster5_SVD42
          +     -0.0723657981408 * S_TextCluster5_SVD43
          +     0.14152168831624 * S_TextCluster5_SVD44
          +      0.0595348528887 * S_TextCluster5_SVD45
          +     0.09713697028613 * S_TextCluster5_SVD46
          +    -0.02433155347131 * S_TextCluster5_SVD47
          +     0.17884895575461 * S_TextCluster5_SVD48
          +     0.03754294474838 * S_TextCluster5_SVD49
          +     0.78181550916432 * S_TextCluster5_SVD5
          +    -0.26432660955981 * S_TextCluster5_SVD50
          +     0.00036685400475 * S_TextCluster5_SVD51
          +    -0.00862554783455 * S_TextCluster5_SVD52
          +     0.07566428157722 * S_TextCluster5_SVD53
          +     0.16248742444501 * S_TextCluster5_SVD54
          +     0.01501465130378 * S_TextCluster5_SVD55
          +    -0.00468261849181 * S_TextCluster5_SVD56
          +     0.21428083456015 * S_TextCluster5_SVD57
          +     0.08770892968555 * S_TextCluster5_SVD58
          +     0.03522029109769 * S_TextCluster5_SVD59
          +    -0.22930150149526 * S_TextCluster5_SVD6
          +     0.03762896872154 * S_TextCluster5_SVD60
          +    -0.13304506036504 * S_TextCluster5_SVD61
          +    -0.16589833873003 * S_TextCluster5_SVD62
          +    -0.08651760914721 * S_TextCluster5_SVD63
          +        -0.0030287047 * S_TextCluster5_SVD64
          +     0.02506518756079 * S_TextCluster5_SVD65
          +    -0.03802873787187 * S_TextCluster5_SVD66
          +     0.11163735207744 * S_TextCluster5_SVD67
          +     0.17602020155831 * S_TextCluster5_SVD68
          +     0.11328184054943 * S_TextCluster5_SVD69
          +     0.02183859534325 * S_TextCluster5_SVD7
          +     0.08480641481573 * S_TextCluster5_SVD70
          +     0.10999197301912 * S_TextCluster5_SVD71
          +     0.01272468244493 * S_TextCluster5_SVD72
          +    -0.11204744466493 * S_TextCluster5_SVD73
          +     0.03555754653757 * S_TextCluster5_SVD74
          +    -0.00389549190819 * S_TextCluster5_SVD75
          +    -0.08125154913031 * S_TextCluster5_SVD76
          +    -0.04566185038966 * S_TextCluster5_SVD77
          +     0.27182734317799 * S_TextCluster5_SVD78
          +     0.09368662411745 * S_TextCluster5_SVD79
          +     -0.1373481917953 * S_TextCluster5_SVD8
          +     0.12292978041498 * S_TextCluster5_SVD80
          +     0.12890171340634 * S_TextCluster5_SVD81
          +    -0.05011824178751 * S_TextCluster5_SVD82
          +    -0.07012102102289 * S_TextCluster5_SVD83
          +     0.13819019780558 * S_TextCluster5_SVD84
          +     0.09620054395595 * S_TextCluster5_SVD85
          +     0.08606375081866 * S_TextCluster5_SVD86
          +    -0.14753734389428 * S_TextCluster5_SVD87
          +     0.01542100078611 * S_TextCluster5_SVD88
          +    -0.10957542943973 * S_TextCluster5_SVD89
          +     0.10676767073204 * S_TextCluster5_SVD9
          +     0.11744319011058 * S_TextCluster5_SVD90
          +     0.07074981426252 * S_TextCluster5_SVD91
          +     0.15014223752698 * S_TextCluster5_SVD92
          +     0.07463915321059 * S_TextCluster5_SVD93
          +     0.11608077571105 * S_TextCluster5_SVD94
          +     0.07146273307919 * S_TextCluster5_SVD95
          +    -0.07332736062425 * S_TextCluster5_SVD96
          +     0.03134936082882 * S_TextCluster5_SVD97
          +    -0.04884683393955 * S_TextCluster5_SVD98
          +     0.09245219713544 * S_TextCluster5_SVD99 ;
   H11  =    -0.16133505671015 + H11 ;
   H12  =       0.104536994719 + H12 ;
   H13  =    -0.50664142802042 + H13 ;
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
   P_CategoryTEACHER  =    -0.53661360008431 * H11  +     2.15197257729255 * 
        H12  +    -1.47455732659277 * H13 ;
   P_CategorySALES  =     -3.6509907500602 * H11  +     0.47519018727448 * H12
          +     1.29426902708742 * H13 ;
   P_CategoryOTHER  =     1.40940854688368 * H11  +    -1.57389265205375 * H12
          +     1.63520091845273 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =     -0.8978081341626 * H11
          +    -1.89422203724954 * H12  +     0.36157771327903 * H13 ;
   P_CategoryHR  =    -0.84276590931418 * H11  +    -0.66593089558688 * H12
          +    -1.98639578316685 * H13 ;
   P_CategoryHEALTHCARE  =     0.71986532155893 * H11
          +     0.86886668601841 * H12  +    -2.88762395843079 * H13 ;
   P_CategoryFITNESS  =    -1.48047327923637 * H11  +    -1.40787040815558 * 
        H12  +     1.06006360649935 * H13 ;
   P_CategoryDIGITAL_MEDIA  =    -0.20982471781236 * H11
          +    -2.07984120413498 * H12  +     2.57507576546675 * H13 ;
   P_CategoryDESIGNER  =     2.47302622959038 * H11  +     1.20173329193331 * 
        H12  +        2.33265808916 * H13 ;
   P_CategoryCONSULTANT  =     2.26294408258912 * H11
          +     0.70341126932714 * H12  +    -1.15777785256477 * H13 ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -0.98470987387909 * H11
          +     2.82258258002953 * H12  +     0.65790364658797 * H13 ;
   P_CategoryTEACHER  =    -0.21667795146521 + P_CategoryTEACHER ;
   P_CategorySALES  =     -1.1917370077478 + P_CategorySALES ;
   P_CategoryOTHER  =     0.46398252394538 + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  =     0.32896788947998 + 
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =    -0.58770105419257 + P_CategoryHR ;
   P_CategoryHEALTHCARE  =    -0.78430030202929 + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  =     1.24808620455017 + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  =      0.0245614872082 + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  =    -1.13284875213171 + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  =    -0.58759964222205 + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  =     -0.3078933784203 + 
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
