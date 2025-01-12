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
      label S_TextCluster13_SVD1 = 'Standard: TextCluster13_SVD1' ;

      label S_TextCluster13_SVD10 = 'Standard: TextCluster13_SVD10' ;

      label S_TextCluster13_SVD100 = 'Standard: TextCluster13_SVD100' ;

      label S_TextCluster13_SVD11 = 'Standard: TextCluster13_SVD11' ;

      label S_TextCluster13_SVD12 = 'Standard: TextCluster13_SVD12' ;

      label S_TextCluster13_SVD13 = 'Standard: TextCluster13_SVD13' ;

      label S_TextCluster13_SVD14 = 'Standard: TextCluster13_SVD14' ;

      label S_TextCluster13_SVD15 = 'Standard: TextCluster13_SVD15' ;

      label S_TextCluster13_SVD16 = 'Standard: TextCluster13_SVD16' ;

      label S_TextCluster13_SVD17 = 'Standard: TextCluster13_SVD17' ;

      label S_TextCluster13_SVD18 = 'Standard: TextCluster13_SVD18' ;

      label S_TextCluster13_SVD19 = 'Standard: TextCluster13_SVD19' ;

      label S_TextCluster13_SVD2 = 'Standard: TextCluster13_SVD2' ;

      label S_TextCluster13_SVD20 = 'Standard: TextCluster13_SVD20' ;

      label S_TextCluster13_SVD21 = 'Standard: TextCluster13_SVD21' ;

      label S_TextCluster13_SVD22 = 'Standard: TextCluster13_SVD22' ;

      label S_TextCluster13_SVD23 = 'Standard: TextCluster13_SVD23' ;

      label S_TextCluster13_SVD24 = 'Standard: TextCluster13_SVD24' ;

      label S_TextCluster13_SVD25 = 'Standard: TextCluster13_SVD25' ;

      label S_TextCluster13_SVD26 = 'Standard: TextCluster13_SVD26' ;

      label S_TextCluster13_SVD27 = 'Standard: TextCluster13_SVD27' ;

      label S_TextCluster13_SVD28 = 'Standard: TextCluster13_SVD28' ;

      label S_TextCluster13_SVD29 = 'Standard: TextCluster13_SVD29' ;

      label S_TextCluster13_SVD3 = 'Standard: TextCluster13_SVD3' ;

      label S_TextCluster13_SVD30 = 'Standard: TextCluster13_SVD30' ;

      label S_TextCluster13_SVD31 = 'Standard: TextCluster13_SVD31' ;

      label S_TextCluster13_SVD32 = 'Standard: TextCluster13_SVD32' ;

      label S_TextCluster13_SVD33 = 'Standard: TextCluster13_SVD33' ;

      label S_TextCluster13_SVD34 = 'Standard: TextCluster13_SVD34' ;

      label S_TextCluster13_SVD35 = 'Standard: TextCluster13_SVD35' ;

      label S_TextCluster13_SVD36 = 'Standard: TextCluster13_SVD36' ;

      label S_TextCluster13_SVD37 = 'Standard: TextCluster13_SVD37' ;

      label S_TextCluster13_SVD38 = 'Standard: TextCluster13_SVD38' ;

      label S_TextCluster13_SVD39 = 'Standard: TextCluster13_SVD39' ;

      label S_TextCluster13_SVD4 = 'Standard: TextCluster13_SVD4' ;

      label S_TextCluster13_SVD40 = 'Standard: TextCluster13_SVD40' ;

      label S_TextCluster13_SVD41 = 'Standard: TextCluster13_SVD41' ;

      label S_TextCluster13_SVD42 = 'Standard: TextCluster13_SVD42' ;

      label S_TextCluster13_SVD43 = 'Standard: TextCluster13_SVD43' ;

      label S_TextCluster13_SVD44 = 'Standard: TextCluster13_SVD44' ;

      label S_TextCluster13_SVD45 = 'Standard: TextCluster13_SVD45' ;

      label S_TextCluster13_SVD46 = 'Standard: TextCluster13_SVD46' ;

      label S_TextCluster13_SVD47 = 'Standard: TextCluster13_SVD47' ;

      label S_TextCluster13_SVD48 = 'Standard: TextCluster13_SVD48' ;

      label S_TextCluster13_SVD49 = 'Standard: TextCluster13_SVD49' ;

      label S_TextCluster13_SVD5 = 'Standard: TextCluster13_SVD5' ;

      label S_TextCluster13_SVD50 = 'Standard: TextCluster13_SVD50' ;

      label S_TextCluster13_SVD51 = 'Standard: TextCluster13_SVD51' ;

      label S_TextCluster13_SVD52 = 'Standard: TextCluster13_SVD52' ;

      label S_TextCluster13_SVD53 = 'Standard: TextCluster13_SVD53' ;

      label S_TextCluster13_SVD54 = 'Standard: TextCluster13_SVD54' ;

      label S_TextCluster13_SVD55 = 'Standard: TextCluster13_SVD55' ;

      label S_TextCluster13_SVD56 = 'Standard: TextCluster13_SVD56' ;

      label S_TextCluster13_SVD57 = 'Standard: TextCluster13_SVD57' ;

      label S_TextCluster13_SVD58 = 'Standard: TextCluster13_SVD58' ;

      label S_TextCluster13_SVD59 = 'Standard: TextCluster13_SVD59' ;

      label S_TextCluster13_SVD6 = 'Standard: TextCluster13_SVD6' ;

      label S_TextCluster13_SVD60 = 'Standard: TextCluster13_SVD60' ;

      label S_TextCluster13_SVD61 = 'Standard: TextCluster13_SVD61' ;

      label S_TextCluster13_SVD62 = 'Standard: TextCluster13_SVD62' ;

      label S_TextCluster13_SVD63 = 'Standard: TextCluster13_SVD63' ;

      label S_TextCluster13_SVD64 = 'Standard: TextCluster13_SVD64' ;

      label S_TextCluster13_SVD65 = 'Standard: TextCluster13_SVD65' ;

      label S_TextCluster13_SVD66 = 'Standard: TextCluster13_SVD66' ;

      label S_TextCluster13_SVD67 = 'Standard: TextCluster13_SVD67' ;

      label S_TextCluster13_SVD68 = 'Standard: TextCluster13_SVD68' ;

      label S_TextCluster13_SVD69 = 'Standard: TextCluster13_SVD69' ;

      label S_TextCluster13_SVD7 = 'Standard: TextCluster13_SVD7' ;

      label S_TextCluster13_SVD70 = 'Standard: TextCluster13_SVD70' ;

      label S_TextCluster13_SVD71 = 'Standard: TextCluster13_SVD71' ;

      label S_TextCluster13_SVD72 = 'Standard: TextCluster13_SVD72' ;

      label S_TextCluster13_SVD73 = 'Standard: TextCluster13_SVD73' ;

      label S_TextCluster13_SVD74 = 'Standard: TextCluster13_SVD74' ;

      label S_TextCluster13_SVD75 = 'Standard: TextCluster13_SVD75' ;

      label S_TextCluster13_SVD76 = 'Standard: TextCluster13_SVD76' ;

      label S_TextCluster13_SVD77 = 'Standard: TextCluster13_SVD77' ;

      label S_TextCluster13_SVD78 = 'Standard: TextCluster13_SVD78' ;

      label S_TextCluster13_SVD79 = 'Standard: TextCluster13_SVD79' ;

      label S_TextCluster13_SVD8 = 'Standard: TextCluster13_SVD8' ;

      label S_TextCluster13_SVD80 = 'Standard: TextCluster13_SVD80' ;

      label S_TextCluster13_SVD81 = 'Standard: TextCluster13_SVD81' ;

      label S_TextCluster13_SVD82 = 'Standard: TextCluster13_SVD82' ;

      label S_TextCluster13_SVD83 = 'Standard: TextCluster13_SVD83' ;

      label S_TextCluster13_SVD84 = 'Standard: TextCluster13_SVD84' ;

      label S_TextCluster13_SVD85 = 'Standard: TextCluster13_SVD85' ;

      label S_TextCluster13_SVD86 = 'Standard: TextCluster13_SVD86' ;

      label S_TextCluster13_SVD87 = 'Standard: TextCluster13_SVD87' ;

      label S_TextCluster13_SVD88 = 'Standard: TextCluster13_SVD88' ;

      label S_TextCluster13_SVD89 = 'Standard: TextCluster13_SVD89' ;

      label S_TextCluster13_SVD9 = 'Standard: TextCluster13_SVD9' ;

      label S_TextCluster13_SVD90 = 'Standard: TextCluster13_SVD90' ;

      label S_TextCluster13_SVD91 = 'Standard: TextCluster13_SVD91' ;

      label S_TextCluster13_SVD92 = 'Standard: TextCluster13_SVD92' ;

      label S_TextCluster13_SVD93 = 'Standard: TextCluster13_SVD93' ;

      label S_TextCluster13_SVD94 = 'Standard: TextCluster13_SVD94' ;

      label S_TextCluster13_SVD95 = 'Standard: TextCluster13_SVD95' ;

      label S_TextCluster13_SVD96 = 'Standard: TextCluster13_SVD96' ;

      label S_TextCluster13_SVD97 = 'Standard: TextCluster13_SVD97' ;

      label S_TextCluster13_SVD98 = 'Standard: TextCluster13_SVD98' ;

      label S_TextCluster13_SVD99 = 'Standard: TextCluster13_SVD99' ;

      label S_TextTopic_raw1 = 'Standard: TextTopic_raw1' ;

      label S_TextTopic_raw10 = 'Standard: TextTopic_raw10' ;

      label S_TextTopic_raw11 = 'Standard: TextTopic_raw11' ;

      label S_TextTopic_raw12 = 'Standard: TextTopic_raw12' ;

      label S_TextTopic_raw2 = 'Standard: TextTopic_raw2' ;

      label S_TextTopic_raw3 = 'Standard: TextTopic_raw3' ;

      label S_TextTopic_raw4 = 'Standard: TextTopic_raw4' ;

      label S_TextTopic_raw5 = 'Standard: TextTopic_raw5' ;

      label S_TextTopic_raw6 = 'Standard: TextTopic_raw6' ;

      label S_TextTopic_raw7 = 'Standard: TextTopic_raw7' ;

      label S_TextTopic_raw8 = 'Standard: TextTopic_raw8' ;

      label S_TextTopic_raw9 = 'Standard: TextTopic_raw9' ;

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
   TextCluster13_SVD1 ,
   TextCluster13_SVD10 ,
   TextCluster13_SVD100 ,
   TextCluster13_SVD11 ,
   TextCluster13_SVD12 ,
   TextCluster13_SVD13 ,
   TextCluster13_SVD14 ,
   TextCluster13_SVD15 ,
   TextCluster13_SVD16 ,
   TextCluster13_SVD17 ,
   TextCluster13_SVD18 ,
   TextCluster13_SVD19 ,
   TextCluster13_SVD2 ,
   TextCluster13_SVD20 ,
   TextCluster13_SVD21 ,
   TextCluster13_SVD22 ,
   TextCluster13_SVD23 ,
   TextCluster13_SVD24 ,
   TextCluster13_SVD25 ,
   TextCluster13_SVD26 ,
   TextCluster13_SVD27 ,
   TextCluster13_SVD28 ,
   TextCluster13_SVD29 ,
   TextCluster13_SVD3 ,
   TextCluster13_SVD30 ,
   TextCluster13_SVD31 ,
   TextCluster13_SVD32 ,
   TextCluster13_SVD33 ,
   TextCluster13_SVD34 ,
   TextCluster13_SVD35 ,
   TextCluster13_SVD36 ,
   TextCluster13_SVD37 ,
   TextCluster13_SVD38 ,
   TextCluster13_SVD39 ,
   TextCluster13_SVD4 ,
   TextCluster13_SVD40 ,
   TextCluster13_SVD41 ,
   TextCluster13_SVD42 ,
   TextCluster13_SVD43 ,
   TextCluster13_SVD44 ,
   TextCluster13_SVD45 ,
   TextCluster13_SVD46 ,
   TextCluster13_SVD47 ,
   TextCluster13_SVD48 ,
   TextCluster13_SVD49 ,
   TextCluster13_SVD5 ,
   TextCluster13_SVD50 ,
   TextCluster13_SVD51 ,
   TextCluster13_SVD52 ,
   TextCluster13_SVD53 ,
   TextCluster13_SVD54 ,
   TextCluster13_SVD55 ,
   TextCluster13_SVD56 ,
   TextCluster13_SVD57 ,
   TextCluster13_SVD58 ,
   TextCluster13_SVD59 ,
   TextCluster13_SVD6 ,
   TextCluster13_SVD60 ,
   TextCluster13_SVD61 ,
   TextCluster13_SVD62 ,
   TextCluster13_SVD63 ,
   TextCluster13_SVD64 ,
   TextCluster13_SVD65 ,
   TextCluster13_SVD66 ,
   TextCluster13_SVD67 ,
   TextCluster13_SVD68 ,
   TextCluster13_SVD69 ,
   TextCluster13_SVD7 ,
   TextCluster13_SVD70 ,
   TextCluster13_SVD71 ,
   TextCluster13_SVD72 ,
   TextCluster13_SVD73 ,
   TextCluster13_SVD74 ,
   TextCluster13_SVD75 ,
   TextCluster13_SVD76 ,
   TextCluster13_SVD77 ,
   TextCluster13_SVD78 ,
   TextCluster13_SVD79 ,
   TextCluster13_SVD8 ,
   TextCluster13_SVD80 ,
   TextCluster13_SVD81 ,
   TextCluster13_SVD82 ,
   TextCluster13_SVD83 ,
   TextCluster13_SVD84 ,
   TextCluster13_SVD85 ,
   TextCluster13_SVD86 ,
   TextCluster13_SVD87 ,
   TextCluster13_SVD88 ,
   TextCluster13_SVD89 ,
   TextCluster13_SVD9 ,
   TextCluster13_SVD90 ,
   TextCluster13_SVD91 ,
   TextCluster13_SVD92 ,
   TextCluster13_SVD93 ,
   TextCluster13_SVD94 ,
   TextCluster13_SVD95 ,
   TextCluster13_SVD96 ,
   TextCluster13_SVD97 ,
   TextCluster13_SVD98 ,
   TextCluster13_SVD99 ,
   TextTopic_raw1 ,
   TextTopic_raw10 ,
   TextTopic_raw11 ,
   TextTopic_raw12 ,
   TextTopic_raw2 ,
   TextTopic_raw3 ,
   TextTopic_raw4 ,
   TextTopic_raw5 ,
   TextTopic_raw6 ,
   TextTopic_raw7 ,
   TextTopic_raw8 ,
   TextTopic_raw9   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster13_SVD1  =    -4.28510606929308 +     9.66306977996348 *
        TextCluster13_SVD1 ;
   S_TextCluster13_SVD10  =     0.04106711222608 +     7.45180236373577 *
        TextCluster13_SVD10 ;
   S_TextCluster13_SVD100  =    -0.08766152867752 +     15.1992377490007 *
        TextCluster13_SVD100 ;
   S_TextCluster13_SVD11  =    -0.05235334011013 +     9.19109333716906 *
        TextCluster13_SVD11 ;
   S_TextCluster13_SVD12  =    -0.04523765342911 +     9.49899485467046 *
        TextCluster13_SVD12 ;
   S_TextCluster13_SVD13  =     0.02261588360505 +     8.96437899687832 *
        TextCluster13_SVD13 ;
   S_TextCluster13_SVD14  =    -0.12870528517608 +     11.1843012143055 *
        TextCluster13_SVD14 ;
   S_TextCluster13_SVD15  =     0.09360847845064 +     10.1513151889711 *
        TextCluster13_SVD15 ;
   S_TextCluster13_SVD16  =     0.02652029157941 +     11.3800915181938 *
        TextCluster13_SVD16 ;
   S_TextCluster13_SVD17  =    -0.01714557941046 +     12.0074346533609 *
        TextCluster13_SVD17 ;
   S_TextCluster13_SVD18  =     0.08357392093637 +      10.776812893565 *
        TextCluster13_SVD18 ;
   S_TextCluster13_SVD19  =    -0.15006068732604 +     10.8579368176861 *
        TextCluster13_SVD19 ;
   S_TextCluster13_SVD2  =     0.23635714340843 +     4.64872227050232 *
        TextCluster13_SVD2 ;
   S_TextCluster13_SVD20  =     0.08557686808304 +     11.0096633063987 *
        TextCluster13_SVD20 ;
   S_TextCluster13_SVD21  =    -0.07683793695364 +     11.6332786695967 *
        TextCluster13_SVD21 ;
   S_TextCluster13_SVD22  =     0.03152782829993 +     11.8253524089626 *
        TextCluster13_SVD22 ;
   S_TextCluster13_SVD23  =    -0.00255042018325 +     11.7617663607392 *
        TextCluster13_SVD23 ;
   S_TextCluster13_SVD24  =    -0.04147538971245 +     11.5288256232928 *
        TextCluster13_SVD24 ;
   S_TextCluster13_SVD25  =     0.10164840116797 +     11.7761994579378 *
        TextCluster13_SVD25 ;
   S_TextCluster13_SVD26  =      0.1223382893618 +     12.1709162929762 *
        TextCluster13_SVD26 ;
   S_TextCluster13_SVD27  =    -0.02628221009335 +     12.9276406392854 *
        TextCluster13_SVD27 ;
   S_TextCluster13_SVD28  =      0.0266036097616 +     12.9309637066507 *
        TextCluster13_SVD28 ;
   S_TextCluster13_SVD29  =    -0.03229257583526 +     12.8732592702676 *
        TextCluster13_SVD29 ;
   S_TextCluster13_SVD3  =     0.13223159905652 +     4.75441848096707 *
        TextCluster13_SVD3 ;
   S_TextCluster13_SVD30  =     0.07939569859343 +     13.6737030796742 *
        TextCluster13_SVD30 ;
   S_TextCluster13_SVD31  =     0.01453940293489 +     13.5874699041492 *
        TextCluster13_SVD31 ;
   S_TextCluster13_SVD32  =      0.0510867497544 +     13.5206723180615 *
        TextCluster13_SVD32 ;
   S_TextCluster13_SVD33  =     0.00203901343035 +     13.2228000740626 *
        TextCluster13_SVD33 ;
   S_TextCluster13_SVD34  =     0.00962781738502 +     13.0301657907581 *
        TextCluster13_SVD34 ;
   S_TextCluster13_SVD35  =     0.02616294239437 +     13.9152585869308 *
        TextCluster13_SVD35 ;
   S_TextCluster13_SVD36  =      0.0071379357172 +     12.3808954158011 *
        TextCluster13_SVD36 ;
   S_TextCluster13_SVD37  =    -0.01623564764521 +     13.9951125056962 *
        TextCluster13_SVD37 ;
   S_TextCluster13_SVD38  =     0.00116112791932 +     13.1169461784816 *
        TextCluster13_SVD38 ;
   S_TextCluster13_SVD39  =    -0.03978258736012 +     13.9218390709738 *
        TextCluster13_SVD39 ;
   S_TextCluster13_SVD4  =    -0.21837576381513 +     4.79611905574112 *
        TextCluster13_SVD4 ;
   S_TextCluster13_SVD40  =     0.02149482524644 +      14.374561467383 *
        TextCluster13_SVD40 ;
   S_TextCluster13_SVD41  =    -0.08026729897919 +     13.3055079453838 *
        TextCluster13_SVD41 ;
   S_TextCluster13_SVD42  =     0.01413890597073 +     14.5670514385145 *
        TextCluster13_SVD42 ;
   S_TextCluster13_SVD43  =    -0.05535868280358 +     13.3429754212401 *
        TextCluster13_SVD43 ;
   S_TextCluster13_SVD44  =     0.01698826248839 +     13.6494723939699 *
        TextCluster13_SVD44 ;
   S_TextCluster13_SVD45  =    -0.13371205621724 +     14.7777715410572 *
        TextCluster13_SVD45 ;
   S_TextCluster13_SVD46  =      0.0146805340865 +     14.3600743366902 *
        TextCluster13_SVD46 ;
   S_TextCluster13_SVD47  =    -0.02769622521716 +     14.2530994839849 *
        TextCluster13_SVD47 ;
   S_TextCluster13_SVD48  =      0.0313539415708 +     13.7018851530244 *
        TextCluster13_SVD48 ;
   S_TextCluster13_SVD49  =    -0.03427782119259 +      14.247719807645 *
        TextCluster13_SVD49 ;
   S_TextCluster13_SVD5  =     0.25974651596863 +     5.20348202469969 *
        TextCluster13_SVD5 ;
   S_TextCluster13_SVD50  =     -0.0371769231098 +     13.6801201431174 *
        TextCluster13_SVD50 ;
   S_TextCluster13_SVD51  =     0.13193113072099 +     13.7035954333265 *
        TextCluster13_SVD51 ;
   S_TextCluster13_SVD52  =    -0.00303539880531 +     14.0621296460942 *
        TextCluster13_SVD52 ;
   S_TextCluster13_SVD53  =     0.00668905291955 +     14.6671820683733 *
        TextCluster13_SVD53 ;
   S_TextCluster13_SVD54  =    -0.00482779740282 +     15.1240940563917 *
        TextCluster13_SVD54 ;
   S_TextCluster13_SVD55  =     0.00419114143683 +     15.2094977642232 *
        TextCluster13_SVD55 ;
   S_TextCluster13_SVD56  =    -0.01462854573809 +     13.8411140815818 *
        TextCluster13_SVD56 ;
   S_TextCluster13_SVD57  =    -0.00276351522364 +     14.4234798701256 *
        TextCluster13_SVD57 ;
   S_TextCluster13_SVD58  =    -0.01051081084149 +     14.6507235616806 *
        TextCluster13_SVD58 ;
   S_TextCluster13_SVD59  =    -0.03538565723211 +     15.2332027802693 *
        TextCluster13_SVD59 ;
   S_TextCluster13_SVD6  =     0.08711942051733 +     5.80014988846751 *
        TextCluster13_SVD6 ;
   S_TextCluster13_SVD60  =    -0.06681111738339 +     14.9425640257634 *
        TextCluster13_SVD60 ;
   S_TextCluster13_SVD61  =     0.10019383057144 +      15.329182741572 *
        TextCluster13_SVD61 ;
   S_TextCluster13_SVD62  =    -0.02680120132396 +     13.9219336269609 *
        TextCluster13_SVD62 ;
   S_TextCluster13_SVD63  =    -0.02399142716582 +     13.9918054123957 *
        TextCluster13_SVD63 ;
   S_TextCluster13_SVD64  =    -0.03222850473276 +     14.1776283854938 *
        TextCluster13_SVD64 ;
   S_TextCluster13_SVD65  =    -0.00348263293218 +     14.7546371992541 *
        TextCluster13_SVD65 ;
   S_TextCluster13_SVD66  =    -0.02112232008446 +     15.3207858654043 *
        TextCluster13_SVD66 ;
   S_TextCluster13_SVD67  =    -0.01361404842886 +     15.2433450925312 *
        TextCluster13_SVD67 ;
   S_TextCluster13_SVD68  =     0.11117727696691 +     14.3653362220822 *
        TextCluster13_SVD68 ;
   S_TextCluster13_SVD69  =     0.01874580001763 +     14.9538011838543 *
        TextCluster13_SVD69 ;
   S_TextCluster13_SVD7  =     0.15102198014529 +     5.84942824010202 *
        TextCluster13_SVD7 ;
   S_TextCluster13_SVD70  =    -0.02259885209884 +     14.5738608152621 *
        TextCluster13_SVD70 ;
   S_TextCluster13_SVD71  =       0.072857962221 +     15.1198163865925 *
        TextCluster13_SVD71 ;
   S_TextCluster13_SVD72  =     0.01267723923077 +     14.7076481561274 *
        TextCluster13_SVD72 ;
   S_TextCluster13_SVD73  =     -0.0278491012917 +     15.2449330491436 *
        TextCluster13_SVD73 ;
   S_TextCluster13_SVD74  =     0.00074381382638 +     14.9782655900694 *
        TextCluster13_SVD74 ;
   S_TextCluster13_SVD75  =    -0.03923352593631 +     15.6094167475939 *
        TextCluster13_SVD75 ;
   S_TextCluster13_SVD76  =    -0.02460349693698 +     15.1702409362964 *
        TextCluster13_SVD76 ;
   S_TextCluster13_SVD77  =     0.01204193517209 +     15.5278871176592 *
        TextCluster13_SVD77 ;
   S_TextCluster13_SVD78  =    -0.02457786741061 +     14.3929889573414 *
        TextCluster13_SVD78 ;
   S_TextCluster13_SVD79  =     0.00986904289126 +      15.355607713703 *
        TextCluster13_SVD79 ;
   S_TextCluster13_SVD8  =     0.01040387503016 +      6.7316723156876 *
        TextCluster13_SVD8 ;
   S_TextCluster13_SVD80  =    -0.04852743259816 +     14.8183182753651 *
        TextCluster13_SVD80 ;
   S_TextCluster13_SVD81  =    -0.03044814407717 +     15.1542783971194 *
        TextCluster13_SVD81 ;
   S_TextCluster13_SVD82  =     0.03508327690591 +     14.9624769001847 *
        TextCluster13_SVD82 ;
   S_TextCluster13_SVD83  =    -0.02382377270395 +     15.0924492738353 *
        TextCluster13_SVD83 ;
   S_TextCluster13_SVD84  =     0.02453329390274 +     15.1951807146024 *
        TextCluster13_SVD84 ;
   S_TextCluster13_SVD85  =     0.00588110805426 +     14.9764222355011 *
        TextCluster13_SVD85 ;
   S_TextCluster13_SVD86  =    -0.00500987427278 +     14.6899165206528 *
        TextCluster13_SVD86 ;
   S_TextCluster13_SVD87  =    -0.00744183627823 +     15.0319166593391 *
        TextCluster13_SVD87 ;
   S_TextCluster13_SVD88  =    -0.02703985862575 +     15.4728720594193 *
        TextCluster13_SVD88 ;
   S_TextCluster13_SVD89  =    -0.00852793398273 +     15.1653203185411 *
        TextCluster13_SVD89 ;
   S_TextCluster13_SVD9  =     0.06106150497343 +     7.25785953831764 *
        TextCluster13_SVD9 ;
   S_TextCluster13_SVD90  =    -0.13868913315053 +     14.6150553887938 *
        TextCluster13_SVD90 ;
   S_TextCluster13_SVD91  =    -0.01433572862859 +     15.1455948653772 *
        TextCluster13_SVD91 ;
   S_TextCluster13_SVD92  =     0.02642361915516 +      14.648816148363 *
        TextCluster13_SVD92 ;
   S_TextCluster13_SVD93  =    -0.02433459126526 +     15.2618724351659 *
        TextCluster13_SVD93 ;
   S_TextCluster13_SVD94  =    -0.01565008124835 +     14.3069955227901 *
        TextCluster13_SVD94 ;
   S_TextCluster13_SVD95  =     0.02725245912947 +     14.7746528477439 *
        TextCluster13_SVD95 ;
   S_TextCluster13_SVD96  =     0.02206222812673 +     14.8308150640929 *
        TextCluster13_SVD96 ;
   S_TextCluster13_SVD97  =     0.08336629700049 +     15.3056348483792 *
        TextCluster13_SVD97 ;
   S_TextCluster13_SVD98  =     0.01228650889099 +     15.0837706424057 *
        TextCluster13_SVD98 ;
   S_TextCluster13_SVD99  =    -0.04533636000317 +     15.0416109994092 *
        TextCluster13_SVD99 ;
   S_TextTopic_raw1  =    -0.65821997060728 +      7.5972302455572 *
        TextTopic_raw1 ;
   S_TextTopic_raw10  =    -0.77147369871014 +     10.7829055810758 *
        TextTopic_raw10 ;
   S_TextTopic_raw11  =    -1.02974593132823 +     14.9941401165578 *
        TextTopic_raw11 ;
   S_TextTopic_raw12  =      -0.789744516711 +     15.0576465138109 *
        TextTopic_raw12 ;
   S_TextTopic_raw2  =    -0.60124908042594 +     7.56937968521001 *
        TextTopic_raw2 ;
   S_TextTopic_raw3  =    -0.55929972171006 +     7.85759275523888 *
        TextTopic_raw3 ;
   S_TextTopic_raw4  =    -1.00384954797098 +     10.3979498283762 *
        TextTopic_raw4 ;
   S_TextTopic_raw5  =    -0.96883377006116 +     12.2733997635746 *
        TextTopic_raw5 ;
   S_TextTopic_raw6  =    -0.60933085657818 +     10.6025299427828 *
        TextTopic_raw6 ;
   S_TextTopic_raw7  =     -0.6718982007017 +      10.892850995164 *
        TextTopic_raw7 ;
   S_TextTopic_raw8  =    -0.59343934776624 +      11.329862062557 *
        TextTopic_raw8 ;
   S_TextTopic_raw9  =    -0.69449731094346 +     9.72454944584798 *
        TextTopic_raw9 ;
END;
ELSE DO;
   IF MISSING( TextCluster13_SVD1 ) THEN S_TextCluster13_SVD1  = . ;
   ELSE S_TextCluster13_SVD1  =    -4.28510606929308 +     9.66306977996348 *
        TextCluster13_SVD1 ;
   IF MISSING( TextCluster13_SVD10 ) THEN S_TextCluster13_SVD10  = . ;
   ELSE S_TextCluster13_SVD10
          =     0.04106711222608 +     7.45180236373577 * TextCluster13_SVD10
         ;
   IF MISSING( TextCluster13_SVD100 ) THEN S_TextCluster13_SVD100  = . ;
   ELSE S_TextCluster13_SVD100
          =    -0.08766152867752 +     15.1992377490007 * TextCluster13_SVD100
         ;
   IF MISSING( TextCluster13_SVD11 ) THEN S_TextCluster13_SVD11  = . ;
   ELSE S_TextCluster13_SVD11
          =    -0.05235334011013 +     9.19109333716906 * TextCluster13_SVD11
         ;
   IF MISSING( TextCluster13_SVD12 ) THEN S_TextCluster13_SVD12  = . ;
   ELSE S_TextCluster13_SVD12
          =    -0.04523765342911 +     9.49899485467046 * TextCluster13_SVD12
         ;
   IF MISSING( TextCluster13_SVD13 ) THEN S_TextCluster13_SVD13  = . ;
   ELSE S_TextCluster13_SVD13
          =     0.02261588360505 +     8.96437899687832 * TextCluster13_SVD13
         ;
   IF MISSING( TextCluster13_SVD14 ) THEN S_TextCluster13_SVD14  = . ;
   ELSE S_TextCluster13_SVD14
          =    -0.12870528517608 +     11.1843012143055 * TextCluster13_SVD14
         ;
   IF MISSING( TextCluster13_SVD15 ) THEN S_TextCluster13_SVD15  = . ;
   ELSE S_TextCluster13_SVD15
          =     0.09360847845064 +     10.1513151889711 * TextCluster13_SVD15
         ;
   IF MISSING( TextCluster13_SVD16 ) THEN S_TextCluster13_SVD16  = . ;
   ELSE S_TextCluster13_SVD16
          =     0.02652029157941 +     11.3800915181938 * TextCluster13_SVD16
         ;
   IF MISSING( TextCluster13_SVD17 ) THEN S_TextCluster13_SVD17  = . ;
   ELSE S_TextCluster13_SVD17
          =    -0.01714557941046 +     12.0074346533609 * TextCluster13_SVD17
         ;
   IF MISSING( TextCluster13_SVD18 ) THEN S_TextCluster13_SVD18  = . ;
   ELSE S_TextCluster13_SVD18
          =     0.08357392093637 +      10.776812893565 * TextCluster13_SVD18
         ;
   IF MISSING( TextCluster13_SVD19 ) THEN S_TextCluster13_SVD19  = . ;
   ELSE S_TextCluster13_SVD19
          =    -0.15006068732604 +     10.8579368176861 * TextCluster13_SVD19
         ;
   IF MISSING( TextCluster13_SVD2 ) THEN S_TextCluster13_SVD2  = . ;
   ELSE S_TextCluster13_SVD2  =     0.23635714340843 +     4.64872227050232 *
        TextCluster13_SVD2 ;
   IF MISSING( TextCluster13_SVD20 ) THEN S_TextCluster13_SVD20  = . ;
   ELSE S_TextCluster13_SVD20
          =     0.08557686808304 +     11.0096633063987 * TextCluster13_SVD20
         ;
   IF MISSING( TextCluster13_SVD21 ) THEN S_TextCluster13_SVD21  = . ;
   ELSE S_TextCluster13_SVD21
          =    -0.07683793695364 +     11.6332786695967 * TextCluster13_SVD21
         ;
   IF MISSING( TextCluster13_SVD22 ) THEN S_TextCluster13_SVD22  = . ;
   ELSE S_TextCluster13_SVD22
          =     0.03152782829993 +     11.8253524089626 * TextCluster13_SVD22
         ;
   IF MISSING( TextCluster13_SVD23 ) THEN S_TextCluster13_SVD23  = . ;
   ELSE S_TextCluster13_SVD23
          =    -0.00255042018325 +     11.7617663607392 * TextCluster13_SVD23
         ;
   IF MISSING( TextCluster13_SVD24 ) THEN S_TextCluster13_SVD24  = . ;
   ELSE S_TextCluster13_SVD24
          =    -0.04147538971245 +     11.5288256232928 * TextCluster13_SVD24
         ;
   IF MISSING( TextCluster13_SVD25 ) THEN S_TextCluster13_SVD25  = . ;
   ELSE S_TextCluster13_SVD25
          =     0.10164840116797 +     11.7761994579378 * TextCluster13_SVD25
         ;
   IF MISSING( TextCluster13_SVD26 ) THEN S_TextCluster13_SVD26  = . ;
   ELSE S_TextCluster13_SVD26
          =      0.1223382893618 +     12.1709162929762 * TextCluster13_SVD26
         ;
   IF MISSING( TextCluster13_SVD27 ) THEN S_TextCluster13_SVD27  = . ;
   ELSE S_TextCluster13_SVD27
          =    -0.02628221009335 +     12.9276406392854 * TextCluster13_SVD27
         ;
   IF MISSING( TextCluster13_SVD28 ) THEN S_TextCluster13_SVD28  = . ;
   ELSE S_TextCluster13_SVD28
          =      0.0266036097616 +     12.9309637066507 * TextCluster13_SVD28
         ;
   IF MISSING( TextCluster13_SVD29 ) THEN S_TextCluster13_SVD29  = . ;
   ELSE S_TextCluster13_SVD29
          =    -0.03229257583526 +     12.8732592702676 * TextCluster13_SVD29
         ;
   IF MISSING( TextCluster13_SVD3 ) THEN S_TextCluster13_SVD3  = . ;
   ELSE S_TextCluster13_SVD3  =     0.13223159905652 +     4.75441848096707 *
        TextCluster13_SVD3 ;
   IF MISSING( TextCluster13_SVD30 ) THEN S_TextCluster13_SVD30  = . ;
   ELSE S_TextCluster13_SVD30
          =     0.07939569859343 +     13.6737030796742 * TextCluster13_SVD30
         ;
   IF MISSING( TextCluster13_SVD31 ) THEN S_TextCluster13_SVD31  = . ;
   ELSE S_TextCluster13_SVD31
          =     0.01453940293489 +     13.5874699041492 * TextCluster13_SVD31
         ;
   IF MISSING( TextCluster13_SVD32 ) THEN S_TextCluster13_SVD32  = . ;
   ELSE S_TextCluster13_SVD32
          =      0.0510867497544 +     13.5206723180615 * TextCluster13_SVD32
         ;
   IF MISSING( TextCluster13_SVD33 ) THEN S_TextCluster13_SVD33  = . ;
   ELSE S_TextCluster13_SVD33
          =     0.00203901343035 +     13.2228000740626 * TextCluster13_SVD33
         ;
   IF MISSING( TextCluster13_SVD34 ) THEN S_TextCluster13_SVD34  = . ;
   ELSE S_TextCluster13_SVD34
          =     0.00962781738502 +     13.0301657907581 * TextCluster13_SVD34
         ;
   IF MISSING( TextCluster13_SVD35 ) THEN S_TextCluster13_SVD35  = . ;
   ELSE S_TextCluster13_SVD35
          =     0.02616294239437 +     13.9152585869308 * TextCluster13_SVD35
         ;
   IF MISSING( TextCluster13_SVD36 ) THEN S_TextCluster13_SVD36  = . ;
   ELSE S_TextCluster13_SVD36
          =      0.0071379357172 +     12.3808954158011 * TextCluster13_SVD36
         ;
   IF MISSING( TextCluster13_SVD37 ) THEN S_TextCluster13_SVD37  = . ;
   ELSE S_TextCluster13_SVD37
          =    -0.01623564764521 +     13.9951125056962 * TextCluster13_SVD37
         ;
   IF MISSING( TextCluster13_SVD38 ) THEN S_TextCluster13_SVD38  = . ;
   ELSE S_TextCluster13_SVD38
          =     0.00116112791932 +     13.1169461784816 * TextCluster13_SVD38
         ;
   IF MISSING( TextCluster13_SVD39 ) THEN S_TextCluster13_SVD39  = . ;
   ELSE S_TextCluster13_SVD39
          =    -0.03978258736012 +     13.9218390709738 * TextCluster13_SVD39
         ;
   IF MISSING( TextCluster13_SVD4 ) THEN S_TextCluster13_SVD4  = . ;
   ELSE S_TextCluster13_SVD4  =    -0.21837576381513 +     4.79611905574112 *
        TextCluster13_SVD4 ;
   IF MISSING( TextCluster13_SVD40 ) THEN S_TextCluster13_SVD40  = . ;
   ELSE S_TextCluster13_SVD40
          =     0.02149482524644 +      14.374561467383 * TextCluster13_SVD40
         ;
   IF MISSING( TextCluster13_SVD41 ) THEN S_TextCluster13_SVD41  = . ;
   ELSE S_TextCluster13_SVD41
          =    -0.08026729897919 +     13.3055079453838 * TextCluster13_SVD41
         ;
   IF MISSING( TextCluster13_SVD42 ) THEN S_TextCluster13_SVD42  = . ;
   ELSE S_TextCluster13_SVD42
          =     0.01413890597073 +     14.5670514385145 * TextCluster13_SVD42
         ;
   IF MISSING( TextCluster13_SVD43 ) THEN S_TextCluster13_SVD43  = . ;
   ELSE S_TextCluster13_SVD43
          =    -0.05535868280358 +     13.3429754212401 * TextCluster13_SVD43
         ;
   IF MISSING( TextCluster13_SVD44 ) THEN S_TextCluster13_SVD44  = . ;
   ELSE S_TextCluster13_SVD44
          =     0.01698826248839 +     13.6494723939699 * TextCluster13_SVD44
         ;
   IF MISSING( TextCluster13_SVD45 ) THEN S_TextCluster13_SVD45  = . ;
   ELSE S_TextCluster13_SVD45
          =    -0.13371205621724 +     14.7777715410572 * TextCluster13_SVD45
         ;
   IF MISSING( TextCluster13_SVD46 ) THEN S_TextCluster13_SVD46  = . ;
   ELSE S_TextCluster13_SVD46
          =      0.0146805340865 +     14.3600743366902 * TextCluster13_SVD46
         ;
   IF MISSING( TextCluster13_SVD47 ) THEN S_TextCluster13_SVD47  = . ;
   ELSE S_TextCluster13_SVD47
          =    -0.02769622521716 +     14.2530994839849 * TextCluster13_SVD47
         ;
   IF MISSING( TextCluster13_SVD48 ) THEN S_TextCluster13_SVD48  = . ;
   ELSE S_TextCluster13_SVD48
          =      0.0313539415708 +     13.7018851530244 * TextCluster13_SVD48
         ;
   IF MISSING( TextCluster13_SVD49 ) THEN S_TextCluster13_SVD49  = . ;
   ELSE S_TextCluster13_SVD49
          =    -0.03427782119259 +      14.247719807645 * TextCluster13_SVD49
         ;
   IF MISSING( TextCluster13_SVD5 ) THEN S_TextCluster13_SVD5  = . ;
   ELSE S_TextCluster13_SVD5  =     0.25974651596863 +     5.20348202469969 *
        TextCluster13_SVD5 ;
   IF MISSING( TextCluster13_SVD50 ) THEN S_TextCluster13_SVD50  = . ;
   ELSE S_TextCluster13_SVD50
          =     -0.0371769231098 +     13.6801201431174 * TextCluster13_SVD50
         ;
   IF MISSING( TextCluster13_SVD51 ) THEN S_TextCluster13_SVD51  = . ;
   ELSE S_TextCluster13_SVD51
          =     0.13193113072099 +     13.7035954333265 * TextCluster13_SVD51
         ;
   IF MISSING( TextCluster13_SVD52 ) THEN S_TextCluster13_SVD52  = . ;
   ELSE S_TextCluster13_SVD52
          =    -0.00303539880531 +     14.0621296460942 * TextCluster13_SVD52
         ;
   IF MISSING( TextCluster13_SVD53 ) THEN S_TextCluster13_SVD53  = . ;
   ELSE S_TextCluster13_SVD53
          =     0.00668905291955 +     14.6671820683733 * TextCluster13_SVD53
         ;
   IF MISSING( TextCluster13_SVD54 ) THEN S_TextCluster13_SVD54  = . ;
   ELSE S_TextCluster13_SVD54
          =    -0.00482779740282 +     15.1240940563917 * TextCluster13_SVD54
         ;
   IF MISSING( TextCluster13_SVD55 ) THEN S_TextCluster13_SVD55  = . ;
   ELSE S_TextCluster13_SVD55
          =     0.00419114143683 +     15.2094977642232 * TextCluster13_SVD55
         ;
   IF MISSING( TextCluster13_SVD56 ) THEN S_TextCluster13_SVD56  = . ;
   ELSE S_TextCluster13_SVD56
          =    -0.01462854573809 +     13.8411140815818 * TextCluster13_SVD56
         ;
   IF MISSING( TextCluster13_SVD57 ) THEN S_TextCluster13_SVD57  = . ;
   ELSE S_TextCluster13_SVD57
          =    -0.00276351522364 +     14.4234798701256 * TextCluster13_SVD57
         ;
   IF MISSING( TextCluster13_SVD58 ) THEN S_TextCluster13_SVD58  = . ;
   ELSE S_TextCluster13_SVD58
          =    -0.01051081084149 +     14.6507235616806 * TextCluster13_SVD58
         ;
   IF MISSING( TextCluster13_SVD59 ) THEN S_TextCluster13_SVD59  = . ;
   ELSE S_TextCluster13_SVD59
          =    -0.03538565723211 +     15.2332027802693 * TextCluster13_SVD59
         ;
   IF MISSING( TextCluster13_SVD6 ) THEN S_TextCluster13_SVD6  = . ;
   ELSE S_TextCluster13_SVD6  =     0.08711942051733 +     5.80014988846751 *
        TextCluster13_SVD6 ;
   IF MISSING( TextCluster13_SVD60 ) THEN S_TextCluster13_SVD60  = . ;
   ELSE S_TextCluster13_SVD60
          =    -0.06681111738339 +     14.9425640257634 * TextCluster13_SVD60
         ;
   IF MISSING( TextCluster13_SVD61 ) THEN S_TextCluster13_SVD61  = . ;
   ELSE S_TextCluster13_SVD61
          =     0.10019383057144 +      15.329182741572 * TextCluster13_SVD61
         ;
   IF MISSING( TextCluster13_SVD62 ) THEN S_TextCluster13_SVD62  = . ;
   ELSE S_TextCluster13_SVD62
          =    -0.02680120132396 +     13.9219336269609 * TextCluster13_SVD62
         ;
   IF MISSING( TextCluster13_SVD63 ) THEN S_TextCluster13_SVD63  = . ;
   ELSE S_TextCluster13_SVD63
          =    -0.02399142716582 +     13.9918054123957 * TextCluster13_SVD63
         ;
   IF MISSING( TextCluster13_SVD64 ) THEN S_TextCluster13_SVD64  = . ;
   ELSE S_TextCluster13_SVD64
          =    -0.03222850473276 +     14.1776283854938 * TextCluster13_SVD64
         ;
   IF MISSING( TextCluster13_SVD65 ) THEN S_TextCluster13_SVD65  = . ;
   ELSE S_TextCluster13_SVD65
          =    -0.00348263293218 +     14.7546371992541 * TextCluster13_SVD65
         ;
   IF MISSING( TextCluster13_SVD66 ) THEN S_TextCluster13_SVD66  = . ;
   ELSE S_TextCluster13_SVD66
          =    -0.02112232008446 +     15.3207858654043 * TextCluster13_SVD66
         ;
   IF MISSING( TextCluster13_SVD67 ) THEN S_TextCluster13_SVD67  = . ;
   ELSE S_TextCluster13_SVD67
          =    -0.01361404842886 +     15.2433450925312 * TextCluster13_SVD67
         ;
   IF MISSING( TextCluster13_SVD68 ) THEN S_TextCluster13_SVD68  = . ;
   ELSE S_TextCluster13_SVD68
          =     0.11117727696691 +     14.3653362220822 * TextCluster13_SVD68
         ;
   IF MISSING( TextCluster13_SVD69 ) THEN S_TextCluster13_SVD69  = . ;
   ELSE S_TextCluster13_SVD69
          =     0.01874580001763 +     14.9538011838543 * TextCluster13_SVD69
         ;
   IF MISSING( TextCluster13_SVD7 ) THEN S_TextCluster13_SVD7  = . ;
   ELSE S_TextCluster13_SVD7  =     0.15102198014529 +     5.84942824010202 *
        TextCluster13_SVD7 ;
   IF MISSING( TextCluster13_SVD70 ) THEN S_TextCluster13_SVD70  = . ;
   ELSE S_TextCluster13_SVD70
          =    -0.02259885209884 +     14.5738608152621 * TextCluster13_SVD70
         ;
   IF MISSING( TextCluster13_SVD71 ) THEN S_TextCluster13_SVD71  = . ;
   ELSE S_TextCluster13_SVD71
          =       0.072857962221 +     15.1198163865925 * TextCluster13_SVD71
         ;
   IF MISSING( TextCluster13_SVD72 ) THEN S_TextCluster13_SVD72  = . ;
   ELSE S_TextCluster13_SVD72
          =     0.01267723923077 +     14.7076481561274 * TextCluster13_SVD72
         ;
   IF MISSING( TextCluster13_SVD73 ) THEN S_TextCluster13_SVD73  = . ;
   ELSE S_TextCluster13_SVD73
          =     -0.0278491012917 +     15.2449330491436 * TextCluster13_SVD73
         ;
   IF MISSING( TextCluster13_SVD74 ) THEN S_TextCluster13_SVD74  = . ;
   ELSE S_TextCluster13_SVD74
          =     0.00074381382638 +     14.9782655900694 * TextCluster13_SVD74
         ;
   IF MISSING( TextCluster13_SVD75 ) THEN S_TextCluster13_SVD75  = . ;
   ELSE S_TextCluster13_SVD75
          =    -0.03923352593631 +     15.6094167475939 * TextCluster13_SVD75
         ;
   IF MISSING( TextCluster13_SVD76 ) THEN S_TextCluster13_SVD76  = . ;
   ELSE S_TextCluster13_SVD76
          =    -0.02460349693698 +     15.1702409362964 * TextCluster13_SVD76
         ;
   IF MISSING( TextCluster13_SVD77 ) THEN S_TextCluster13_SVD77  = . ;
   ELSE S_TextCluster13_SVD77
          =     0.01204193517209 +     15.5278871176592 * TextCluster13_SVD77
         ;
   IF MISSING( TextCluster13_SVD78 ) THEN S_TextCluster13_SVD78  = . ;
   ELSE S_TextCluster13_SVD78
          =    -0.02457786741061 +     14.3929889573414 * TextCluster13_SVD78
         ;
   IF MISSING( TextCluster13_SVD79 ) THEN S_TextCluster13_SVD79  = . ;
   ELSE S_TextCluster13_SVD79
          =     0.00986904289126 +      15.355607713703 * TextCluster13_SVD79
         ;
   IF MISSING( TextCluster13_SVD8 ) THEN S_TextCluster13_SVD8  = . ;
   ELSE S_TextCluster13_SVD8  =     0.01040387503016 +      6.7316723156876 *
        TextCluster13_SVD8 ;
   IF MISSING( TextCluster13_SVD80 ) THEN S_TextCluster13_SVD80  = . ;
   ELSE S_TextCluster13_SVD80
          =    -0.04852743259816 +     14.8183182753651 * TextCluster13_SVD80
         ;
   IF MISSING( TextCluster13_SVD81 ) THEN S_TextCluster13_SVD81  = . ;
   ELSE S_TextCluster13_SVD81
          =    -0.03044814407717 +     15.1542783971194 * TextCluster13_SVD81
         ;
   IF MISSING( TextCluster13_SVD82 ) THEN S_TextCluster13_SVD82  = . ;
   ELSE S_TextCluster13_SVD82
          =     0.03508327690591 +     14.9624769001847 * TextCluster13_SVD82
         ;
   IF MISSING( TextCluster13_SVD83 ) THEN S_TextCluster13_SVD83  = . ;
   ELSE S_TextCluster13_SVD83
          =    -0.02382377270395 +     15.0924492738353 * TextCluster13_SVD83
         ;
   IF MISSING( TextCluster13_SVD84 ) THEN S_TextCluster13_SVD84  = . ;
   ELSE S_TextCluster13_SVD84
          =     0.02453329390274 +     15.1951807146024 * TextCluster13_SVD84
         ;
   IF MISSING( TextCluster13_SVD85 ) THEN S_TextCluster13_SVD85  = . ;
   ELSE S_TextCluster13_SVD85
          =     0.00588110805426 +     14.9764222355011 * TextCluster13_SVD85
         ;
   IF MISSING( TextCluster13_SVD86 ) THEN S_TextCluster13_SVD86  = . ;
   ELSE S_TextCluster13_SVD86
          =    -0.00500987427278 +     14.6899165206528 * TextCluster13_SVD86
         ;
   IF MISSING( TextCluster13_SVD87 ) THEN S_TextCluster13_SVD87  = . ;
   ELSE S_TextCluster13_SVD87
          =    -0.00744183627823 +     15.0319166593391 * TextCluster13_SVD87
         ;
   IF MISSING( TextCluster13_SVD88 ) THEN S_TextCluster13_SVD88  = . ;
   ELSE S_TextCluster13_SVD88
          =    -0.02703985862575 +     15.4728720594193 * TextCluster13_SVD88
         ;
   IF MISSING( TextCluster13_SVD89 ) THEN S_TextCluster13_SVD89  = . ;
   ELSE S_TextCluster13_SVD89
          =    -0.00852793398273 +     15.1653203185411 * TextCluster13_SVD89
         ;
   IF MISSING( TextCluster13_SVD9 ) THEN S_TextCluster13_SVD9  = . ;
   ELSE S_TextCluster13_SVD9  =     0.06106150497343 +     7.25785953831764 *
        TextCluster13_SVD9 ;
   IF MISSING( TextCluster13_SVD90 ) THEN S_TextCluster13_SVD90  = . ;
   ELSE S_TextCluster13_SVD90
          =    -0.13868913315053 +     14.6150553887938 * TextCluster13_SVD90
         ;
   IF MISSING( TextCluster13_SVD91 ) THEN S_TextCluster13_SVD91  = . ;
   ELSE S_TextCluster13_SVD91
          =    -0.01433572862859 +     15.1455948653772 * TextCluster13_SVD91
         ;
   IF MISSING( TextCluster13_SVD92 ) THEN S_TextCluster13_SVD92  = . ;
   ELSE S_TextCluster13_SVD92
          =     0.02642361915516 +      14.648816148363 * TextCluster13_SVD92
         ;
   IF MISSING( TextCluster13_SVD93 ) THEN S_TextCluster13_SVD93  = . ;
   ELSE S_TextCluster13_SVD93
          =    -0.02433459126526 +     15.2618724351659 * TextCluster13_SVD93
         ;
   IF MISSING( TextCluster13_SVD94 ) THEN S_TextCluster13_SVD94  = . ;
   ELSE S_TextCluster13_SVD94
          =    -0.01565008124835 +     14.3069955227901 * TextCluster13_SVD94
         ;
   IF MISSING( TextCluster13_SVD95 ) THEN S_TextCluster13_SVD95  = . ;
   ELSE S_TextCluster13_SVD95
          =     0.02725245912947 +     14.7746528477439 * TextCluster13_SVD95
         ;
   IF MISSING( TextCluster13_SVD96 ) THEN S_TextCluster13_SVD96  = . ;
   ELSE S_TextCluster13_SVD96
          =     0.02206222812673 +     14.8308150640929 * TextCluster13_SVD96
         ;
   IF MISSING( TextCluster13_SVD97 ) THEN S_TextCluster13_SVD97  = . ;
   ELSE S_TextCluster13_SVD97
          =     0.08336629700049 +     15.3056348483792 * TextCluster13_SVD97
         ;
   IF MISSING( TextCluster13_SVD98 ) THEN S_TextCluster13_SVD98  = . ;
   ELSE S_TextCluster13_SVD98
          =     0.01228650889099 +     15.0837706424057 * TextCluster13_SVD98
         ;
   IF MISSING( TextCluster13_SVD99 ) THEN S_TextCluster13_SVD99  = . ;
   ELSE S_TextCluster13_SVD99
          =    -0.04533636000317 +     15.0416109994092 * TextCluster13_SVD99
         ;
   IF MISSING( TextTopic_raw1 ) THEN S_TextTopic_raw1  = . ;
   ELSE S_TextTopic_raw1  =    -0.65821997060728 +      7.5972302455572 *
        TextTopic_raw1 ;
   IF MISSING( TextTopic_raw10 ) THEN S_TextTopic_raw10  = . ;
   ELSE S_TextTopic_raw10  =    -0.77147369871014 +     10.7829055810758 *
        TextTopic_raw10 ;
   IF MISSING( TextTopic_raw11 ) THEN S_TextTopic_raw11  = . ;
   ELSE S_TextTopic_raw11  =    -1.02974593132823 +     14.9941401165578 *
        TextTopic_raw11 ;
   IF MISSING( TextTopic_raw12 ) THEN S_TextTopic_raw12  = . ;
   ELSE S_TextTopic_raw12  =      -0.789744516711 +     15.0576465138109 *
        TextTopic_raw12 ;
   IF MISSING( TextTopic_raw2 ) THEN S_TextTopic_raw2  = . ;
   ELSE S_TextTopic_raw2  =    -0.60124908042594 +     7.56937968521001 *
        TextTopic_raw2 ;
   IF MISSING( TextTopic_raw3 ) THEN S_TextTopic_raw3  = . ;
   ELSE S_TextTopic_raw3  =    -0.55929972171006 +     7.85759275523888 *
        TextTopic_raw3 ;
   IF MISSING( TextTopic_raw4 ) THEN S_TextTopic_raw4  = . ;
   ELSE S_TextTopic_raw4  =    -1.00384954797098 +     10.3979498283762 *
        TextTopic_raw4 ;
   IF MISSING( TextTopic_raw5 ) THEN S_TextTopic_raw5  = . ;
   ELSE S_TextTopic_raw5  =    -0.96883377006116 +     12.2733997635746 *
        TextTopic_raw5 ;
   IF MISSING( TextTopic_raw6 ) THEN S_TextTopic_raw6  = . ;
   ELSE S_TextTopic_raw6  =    -0.60933085657818 +     10.6025299427828 *
        TextTopic_raw6 ;
   IF MISSING( TextTopic_raw7 ) THEN S_TextTopic_raw7  = . ;
   ELSE S_TextTopic_raw7  =     -0.6718982007017 +      10.892850995164 *
        TextTopic_raw7 ;
   IF MISSING( TextTopic_raw8 ) THEN S_TextTopic_raw8  = . ;
   ELSE S_TextTopic_raw8  =    -0.59343934776624 +      11.329862062557 *
        TextTopic_raw8 ;
   IF MISSING( TextTopic_raw9 ) THEN S_TextTopic_raw9  = . ;
   ELSE S_TextTopic_raw9  =    -0.69449731094346 +     9.72454944584798 *
        TextTopic_raw9 ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     0.15914036543979 * S_TextCluster13_SVD1
          +     -0.1070922718305 * S_TextCluster13_SVD10
          +    -0.04971395123745 * S_TextCluster13_SVD100
          +     0.14431232763278 * S_TextCluster13_SVD11
          +     0.09051008275185 * S_TextCluster13_SVD12
          +     0.01481242387407 * S_TextCluster13_SVD13
          +     0.13443521889508 * S_TextCluster13_SVD14
          +     0.07385083544228 * S_TextCluster13_SVD15
          +    -0.01001312554822 * S_TextCluster13_SVD16
          +     0.04603231566619 * S_TextCluster13_SVD17
          +    -0.06639817701659 * S_TextCluster13_SVD18
          +     0.12210022092088 * S_TextCluster13_SVD19
          +     -0.1684507915606 * S_TextCluster13_SVD2
          +     0.00728573030012 * S_TextCluster13_SVD20
          +      0.1564324896359 * S_TextCluster13_SVD21
          +     0.29254678680188 * S_TextCluster13_SVD22
          +    -0.12985427957731 * S_TextCluster13_SVD23
          +       -0.01832276823 * S_TextCluster13_SVD24
          +    -0.00692247342921 * S_TextCluster13_SVD25
          +     0.18262008380873 * S_TextCluster13_SVD26
          +     0.05583733439995 * S_TextCluster13_SVD27
          +     0.00742309125694 * S_TextCluster13_SVD28
          +     0.04656819014709 * S_TextCluster13_SVD29
          +    -0.07901533844992 * S_TextCluster13_SVD3
          +     0.00366281705663 * S_TextCluster13_SVD30
          +     0.10501443197434 * S_TextCluster13_SVD31
          +    -0.00319650771188 * S_TextCluster13_SVD32
          +     0.13692596797155 * S_TextCluster13_SVD33
          +     0.01317094015687 * S_TextCluster13_SVD34
          +     0.02861715844282 * S_TextCluster13_SVD35
          +    -0.10247674658934 * S_TextCluster13_SVD36
          +     0.05743567515236 * S_TextCluster13_SVD37
          +     0.13560103173231 * S_TextCluster13_SVD38
          +    -0.12169039104216 * S_TextCluster13_SVD39
          +     0.02174737450545 * S_TextCluster13_SVD4
          +     0.03523406853752 * S_TextCluster13_SVD40
          +     0.15221301366758 * S_TextCluster13_SVD41
          +    -0.04978631712903 * S_TextCluster13_SVD42
          +     -0.0325236367637 * S_TextCluster13_SVD43
          +     0.04405139245046 * S_TextCluster13_SVD44
          +    -0.05672085053533 * S_TextCluster13_SVD45
          +     0.09869518166391 * S_TextCluster13_SVD46
          +     0.01985007366224 * S_TextCluster13_SVD47
          +     0.12510942977877 * S_TextCluster13_SVD48
          +     0.05076293100404 * S_TextCluster13_SVD49
          +     0.41723401529377 * S_TextCluster13_SVD5
          +    -0.01804980411096 * S_TextCluster13_SVD50
          +    -0.02857572690375 * S_TextCluster13_SVD51
          +     0.01806677252005 * S_TextCluster13_SVD52
          +     0.06530985736798 * S_TextCluster13_SVD53
          +     0.03410802598289 * S_TextCluster13_SVD54
          +     0.00750506270438 * S_TextCluster13_SVD55
          +    -0.02320894926303 * S_TextCluster13_SVD56
          +    -0.03482524728091 * S_TextCluster13_SVD57
          +     0.02249418835561 * S_TextCluster13_SVD58
          +     0.08312093049095 * S_TextCluster13_SVD59
          +    -0.77835251789113 * S_TextCluster13_SVD6
          +    -0.06573394699793 * S_TextCluster13_SVD60
          +     0.08061759805284 * S_TextCluster13_SVD61
          +    -0.07973620305354 * S_TextCluster13_SVD62
          +    -0.02574745939783 * S_TextCluster13_SVD63
          +    -0.14481068846867 * S_TextCluster13_SVD64
          +     0.03026588860803 * S_TextCluster13_SVD65
          +    -0.08639783165076 * S_TextCluster13_SVD66
          +    -0.04689697520537 * S_TextCluster13_SVD67
          +    -0.01330989650692 * S_TextCluster13_SVD68
          +    -0.03137430987935 * S_TextCluster13_SVD69
          +     0.20120066395762 * S_TextCluster13_SVD7
          +     0.07659768722846 * S_TextCluster13_SVD70
          +     0.01634896935909 * S_TextCluster13_SVD71
          +    -0.11099056389923 * S_TextCluster13_SVD72
          +     0.03086960609873 * S_TextCluster13_SVD73
          +      0.0541153710924 * S_TextCluster13_SVD74
          +    -0.00398044588553 * S_TextCluster13_SVD75
          +    -0.16172654261887 * S_TextCluster13_SVD76
          +     0.13082121132133 * S_TextCluster13_SVD77
          +    -0.00384720918114 * S_TextCluster13_SVD78
          +    -0.07954804624949 * S_TextCluster13_SVD79
          +    -0.26819567806276 * S_TextCluster13_SVD8
          +    -0.03446104274818 * S_TextCluster13_SVD80
          +      0.0211592742008 * S_TextCluster13_SVD81
          +    -0.02829754416532 * S_TextCluster13_SVD82
          +     0.08932395030234 * S_TextCluster13_SVD83
          +    -0.00252215798592 * S_TextCluster13_SVD84
          +    -0.06728153213906 * S_TextCluster13_SVD85
          +     0.08601518557382 * S_TextCluster13_SVD86
          +    -0.04922102118248 * S_TextCluster13_SVD87
          +     0.02158950618413 * S_TextCluster13_SVD88
          +    -0.05134216024402 * S_TextCluster13_SVD89
          +      0.5609707233794 * S_TextCluster13_SVD9
          +     -0.1427072885039 * S_TextCluster13_SVD90
          +     0.02716738166182 * S_TextCluster13_SVD91
          +     0.01635917841735 * S_TextCluster13_SVD92
          +    -0.04570013551333 * S_TextCluster13_SVD93
          +      0.1273323258612 * S_TextCluster13_SVD94
          +    -0.04661878449141 * S_TextCluster13_SVD95
          +    -0.03316372766409 * S_TextCluster13_SVD96
          +     0.06029986408853 * S_TextCluster13_SVD97
          +    -0.01653308131658 * S_TextCluster13_SVD98
          +     0.06278179802928 * S_TextCluster13_SVD99
          +     0.04571203343435 * S_TextTopic_raw1  +     0.33598577525862 *
        S_TextTopic_raw10  +    -0.14090283802185 * S_TextTopic_raw11
          +      0.0388489548533 * S_TextTopic_raw12
          +      0.0496343057474 * S_TextTopic_raw2  +     0.30011943596455 *
        S_TextTopic_raw3  +     0.43299175054636 * S_TextTopic_raw4
          +    -0.24236112282846 * S_TextTopic_raw5  +    -1.17099279070345 *
        S_TextTopic_raw6  +    -0.10642522784915 * S_TextTopic_raw7
          +    -0.40361735020098 * S_TextTopic_raw8  +    -0.05923190511445 *
        S_TextTopic_raw9 ;
   H12  =    -0.21525273258072 * S_TextCluster13_SVD1
          +     1.13654611261587 * S_TextCluster13_SVD10
          +     -0.1295720500932 * S_TextCluster13_SVD100
          +     0.08025567362254 * S_TextCluster13_SVD11
          +     0.28704128497363 * S_TextCluster13_SVD12
          +     0.36084616152662 * S_TextCluster13_SVD13
          +    -0.74285517177447 * S_TextCluster13_SVD14
          +     0.07052796377928 * S_TextCluster13_SVD15
          +     0.06437953054423 * S_TextCluster13_SVD16
          +     -0.3449939666181 * S_TextCluster13_SVD17
          +    -0.60503955898152 * S_TextCluster13_SVD18
          +    -0.06315744936085 * S_TextCluster13_SVD19
          +     -0.4537204409151 * S_TextCluster13_SVD2
          +     0.44818072639223 * S_TextCluster13_SVD20
          +    -0.59454473484645 * S_TextCluster13_SVD21
          +    -1.40118788120564 * S_TextCluster13_SVD22
          +    -0.24076045774829 * S_TextCluster13_SVD23
          +    -0.14916742753805 * S_TextCluster13_SVD24
          +    -0.06475618073235 * S_TextCluster13_SVD25
          +     0.23592530923019 * S_TextCluster13_SVD26
          +    -0.26703777106302 * S_TextCluster13_SVD27
          +    -0.22931318551383 * S_TextCluster13_SVD28
          +    -0.54805247261087 * S_TextCluster13_SVD29
          +    -0.36776672222425 * S_TextCluster13_SVD3
          +      -0.292693392662 * S_TextCluster13_SVD30
          +     0.04556891616822 * S_TextCluster13_SVD31
          +     0.22060468215385 * S_TextCluster13_SVD32
          +     0.13723790470802 * S_TextCluster13_SVD33
          +    -0.47138012959726 * S_TextCluster13_SVD34
          +    -0.00159353602314 * S_TextCluster13_SVD35
          +     0.23820019473343 * S_TextCluster13_SVD36
          +     -0.1393528128024 * S_TextCluster13_SVD37
          +     0.13572631348931 * S_TextCluster13_SVD38
          +    -0.03522332119979 * S_TextCluster13_SVD39
          +     -0.1131938555764 * S_TextCluster13_SVD4
          +      0.4870508712676 * S_TextCluster13_SVD40
          +    -0.51385328322859 * S_TextCluster13_SVD41
          +     0.37591156030296 * S_TextCluster13_SVD42
          +     0.17358683804756 * S_TextCluster13_SVD43
          +     0.16706928494802 * S_TextCluster13_SVD44
          +      0.0330303361476 * S_TextCluster13_SVD45
          +     0.27319080519398 * S_TextCluster13_SVD46
          +    -0.34264909449063 * S_TextCluster13_SVD47
          +    -0.13593916660906 * S_TextCluster13_SVD48
          +    -0.01667384771374 * S_TextCluster13_SVD49
          +     0.61584543448056 * S_TextCluster13_SVD5
          +      0.1346877413371 * S_TextCluster13_SVD50
          +    -0.36496257809637 * S_TextCluster13_SVD51
          +     0.10501812902955 * S_TextCluster13_SVD52
          +    -0.08194315908836 * S_TextCluster13_SVD53
          +    -0.26231775974127 * S_TextCluster13_SVD54
          +    -0.11676881059009 * S_TextCluster13_SVD55
          +    -0.07163726642495 * S_TextCluster13_SVD56
          +    -0.17384306789539 * S_TextCluster13_SVD57
          +     0.35951121673638 * S_TextCluster13_SVD58
          +    -0.08390754569296 * S_TextCluster13_SVD59
          +    -0.24827594076164 * S_TextCluster13_SVD6
          +     0.32531920856352 * S_TextCluster13_SVD60
          +     0.13919928934451 * S_TextCluster13_SVD61
          +     -0.1189365379469 * S_TextCluster13_SVD62
          +     0.27491838421869 * S_TextCluster13_SVD63
          +     0.17029674854955 * S_TextCluster13_SVD64
          +    -0.13071356331763 * S_TextCluster13_SVD65
          +     -0.1191815023317 * S_TextCluster13_SVD66
          +      -0.148366607496 * S_TextCluster13_SVD67
          +    -0.34257238433562 * S_TextCluster13_SVD68
          +     0.20032762632316 * S_TextCluster13_SVD69
          +    -0.13499414799455 * S_TextCluster13_SVD7
          +    -0.03083454447064 * S_TextCluster13_SVD70
          +    -0.05220585310377 * S_TextCluster13_SVD71
          +    -0.06616626363543 * S_TextCluster13_SVD72
          +     0.17882877898582 * S_TextCluster13_SVD73
          +    -0.00630807650521 * S_TextCluster13_SVD74
          +     -0.0739424391239 * S_TextCluster13_SVD75
          +     0.43758067064552 * S_TextCluster13_SVD76
          +    -0.23276728978861 * S_TextCluster13_SVD77
          +     0.09784457024013 * S_TextCluster13_SVD78
          +    -0.02956648608214 * S_TextCluster13_SVD79
          +    -0.51007006176032 * S_TextCluster13_SVD8
          +    -0.10065028994003 * S_TextCluster13_SVD80
          +    -0.06033849850009 * S_TextCluster13_SVD81
          +     0.15570802291806 * S_TextCluster13_SVD82
          +     0.23676789535492 * S_TextCluster13_SVD83
          +     0.01199726882094 * S_TextCluster13_SVD84
          +     0.16283504985497 * S_TextCluster13_SVD85
          +     0.19288136472642 * S_TextCluster13_SVD86
          +    -0.03783272444309 * S_TextCluster13_SVD87
          +     0.55690691177439 * S_TextCluster13_SVD88
          +    -0.06491225907269 * S_TextCluster13_SVD89
          +      0.0379760241392 * S_TextCluster13_SVD9
          +     0.00625202599235 * S_TextCluster13_SVD90
          +     0.14021560867288 * S_TextCluster13_SVD91
          +     -0.0033286076777 * S_TextCluster13_SVD92
          +     0.21094910335621 * S_TextCluster13_SVD93
          +    -0.15001961187709 * S_TextCluster13_SVD94
          +    -0.11846740806843 * S_TextCluster13_SVD95
          +    -0.13704557908859 * S_TextCluster13_SVD96
          +     0.20431362256338 * S_TextCluster13_SVD97
          +     0.06507552382572 * S_TextCluster13_SVD98
          +     -0.1664357017468 * S_TextCluster13_SVD99
          +    -0.66798626380795 * S_TextTopic_raw1  +     0.29603584319525 *
        S_TextTopic_raw10  +    -0.24619237867241 * S_TextTopic_raw11
          +     0.22939472352806 * S_TextTopic_raw12
          +     0.70229331562358 * S_TextTopic_raw2  +     0.17072885884547 *
        S_TextTopic_raw3  +    -0.21007091290326 * S_TextTopic_raw4
          +     0.22916046965108 * S_TextTopic_raw5  +      0.7187014844628 *
        S_TextTopic_raw6  +    -0.86149225129679 * S_TextTopic_raw7
          +     -0.6908692612674 * S_TextTopic_raw8  +     0.48608679389913 *
        S_TextTopic_raw9 ;
   H13  =     0.15071843963485 * S_TextCluster13_SVD1
          +     0.33636880602968 * S_TextCluster13_SVD10
          +    -0.00308227747295 * S_TextCluster13_SVD100
          +     0.10077638542815 * S_TextCluster13_SVD11
          +    -0.34142520093956 * S_TextCluster13_SVD12
          +     0.43981041477589 * S_TextCluster13_SVD13
          +    -0.03149305477536 * S_TextCluster13_SVD14
          +    -0.01959961473641 * S_TextCluster13_SVD15
          +    -0.01997013451698 * S_TextCluster13_SVD16
          +     0.17730089799136 * S_TextCluster13_SVD17
          +     0.11229134924202 * S_TextCluster13_SVD18
          +     0.18021016082348 * S_TextCluster13_SVD19
          +     0.19400777885129 * S_TextCluster13_SVD2
          +     0.08648565989651 * S_TextCluster13_SVD20
          +     0.05089551125903 * S_TextCluster13_SVD21
          +     0.12735370730338 * S_TextCluster13_SVD22
          +    -0.18362130241736 * S_TextCluster13_SVD23
          +     0.04199886139017 * S_TextCluster13_SVD24
          +    -0.10292488478158 * S_TextCluster13_SVD25
          +     0.02623771879656 * S_TextCluster13_SVD26
          +    -0.03757111443618 * S_TextCluster13_SVD27
          +     0.09339149267554 * S_TextCluster13_SVD28
          +    -0.02300247755264 * S_TextCluster13_SVD29
          +     0.16687555961861 * S_TextCluster13_SVD3
          +    -0.13872453902765 * S_TextCluster13_SVD30
          +     0.07835120009858 * S_TextCluster13_SVD31
          +     0.00836678829651 * S_TextCluster13_SVD32
          +    -0.02538877479359 * S_TextCluster13_SVD33
          +     0.02682018634721 * S_TextCluster13_SVD34
          +    -0.06718455809977 * S_TextCluster13_SVD35
          +      0.0561216120091 * S_TextCluster13_SVD36
          +    -0.05642302845706 * S_TextCluster13_SVD37
          +     0.00815429668047 * S_TextCluster13_SVD38
          +     0.06965748841828 * S_TextCluster13_SVD39
          +    -0.17456572225668 * S_TextCluster13_SVD4
          +     0.09389319005943 * S_TextCluster13_SVD40
          +    -0.00259135632378 * S_TextCluster13_SVD41
          +    -0.01010009407158 * S_TextCluster13_SVD42
          +     0.07268812734618 * S_TextCluster13_SVD43
          +     0.03007073691066 * S_TextCluster13_SVD44
          +    -0.08376004720998 * S_TextCluster13_SVD45
          +     0.00171651214121 * S_TextCluster13_SVD46
          +     0.01478768013636 * S_TextCluster13_SVD47
          +     0.07886785704332 * S_TextCluster13_SVD48
          +     0.04375078335987 * S_TextCluster13_SVD49
          +     0.08754484127907 * S_TextCluster13_SVD5
          +    -0.00290344775245 * S_TextCluster13_SVD50
          +     0.02463891812069 * S_TextCluster13_SVD51
          +     0.08141859784662 * S_TextCluster13_SVD52
          +     0.10120766195896 * S_TextCluster13_SVD53
          +    -0.02604216359787 * S_TextCluster13_SVD54
          +     0.04556059600036 * S_TextCluster13_SVD55
          +     0.04004244734619 * S_TextCluster13_SVD56
          +     0.09341668439811 * S_TextCluster13_SVD57
          +    -0.06607419119752 * S_TextCluster13_SVD58
          +    -0.00723012752833 * S_TextCluster13_SVD59
          +    -0.35905657092433 * S_TextCluster13_SVD6
          +     0.05438229232218 * S_TextCluster13_SVD60
          +    -0.02170870522391 * S_TextCluster13_SVD61
          +     0.02499928774685 * S_TextCluster13_SVD62
          +    -0.08462288779563 * S_TextCluster13_SVD63
          +    -0.01448144738611 * S_TextCluster13_SVD64
          +     0.04431258035953 * S_TextCluster13_SVD65
          +    -0.04882124173147 * S_TextCluster13_SVD66
          +    -0.02470884873104 * S_TextCluster13_SVD67
          +    -0.00063553596008 * S_TextCluster13_SVD68
          +     0.04991429735206 * S_TextCluster13_SVD69
          +     -0.1451112418331 * S_TextCluster13_SVD7
          +     -0.0064515254375 * S_TextCluster13_SVD70
          +     0.08169091382879 * S_TextCluster13_SVD71
          +    -0.04875643456681 * S_TextCluster13_SVD72
          +    -0.03229939374067 * S_TextCluster13_SVD73
          +     0.06669875372098 * S_TextCluster13_SVD74
          +     0.07278847198331 * S_TextCluster13_SVD75
          +    -0.01978811231897 * S_TextCluster13_SVD76
          +      0.0500942014467 * S_TextCluster13_SVD77
          +    -0.11228274240086 * S_TextCluster13_SVD78
          +    -0.02551420017747 * S_TextCluster13_SVD79
          +    -0.25946533942478 * S_TextCluster13_SVD8
          +    -0.01788203547182 * S_TextCluster13_SVD80
          +     -0.0719857512827 * S_TextCluster13_SVD81
          +    -0.02510595083008 * S_TextCluster13_SVD82
          +     0.07679281516769 * S_TextCluster13_SVD83
          +     0.12944707540937 * S_TextCluster13_SVD84
          +     0.05967637265432 * S_TextCluster13_SVD85
          +    -0.06781104133409 * S_TextCluster13_SVD86
          +    -0.02654091519985 * S_TextCluster13_SVD87
          +    -0.04219266561318 * S_TextCluster13_SVD88
          +     0.04461192206444 * S_TextCluster13_SVD89
          +      0.2634021151734 * S_TextCluster13_SVD9
          +     -0.0292733987337 * S_TextCluster13_SVD90
          +    -0.02762593217047 * S_TextCluster13_SVD91
          +    -0.01214297205731 * S_TextCluster13_SVD92
          +    -0.02984629771335 * S_TextCluster13_SVD93
          +    -0.07064378374894 * S_TextCluster13_SVD94
          +    -0.05282592219055 * S_TextCluster13_SVD95
          +    -0.01654965449862 * S_TextCluster13_SVD96
          +     0.03174688722327 * S_TextCluster13_SVD97
          +    -0.09616804794412 * S_TextCluster13_SVD98
          +     0.05105882981342 * S_TextCluster13_SVD99
          +     0.34869705280932 * S_TextTopic_raw1  +     0.19358988499046 *
        S_TextTopic_raw10  +    -0.20047944004957 * S_TextTopic_raw11
          +     0.54634259786566 * S_TextTopic_raw12
          +    -0.45779054313917 * S_TextTopic_raw2  +     -0.4949753823335 *
        S_TextTopic_raw3  +     0.00181696348227 * S_TextTopic_raw4
          +     0.08300418365266 * S_TextTopic_raw5  +    -0.94094894895285 *
        S_TextTopic_raw6  +    -0.83907910293229 * S_TextTopic_raw7
          +     0.11208265791462 * S_TextTopic_raw8  +     0.25758925476027 *
        S_TextTopic_raw9 ;
   H11  =     0.04499461917773 + H11 ;
   H12  =    -0.52421977091694 + H12 ;
   H13  =    -0.25787046233167 + H13 ;
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
   P_CategoryTEACHER  =     4.20534904947273 * H11  +      2.7758520091516 *
        H12  +    -3.19613963078162 * H13 ;
   P_CategorySALES  =    -4.26509025474061 * H11  +    -0.76623041161705 * H12
          +     2.11225326623592 * H13 ;
   P_CategoryOTHER  =     0.47564108672179 * H11  +     -2.1067045615622 * H12
          +    -0.62238565458905 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -0.50583928136171 * H11
          +     3.39435893376071 * H12  +    -1.96979987711265 * H13 ;
   P_CategoryHR  =     0.77384491133188 * H11  +    -1.19782289295211 * H12
          +     6.68212218175581 * H13 ;
   P_CategoryHEALTHCARE  =    -0.28388508863998 * H11
          +    -1.68926439476212 * H12  +    -3.66069496282586 * H13 ;
   P_CategoryFITNESS  =    -2.84113562845796 * H11  +    -3.26749554546694 *
        H12  +    -1.16727381784389 * H13 ;
   P_CategoryDIGITAL_MEDIA  =     3.38545416117553 * H11
          +     2.85387757892278 * H12  +     1.89219849402255 * H13 ;
   P_CategoryDESIGNER  =    -4.96924796835022 * H11  +     3.86729604185382 *
        H12  +    -2.96673200276856 * H13 ;
   P_CategoryCONSULTANT  =      2.3067622818886 * H11
          +    -2.45489435797898 * H12  +     1.00649098498586 * H13 ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -3.56547192531389 * H11
          +     3.11516743346705 * H12  +     3.15076729868193 * H13 ;
   P_CategoryTEACHER  =    -2.61190815437714 + P_CategoryTEACHER ;
   P_CategorySALES  =    -0.08778478704237 + P_CategorySALES ;
   P_CategoryOTHER  =     0.04005499295957 + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  =     0.21574697022086 +
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =    -3.27707561022474 + P_CategoryHR ;
   P_CategoryHEALTHCARE  =     -0.9183243410803 + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  =    -1.48124890975506 + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  =    -1.18177536599745 + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  =    -2.98133404209938 + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  =    -1.83824951445365 + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  =      1.2976077059057 +
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
S_TextCluster13_SVD1
S_TextCluster13_SVD10
S_TextCluster13_SVD100
S_TextCluster13_SVD11
S_TextCluster13_SVD12
S_TextCluster13_SVD13
S_TextCluster13_SVD14
S_TextCluster13_SVD15
S_TextCluster13_SVD16
S_TextCluster13_SVD17
S_TextCluster13_SVD18
S_TextCluster13_SVD19
S_TextCluster13_SVD2
S_TextCluster13_SVD20
S_TextCluster13_SVD21
S_TextCluster13_SVD22
S_TextCluster13_SVD23
S_TextCluster13_SVD24
S_TextCluster13_SVD25
S_TextCluster13_SVD26
S_TextCluster13_SVD27
S_TextCluster13_SVD28
S_TextCluster13_SVD29
S_TextCluster13_SVD3
S_TextCluster13_SVD30
S_TextCluster13_SVD31
S_TextCluster13_SVD32
S_TextCluster13_SVD33
S_TextCluster13_SVD34
S_TextCluster13_SVD35
S_TextCluster13_SVD36
S_TextCluster13_SVD37
S_TextCluster13_SVD38
S_TextCluster13_SVD39
S_TextCluster13_SVD4
S_TextCluster13_SVD40
S_TextCluster13_SVD41
S_TextCluster13_SVD42
S_TextCluster13_SVD43
S_TextCluster13_SVD44
S_TextCluster13_SVD45
S_TextCluster13_SVD46
S_TextCluster13_SVD47
S_TextCluster13_SVD48
S_TextCluster13_SVD49
S_TextCluster13_SVD5
S_TextCluster13_SVD50
S_TextCluster13_SVD51
S_TextCluster13_SVD52
S_TextCluster13_SVD53
S_TextCluster13_SVD54
S_TextCluster13_SVD55
S_TextCluster13_SVD56
S_TextCluster13_SVD57
S_TextCluster13_SVD58
S_TextCluster13_SVD59
S_TextCluster13_SVD6
S_TextCluster13_SVD60
S_TextCluster13_SVD61
S_TextCluster13_SVD62
S_TextCluster13_SVD63
S_TextCluster13_SVD64
S_TextCluster13_SVD65
S_TextCluster13_SVD66
S_TextCluster13_SVD67
S_TextCluster13_SVD68
S_TextCluster13_SVD69
S_TextCluster13_SVD7
S_TextCluster13_SVD70
S_TextCluster13_SVD71
S_TextCluster13_SVD72
S_TextCluster13_SVD73
S_TextCluster13_SVD74
S_TextCluster13_SVD75
S_TextCluster13_SVD76
S_TextCluster13_SVD77
S_TextCluster13_SVD78
S_TextCluster13_SVD79
S_TextCluster13_SVD8
S_TextCluster13_SVD80
S_TextCluster13_SVD81
S_TextCluster13_SVD82
S_TextCluster13_SVD83
S_TextCluster13_SVD84
S_TextCluster13_SVD85
S_TextCluster13_SVD86
S_TextCluster13_SVD87
S_TextCluster13_SVD88
S_TextCluster13_SVD89
S_TextCluster13_SVD9
S_TextCluster13_SVD90
S_TextCluster13_SVD91
S_TextCluster13_SVD92
S_TextCluster13_SVD93
S_TextCluster13_SVD94
S_TextCluster13_SVD95
S_TextCluster13_SVD96
S_TextCluster13_SVD97
S_TextCluster13_SVD98
S_TextCluster13_SVD99
S_TextTopic_raw1
S_TextTopic_raw10
S_TextTopic_raw11
S_TextTopic_raw12
S_TextTopic_raw2
S_TextTopic_raw3
S_TextTopic_raw4
S_TextTopic_raw5
S_TextTopic_raw6
S_TextTopic_raw7
S_TextTopic_raw8
S_TextTopic_raw9
H11
H12
H13
;
