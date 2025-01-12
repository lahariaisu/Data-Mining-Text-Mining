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
      label S_TextCluster8_SVD1 = 'Standard: TextCluster8_SVD1' ;

      label S_TextCluster8_SVD10 = 'Standard: TextCluster8_SVD10' ;

      label S_TextCluster8_SVD100 = 'Standard: TextCluster8_SVD100' ;

      label S_TextCluster8_SVD11 = 'Standard: TextCluster8_SVD11' ;

      label S_TextCluster8_SVD12 = 'Standard: TextCluster8_SVD12' ;

      label S_TextCluster8_SVD13 = 'Standard: TextCluster8_SVD13' ;

      label S_TextCluster8_SVD14 = 'Standard: TextCluster8_SVD14' ;

      label S_TextCluster8_SVD15 = 'Standard: TextCluster8_SVD15' ;

      label S_TextCluster8_SVD16 = 'Standard: TextCluster8_SVD16' ;

      label S_TextCluster8_SVD17 = 'Standard: TextCluster8_SVD17' ;

      label S_TextCluster8_SVD18 = 'Standard: TextCluster8_SVD18' ;

      label S_TextCluster8_SVD19 = 'Standard: TextCluster8_SVD19' ;

      label S_TextCluster8_SVD2 = 'Standard: TextCluster8_SVD2' ;

      label S_TextCluster8_SVD20 = 'Standard: TextCluster8_SVD20' ;

      label S_TextCluster8_SVD21 = 'Standard: TextCluster8_SVD21' ;

      label S_TextCluster8_SVD22 = 'Standard: TextCluster8_SVD22' ;

      label S_TextCluster8_SVD23 = 'Standard: TextCluster8_SVD23' ;

      label S_TextCluster8_SVD24 = 'Standard: TextCluster8_SVD24' ;

      label S_TextCluster8_SVD25 = 'Standard: TextCluster8_SVD25' ;

      label S_TextCluster8_SVD26 = 'Standard: TextCluster8_SVD26' ;

      label S_TextCluster8_SVD27 = 'Standard: TextCluster8_SVD27' ;

      label S_TextCluster8_SVD28 = 'Standard: TextCluster8_SVD28' ;

      label S_TextCluster8_SVD29 = 'Standard: TextCluster8_SVD29' ;

      label S_TextCluster8_SVD3 = 'Standard: TextCluster8_SVD3' ;

      label S_TextCluster8_SVD30 = 'Standard: TextCluster8_SVD30' ;

      label S_TextCluster8_SVD31 = 'Standard: TextCluster8_SVD31' ;

      label S_TextCluster8_SVD32 = 'Standard: TextCluster8_SVD32' ;

      label S_TextCluster8_SVD33 = 'Standard: TextCluster8_SVD33' ;

      label S_TextCluster8_SVD34 = 'Standard: TextCluster8_SVD34' ;

      label S_TextCluster8_SVD35 = 'Standard: TextCluster8_SVD35' ;

      label S_TextCluster8_SVD36 = 'Standard: TextCluster8_SVD36' ;

      label S_TextCluster8_SVD37 = 'Standard: TextCluster8_SVD37' ;

      label S_TextCluster8_SVD38 = 'Standard: TextCluster8_SVD38' ;

      label S_TextCluster8_SVD39 = 'Standard: TextCluster8_SVD39' ;

      label S_TextCluster8_SVD4 = 'Standard: TextCluster8_SVD4' ;

      label S_TextCluster8_SVD40 = 'Standard: TextCluster8_SVD40' ;

      label S_TextCluster8_SVD41 = 'Standard: TextCluster8_SVD41' ;

      label S_TextCluster8_SVD42 = 'Standard: TextCluster8_SVD42' ;

      label S_TextCluster8_SVD43 = 'Standard: TextCluster8_SVD43' ;

      label S_TextCluster8_SVD44 = 'Standard: TextCluster8_SVD44' ;

      label S_TextCluster8_SVD45 = 'Standard: TextCluster8_SVD45' ;

      label S_TextCluster8_SVD46 = 'Standard: TextCluster8_SVD46' ;

      label S_TextCluster8_SVD47 = 'Standard: TextCluster8_SVD47' ;

      label S_TextCluster8_SVD48 = 'Standard: TextCluster8_SVD48' ;

      label S_TextCluster8_SVD49 = 'Standard: TextCluster8_SVD49' ;

      label S_TextCluster8_SVD5 = 'Standard: TextCluster8_SVD5' ;

      label S_TextCluster8_SVD50 = 'Standard: TextCluster8_SVD50' ;

      label S_TextCluster8_SVD51 = 'Standard: TextCluster8_SVD51' ;

      label S_TextCluster8_SVD52 = 'Standard: TextCluster8_SVD52' ;

      label S_TextCluster8_SVD53 = 'Standard: TextCluster8_SVD53' ;

      label S_TextCluster8_SVD54 = 'Standard: TextCluster8_SVD54' ;

      label S_TextCluster8_SVD55 = 'Standard: TextCluster8_SVD55' ;

      label S_TextCluster8_SVD56 = 'Standard: TextCluster8_SVD56' ;

      label S_TextCluster8_SVD57 = 'Standard: TextCluster8_SVD57' ;

      label S_TextCluster8_SVD58 = 'Standard: TextCluster8_SVD58' ;

      label S_TextCluster8_SVD59 = 'Standard: TextCluster8_SVD59' ;

      label S_TextCluster8_SVD6 = 'Standard: TextCluster8_SVD6' ;

      label S_TextCluster8_SVD60 = 'Standard: TextCluster8_SVD60' ;

      label S_TextCluster8_SVD61 = 'Standard: TextCluster8_SVD61' ;

      label S_TextCluster8_SVD62 = 'Standard: TextCluster8_SVD62' ;

      label S_TextCluster8_SVD63 = 'Standard: TextCluster8_SVD63' ;

      label S_TextCluster8_SVD64 = 'Standard: TextCluster8_SVD64' ;

      label S_TextCluster8_SVD65 = 'Standard: TextCluster8_SVD65' ;

      label S_TextCluster8_SVD66 = 'Standard: TextCluster8_SVD66' ;

      label S_TextCluster8_SVD67 = 'Standard: TextCluster8_SVD67' ;

      label S_TextCluster8_SVD68 = 'Standard: TextCluster8_SVD68' ;

      label S_TextCluster8_SVD69 = 'Standard: TextCluster8_SVD69' ;

      label S_TextCluster8_SVD7 = 'Standard: TextCluster8_SVD7' ;

      label S_TextCluster8_SVD70 = 'Standard: TextCluster8_SVD70' ;

      label S_TextCluster8_SVD71 = 'Standard: TextCluster8_SVD71' ;

      label S_TextCluster8_SVD72 = 'Standard: TextCluster8_SVD72' ;

      label S_TextCluster8_SVD73 = 'Standard: TextCluster8_SVD73' ;

      label S_TextCluster8_SVD74 = 'Standard: TextCluster8_SVD74' ;

      label S_TextCluster8_SVD75 = 'Standard: TextCluster8_SVD75' ;

      label S_TextCluster8_SVD76 = 'Standard: TextCluster8_SVD76' ;

      label S_TextCluster8_SVD77 = 'Standard: TextCluster8_SVD77' ;

      label S_TextCluster8_SVD78 = 'Standard: TextCluster8_SVD78' ;

      label S_TextCluster8_SVD79 = 'Standard: TextCluster8_SVD79' ;

      label S_TextCluster8_SVD8 = 'Standard: TextCluster8_SVD8' ;

      label S_TextCluster8_SVD80 = 'Standard: TextCluster8_SVD80' ;

      label S_TextCluster8_SVD81 = 'Standard: TextCluster8_SVD81' ;

      label S_TextCluster8_SVD82 = 'Standard: TextCluster8_SVD82' ;

      label S_TextCluster8_SVD83 = 'Standard: TextCluster8_SVD83' ;

      label S_TextCluster8_SVD84 = 'Standard: TextCluster8_SVD84' ;

      label S_TextCluster8_SVD85 = 'Standard: TextCluster8_SVD85' ;

      label S_TextCluster8_SVD86 = 'Standard: TextCluster8_SVD86' ;

      label S_TextCluster8_SVD87 = 'Standard: TextCluster8_SVD87' ;

      label S_TextCluster8_SVD88 = 'Standard: TextCluster8_SVD88' ;

      label S_TextCluster8_SVD89 = 'Standard: TextCluster8_SVD89' ;

      label S_TextCluster8_SVD9 = 'Standard: TextCluster8_SVD9' ;

      label S_TextCluster8_SVD90 = 'Standard: TextCluster8_SVD90' ;

      label S_TextCluster8_SVD91 = 'Standard: TextCluster8_SVD91' ;

      label S_TextCluster8_SVD92 = 'Standard: TextCluster8_SVD92' ;

      label S_TextCluster8_SVD93 = 'Standard: TextCluster8_SVD93' ;

      label S_TextCluster8_SVD94 = 'Standard: TextCluster8_SVD94' ;

      label S_TextCluster8_SVD95 = 'Standard: TextCluster8_SVD95' ;

      label S_TextCluster8_SVD96 = 'Standard: TextCluster8_SVD96' ;

      label S_TextCluster8_SVD97 = 'Standard: TextCluster8_SVD97' ;

      label S_TextCluster8_SVD98 = 'Standard: TextCluster8_SVD98' ;

      label S_TextCluster8_SVD99 = 'Standard: TextCluster8_SVD99' ;

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
   TextCluster8_SVD1 ,
   TextCluster8_SVD10 ,
   TextCluster8_SVD100 ,
   TextCluster8_SVD11 ,
   TextCluster8_SVD12 ,
   TextCluster8_SVD13 ,
   TextCluster8_SVD14 ,
   TextCluster8_SVD15 ,
   TextCluster8_SVD16 ,
   TextCluster8_SVD17 ,
   TextCluster8_SVD18 ,
   TextCluster8_SVD19 ,
   TextCluster8_SVD2 ,
   TextCluster8_SVD20 ,
   TextCluster8_SVD21 ,
   TextCluster8_SVD22 ,
   TextCluster8_SVD23 ,
   TextCluster8_SVD24 ,
   TextCluster8_SVD25 ,
   TextCluster8_SVD26 ,
   TextCluster8_SVD27 ,
   TextCluster8_SVD28 ,
   TextCluster8_SVD29 ,
   TextCluster8_SVD3 ,
   TextCluster8_SVD30 ,
   TextCluster8_SVD31 ,
   TextCluster8_SVD32 ,
   TextCluster8_SVD33 ,
   TextCluster8_SVD34 ,
   TextCluster8_SVD35 ,
   TextCluster8_SVD36 ,
   TextCluster8_SVD37 ,
   TextCluster8_SVD38 ,
   TextCluster8_SVD39 ,
   TextCluster8_SVD4 ,
   TextCluster8_SVD40 ,
   TextCluster8_SVD41 ,
   TextCluster8_SVD42 ,
   TextCluster8_SVD43 ,
   TextCluster8_SVD44 ,
   TextCluster8_SVD45 ,
   TextCluster8_SVD46 ,
   TextCluster8_SVD47 ,
   TextCluster8_SVD48 ,
   TextCluster8_SVD49 ,
   TextCluster8_SVD5 ,
   TextCluster8_SVD50 ,
   TextCluster8_SVD51 ,
   TextCluster8_SVD52 ,
   TextCluster8_SVD53 ,
   TextCluster8_SVD54 ,
   TextCluster8_SVD55 ,
   TextCluster8_SVD56 ,
   TextCluster8_SVD57 ,
   TextCluster8_SVD58 ,
   TextCluster8_SVD59 ,
   TextCluster8_SVD6 ,
   TextCluster8_SVD60 ,
   TextCluster8_SVD61 ,
   TextCluster8_SVD62 ,
   TextCluster8_SVD63 ,
   TextCluster8_SVD64 ,
   TextCluster8_SVD65 ,
   TextCluster8_SVD66 ,
   TextCluster8_SVD67 ,
   TextCluster8_SVD68 ,
   TextCluster8_SVD69 ,
   TextCluster8_SVD7 ,
   TextCluster8_SVD70 ,
   TextCluster8_SVD71 ,
   TextCluster8_SVD72 ,
   TextCluster8_SVD73 ,
   TextCluster8_SVD74 ,
   TextCluster8_SVD75 ,
   TextCluster8_SVD76 ,
   TextCluster8_SVD77 ,
   TextCluster8_SVD78 ,
   TextCluster8_SVD79 ,
   TextCluster8_SVD8 ,
   TextCluster8_SVD80 ,
   TextCluster8_SVD81 ,
   TextCluster8_SVD82 ,
   TextCluster8_SVD83 ,
   TextCluster8_SVD84 ,
   TextCluster8_SVD85 ,
   TextCluster8_SVD86 ,
   TextCluster8_SVD87 ,
   TextCluster8_SVD88 ,
   TextCluster8_SVD89 ,
   TextCluster8_SVD9 ,
   TextCluster8_SVD90 ,
   TextCluster8_SVD91 ,
   TextCluster8_SVD92 ,
   TextCluster8_SVD93 ,
   TextCluster8_SVD94 ,
   TextCluster8_SVD95 ,
   TextCluster8_SVD96 ,
   TextCluster8_SVD97 ,
   TextCluster8_SVD98 ,
   TextCluster8_SVD99   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster8_SVD1  =     -4.1423797068053 +      8.8368641609168 *
        TextCluster8_SVD1 ;
   S_TextCluster8_SVD10  =    -0.10229547230057 +     7.69852328389261 *
        TextCluster8_SVD10 ;
   S_TextCluster8_SVD100  =     -0.0675850860315 +     13.5729019598949 *
        TextCluster8_SVD100 ;
   S_TextCluster8_SVD11  =    -0.06751562113447 +     8.31616761241184 *
        TextCluster8_SVD11 ;
   S_TextCluster8_SVD12  =    -0.12409058141854 +     9.61633094831952 *
        TextCluster8_SVD12 ;
   S_TextCluster8_SVD13  =    -0.05820857077122 +     9.79860019558885 *
        TextCluster8_SVD13 ;
   S_TextCluster8_SVD14  =     0.01223718843545 +     9.72294066398271 *
        TextCluster8_SVD14 ;
   S_TextCluster8_SVD15  =    -0.04016835968288 +     10.8493005971367 *
        TextCluster8_SVD15 ;
   S_TextCluster8_SVD16  =     0.04501758625083 +     11.4472610480683 *
        TextCluster8_SVD16 ;
   S_TextCluster8_SVD17  =      0.0049141845588 +     13.5876002874628 *
        TextCluster8_SVD17 ;
   S_TextCluster8_SVD18  =    -0.02145515940585 +     10.7034296307368 *
        TextCluster8_SVD18 ;
   S_TextCluster8_SVD19  =     -0.0190933415654 +     11.7862954723914 *
        TextCluster8_SVD19 ;
   S_TextCluster8_SVD2  =     0.19249682778014 +     5.07114512003628 *
        TextCluster8_SVD2 ;
   S_TextCluster8_SVD20  =    -0.06144523476656 +     10.9606306876801 *
        TextCluster8_SVD20 ;
   S_TextCluster8_SVD21  =     0.12465570702179 +     11.9990900048496 *
        TextCluster8_SVD21 ;
   S_TextCluster8_SVD22  =     0.09699047070646 +     12.2489311895564 *
        TextCluster8_SVD22 ;
   S_TextCluster8_SVD23  =    -0.11210247534022 +      10.600093847396 *
        TextCluster8_SVD23 ;
   S_TextCluster8_SVD24  =      0.0201316813395 +     13.8586263602824 *
        TextCluster8_SVD24 ;
   S_TextCluster8_SVD25  =    -0.03920120366102 +     13.0161084361886 *
        TextCluster8_SVD25 ;
   S_TextCluster8_SVD26  =    -0.03414125348322 +     12.0133920010452 *
        TextCluster8_SVD26 ;
   S_TextCluster8_SVD27  =     0.08172356826695 +     12.7410587651791 *
        TextCluster8_SVD27 ;
   S_TextCluster8_SVD28  =    -0.03320989784766 +     13.1259083582698 *
        TextCluster8_SVD28 ;
   S_TextCluster8_SVD29  =     0.05369659353016 +     14.0720365698776 *
        TextCluster8_SVD29 ;
   S_TextCluster8_SVD3  =     0.03303631425385 +     5.25516593765117 *
        TextCluster8_SVD3 ;
   S_TextCluster8_SVD30  =     0.13140782413822 +     12.0406681158449 *
        TextCluster8_SVD30 ;
   S_TextCluster8_SVD31  =     0.02897671307901 +     13.7482901302535 *
        TextCluster8_SVD31 ;
   S_TextCluster8_SVD32  =    -0.12593244164604 +     13.3269252976039 *
        TextCluster8_SVD32 ;
   S_TextCluster8_SVD33  =    -0.03914437458421 +     14.3320952163912 *
        TextCluster8_SVD33 ;
   S_TextCluster8_SVD34  =    -0.15429893165307 +         12.937967296 *
        TextCluster8_SVD34 ;
   S_TextCluster8_SVD35  =    -0.02760408053446 +     13.3560487605156 *
        TextCluster8_SVD35 ;
   S_TextCluster8_SVD36  =    -0.01060395589616 +     12.7750771328574 *
        TextCluster8_SVD36 ;
   S_TextCluster8_SVD37  =    -0.03804622599965 +     13.1629899900168 *
        TextCluster8_SVD37 ;
   S_TextCluster8_SVD38  =    -0.00568014765474 +      13.828331480282 *
        TextCluster8_SVD38 ;
   S_TextCluster8_SVD39  =    -0.02066928268522 +     13.2849853760315 *
        TextCluster8_SVD39 ;
   S_TextCluster8_SVD4  =    -0.14454722651707 +     5.50161830657876 *
        TextCluster8_SVD4 ;
   S_TextCluster8_SVD40  =     0.16465454169024 +     13.1265096735889 *
        TextCluster8_SVD40 ;
   S_TextCluster8_SVD41  =    -0.02584880214681 +     14.2038928959824 *
        TextCluster8_SVD41 ;
   S_TextCluster8_SVD42  =    -0.03726095019299 +     13.3871930845775 *
        TextCluster8_SVD42 ;
   S_TextCluster8_SVD43  =    -0.17082642638204 +      13.472009494245 *
        TextCluster8_SVD43 ;
   S_TextCluster8_SVD44  =    -0.01919523867145 +     14.7569706958821 *
        TextCluster8_SVD44 ;
   S_TextCluster8_SVD45  =    -0.03010061643985 +      13.785572606928 *
        TextCluster8_SVD45 ;
   S_TextCluster8_SVD46  =    -0.07697012482031 +     13.0468110730848 *
        TextCluster8_SVD46 ;
   S_TextCluster8_SVD47  =    -0.03941347175485 +     13.7605658978193 *
        TextCluster8_SVD47 ;
   S_TextCluster8_SVD48  =     0.00808452553345 +      13.560296346034 *
        TextCluster8_SVD48 ;
   S_TextCluster8_SVD49  =     0.11277384850561 +     13.3463138765777 *
        TextCluster8_SVD49 ;
   S_TextCluster8_SVD5  =    -0.09376395734414 +     5.68161885093972 *
        TextCluster8_SVD5 ;
   S_TextCluster8_SVD50  =    -0.06992482690872 +     13.8037613689636 *
        TextCluster8_SVD50 ;
   S_TextCluster8_SVD51  =     0.14662599727534 +     13.5726509248851 *
        TextCluster8_SVD51 ;
   S_TextCluster8_SVD52  =    -0.04647078075369 +     13.3320628792652 *
        TextCluster8_SVD52 ;
   S_TextCluster8_SVD53  =    -0.07223512642604 +     13.3319713782544 *
        TextCluster8_SVD53 ;
   S_TextCluster8_SVD54  =    -0.03304766446348 +     13.3441282490759 *
        TextCluster8_SVD54 ;
   S_TextCluster8_SVD55  =     0.01572121198635 +     13.5418849547423 *
        TextCluster8_SVD55 ;
   S_TextCluster8_SVD56  =    -0.04927928377339 +     13.8011254740636 *
        TextCluster8_SVD56 ;
   S_TextCluster8_SVD57  =     0.03442768102564 +     13.3291960640409 *
        TextCluster8_SVD57 ;
   S_TextCluster8_SVD58  =     0.04344658759212 +     13.7297733658129 *
        TextCluster8_SVD58 ;
   S_TextCluster8_SVD59  =    -0.04109288854519 +     14.6006732590993 *
        TextCluster8_SVD59 ;
   S_TextCluster8_SVD6  =    -0.01904202651839 +      7.8539406364575 *
        TextCluster8_SVD6 ;
   S_TextCluster8_SVD60  =     0.01559220497965 +     13.7971247209085 *
        TextCluster8_SVD60 ;
   S_TextCluster8_SVD61  =     0.03635181885655 +     13.7092379431275 *
        TextCluster8_SVD61 ;
   S_TextCluster8_SVD62  =     0.00666560644934 +     13.2523775456008 *
        TextCluster8_SVD62 ;
   S_TextCluster8_SVD63  =     0.10236697244724 +     14.1750138002611 *
        TextCluster8_SVD63 ;
   S_TextCluster8_SVD64  =    -0.10101630957675 +     13.5726925613875 *
        TextCluster8_SVD64 ;
   S_TextCluster8_SVD65  =     0.07317280356318 +     13.6926036274988 *
        TextCluster8_SVD65 ;
   S_TextCluster8_SVD66  =     0.01747411578061 +     13.5911665615961 *
        TextCluster8_SVD66 ;
   S_TextCluster8_SVD67  =     0.01026682446247 +     13.5728036788925 *
        TextCluster8_SVD67 ;
   S_TextCluster8_SVD68  =     0.04442970109872 +     13.5539757902302 *
        TextCluster8_SVD68 ;
   S_TextCluster8_SVD69  =     -0.0020694354026 +     13.5772711919859 *
        TextCluster8_SVD69 ;
   S_TextCluster8_SVD7  =      -0.038516835294 +     6.85888734927091 *
        TextCluster8_SVD7 ;
   S_TextCluster8_SVD70  =     0.04434809532475 +     13.6139923901064 *
        TextCluster8_SVD70 ;
   S_TextCluster8_SVD71  =     0.03130177572939 +     13.5661122668475 *
        TextCluster8_SVD71 ;
   S_TextCluster8_SVD72  =     0.08384620677083 +     13.9253929946273 *
        TextCluster8_SVD72 ;
   S_TextCluster8_SVD73  =     0.06203026495725 +     13.0999402776086 *
        TextCluster8_SVD73 ;
   S_TextCluster8_SVD74  =     0.02185572729309 +     14.4060283891786 *
        TextCluster8_SVD74 ;
   S_TextCluster8_SVD75  =     -0.1052786741114 +     13.5847936818321 *
        TextCluster8_SVD75 ;
   S_TextCluster8_SVD76  =     0.10317416378688 +     14.0117619936385 *
        TextCluster8_SVD76 ;
   S_TextCluster8_SVD77  =     0.00922095167514 +     13.5114893569277 *
        TextCluster8_SVD77 ;
   S_TextCluster8_SVD78  =     0.05861828156794 +     13.6715706511822 *
        TextCluster8_SVD78 ;
   S_TextCluster8_SVD79  =    -0.00658191205749 +     13.8579399517691 *
        TextCluster8_SVD79 ;
   S_TextCluster8_SVD8  =     0.09786804979099 +     7.36625380339447 *
        TextCluster8_SVD8 ;
   S_TextCluster8_SVD80  =    -0.03190268535884 +     13.5430782000386 *
        TextCluster8_SVD80 ;
   S_TextCluster8_SVD81  =    -0.02034851793113 +     13.3363262164796 *
        TextCluster8_SVD81 ;
   S_TextCluster8_SVD82  =     0.01395213131572 +      13.876734620898 *
        TextCluster8_SVD82 ;
   S_TextCluster8_SVD83  =     0.03881317292982 +     13.8701294952759 *
        TextCluster8_SVD83 ;
   S_TextCluster8_SVD84  =     0.03820136800281 +     13.8898654107438 *
        TextCluster8_SVD84 ;
   S_TextCluster8_SVD85  =     0.05917111429961 +     13.9729741262811 *
        TextCluster8_SVD85 ;
   S_TextCluster8_SVD86  =    -0.02306316935369 +     13.5888128963531 *
        TextCluster8_SVD86 ;
   S_TextCluster8_SVD87  =    -0.05422727642702 +     14.1902046145016 *
        TextCluster8_SVD87 ;
   S_TextCluster8_SVD88  =    -0.03650949422898 +     13.7449387627807 *
        TextCluster8_SVD88 ;
   S_TextCluster8_SVD89  =      0.0264719638926 +     12.9929925833814 *
        TextCluster8_SVD89 ;
   S_TextCluster8_SVD9  =    -0.02653370504035 +     8.43453733708396 *
        TextCluster8_SVD9 ;
   S_TextCluster8_SVD90  =     0.05373650079551 +     13.3055488943045 *
        TextCluster8_SVD90 ;
   S_TextCluster8_SVD91  =      0.0171204641882 +     13.7616357949968 *
        TextCluster8_SVD91 ;
   S_TextCluster8_SVD92  =    -0.02155790526678 +     13.3243725370071 *
        TextCluster8_SVD92 ;
   S_TextCluster8_SVD93  =    -0.03581107296877 +     13.0833899591669 *
        TextCluster8_SVD93 ;
   S_TextCluster8_SVD94  =     0.00939178407423 +     13.5667832603186 *
        TextCluster8_SVD94 ;
   S_TextCluster8_SVD95  =    -0.05168575549344 +     12.8627233112516 *
        TextCluster8_SVD95 ;
   S_TextCluster8_SVD96  =    -0.00942808167107 +     13.4017988419756 *
        TextCluster8_SVD96 ;
   S_TextCluster8_SVD97  =     -0.0198950087017 +     13.6977965909288 *
        TextCluster8_SVD97 ;
   S_TextCluster8_SVD98  =    -0.00914606206687 +      13.019129608364 *
        TextCluster8_SVD98 ;
   S_TextCluster8_SVD99  =     0.01132770640346 +     13.8264401020735 *
        TextCluster8_SVD99 ;
END;
ELSE DO;
   IF MISSING( TextCluster8_SVD1 ) THEN S_TextCluster8_SVD1  = . ;
   ELSE S_TextCluster8_SVD1  =     -4.1423797068053 +      8.8368641609168 *
        TextCluster8_SVD1 ;
   IF MISSING( TextCluster8_SVD10 ) THEN S_TextCluster8_SVD10  = . ;
   ELSE S_TextCluster8_SVD10  =    -0.10229547230057 +     7.69852328389261 *
        TextCluster8_SVD10 ;
   IF MISSING( TextCluster8_SVD100 ) THEN S_TextCluster8_SVD100  = . ;
   ELSE S_TextCluster8_SVD100
          =     -0.0675850860315 +     13.5729019598949 * TextCluster8_SVD100
         ;
   IF MISSING( TextCluster8_SVD11 ) THEN S_TextCluster8_SVD11  = . ;
   ELSE S_TextCluster8_SVD11  =    -0.06751562113447 +     8.31616761241184 *
        TextCluster8_SVD11 ;
   IF MISSING( TextCluster8_SVD12 ) THEN S_TextCluster8_SVD12  = . ;
   ELSE S_TextCluster8_SVD12  =    -0.12409058141854 +     9.61633094831952 *
        TextCluster8_SVD12 ;
   IF MISSING( TextCluster8_SVD13 ) THEN S_TextCluster8_SVD13  = . ;
   ELSE S_TextCluster8_SVD13  =    -0.05820857077122 +     9.79860019558885 *
        TextCluster8_SVD13 ;
   IF MISSING( TextCluster8_SVD14 ) THEN S_TextCluster8_SVD14  = . ;
   ELSE S_TextCluster8_SVD14  =     0.01223718843545 +     9.72294066398271 *
        TextCluster8_SVD14 ;
   IF MISSING( TextCluster8_SVD15 ) THEN S_TextCluster8_SVD15  = . ;
   ELSE S_TextCluster8_SVD15  =    -0.04016835968288 +     10.8493005971367 *
        TextCluster8_SVD15 ;
   IF MISSING( TextCluster8_SVD16 ) THEN S_TextCluster8_SVD16  = . ;
   ELSE S_TextCluster8_SVD16  =     0.04501758625083 +     11.4472610480683 *
        TextCluster8_SVD16 ;
   IF MISSING( TextCluster8_SVD17 ) THEN S_TextCluster8_SVD17  = . ;
   ELSE S_TextCluster8_SVD17  =      0.0049141845588 +     13.5876002874628 *
        TextCluster8_SVD17 ;
   IF MISSING( TextCluster8_SVD18 ) THEN S_TextCluster8_SVD18  = . ;
   ELSE S_TextCluster8_SVD18  =    -0.02145515940585 +     10.7034296307368 *
        TextCluster8_SVD18 ;
   IF MISSING( TextCluster8_SVD19 ) THEN S_TextCluster8_SVD19  = . ;
   ELSE S_TextCluster8_SVD19  =     -0.0190933415654 +     11.7862954723914 *
        TextCluster8_SVD19 ;
   IF MISSING( TextCluster8_SVD2 ) THEN S_TextCluster8_SVD2  = . ;
   ELSE S_TextCluster8_SVD2  =     0.19249682778014 +     5.07114512003628 *
        TextCluster8_SVD2 ;
   IF MISSING( TextCluster8_SVD20 ) THEN S_TextCluster8_SVD20  = . ;
   ELSE S_TextCluster8_SVD20  =    -0.06144523476656 +     10.9606306876801 *
        TextCluster8_SVD20 ;
   IF MISSING( TextCluster8_SVD21 ) THEN S_TextCluster8_SVD21  = . ;
   ELSE S_TextCluster8_SVD21  =     0.12465570702179 +     11.9990900048496 *
        TextCluster8_SVD21 ;
   IF MISSING( TextCluster8_SVD22 ) THEN S_TextCluster8_SVD22  = . ;
   ELSE S_TextCluster8_SVD22  =     0.09699047070646 +     12.2489311895564 *
        TextCluster8_SVD22 ;
   IF MISSING( TextCluster8_SVD23 ) THEN S_TextCluster8_SVD23  = . ;
   ELSE S_TextCluster8_SVD23  =    -0.11210247534022 +      10.600093847396 *
        TextCluster8_SVD23 ;
   IF MISSING( TextCluster8_SVD24 ) THEN S_TextCluster8_SVD24  = . ;
   ELSE S_TextCluster8_SVD24  =      0.0201316813395 +     13.8586263602824 *
        TextCluster8_SVD24 ;
   IF MISSING( TextCluster8_SVD25 ) THEN S_TextCluster8_SVD25  = . ;
   ELSE S_TextCluster8_SVD25  =    -0.03920120366102 +     13.0161084361886 *
        TextCluster8_SVD25 ;
   IF MISSING( TextCluster8_SVD26 ) THEN S_TextCluster8_SVD26  = . ;
   ELSE S_TextCluster8_SVD26  =    -0.03414125348322 +     12.0133920010452 *
        TextCluster8_SVD26 ;
   IF MISSING( TextCluster8_SVD27 ) THEN S_TextCluster8_SVD27  = . ;
   ELSE S_TextCluster8_SVD27  =     0.08172356826695 +     12.7410587651791 *
        TextCluster8_SVD27 ;
   IF MISSING( TextCluster8_SVD28 ) THEN S_TextCluster8_SVD28  = . ;
   ELSE S_TextCluster8_SVD28  =    -0.03320989784766 +     13.1259083582698 *
        TextCluster8_SVD28 ;
   IF MISSING( TextCluster8_SVD29 ) THEN S_TextCluster8_SVD29  = . ;
   ELSE S_TextCluster8_SVD29  =     0.05369659353016 +     14.0720365698776 *
        TextCluster8_SVD29 ;
   IF MISSING( TextCluster8_SVD3 ) THEN S_TextCluster8_SVD3  = . ;
   ELSE S_TextCluster8_SVD3  =     0.03303631425385 +     5.25516593765117 *
        TextCluster8_SVD3 ;
   IF MISSING( TextCluster8_SVD30 ) THEN S_TextCluster8_SVD30  = . ;
   ELSE S_TextCluster8_SVD30  =     0.13140782413822 +     12.0406681158449 *
        TextCluster8_SVD30 ;
   IF MISSING( TextCluster8_SVD31 ) THEN S_TextCluster8_SVD31  = . ;
   ELSE S_TextCluster8_SVD31  =     0.02897671307901 +     13.7482901302535 *
        TextCluster8_SVD31 ;
   IF MISSING( TextCluster8_SVD32 ) THEN S_TextCluster8_SVD32  = . ;
   ELSE S_TextCluster8_SVD32  =    -0.12593244164604 +     13.3269252976039 *
        TextCluster8_SVD32 ;
   IF MISSING( TextCluster8_SVD33 ) THEN S_TextCluster8_SVD33  = . ;
   ELSE S_TextCluster8_SVD33  =    -0.03914437458421 +     14.3320952163912 *
        TextCluster8_SVD33 ;
   IF MISSING( TextCluster8_SVD34 ) THEN S_TextCluster8_SVD34  = . ;
   ELSE S_TextCluster8_SVD34  =    -0.15429893165307 +         12.937967296 *
        TextCluster8_SVD34 ;
   IF MISSING( TextCluster8_SVD35 ) THEN S_TextCluster8_SVD35  = . ;
   ELSE S_TextCluster8_SVD35  =    -0.02760408053446 +     13.3560487605156 *
        TextCluster8_SVD35 ;
   IF MISSING( TextCluster8_SVD36 ) THEN S_TextCluster8_SVD36  = . ;
   ELSE S_TextCluster8_SVD36  =    -0.01060395589616 +     12.7750771328574 *
        TextCluster8_SVD36 ;
   IF MISSING( TextCluster8_SVD37 ) THEN S_TextCluster8_SVD37  = . ;
   ELSE S_TextCluster8_SVD37  =    -0.03804622599965 +     13.1629899900168 *
        TextCluster8_SVD37 ;
   IF MISSING( TextCluster8_SVD38 ) THEN S_TextCluster8_SVD38  = . ;
   ELSE S_TextCluster8_SVD38  =    -0.00568014765474 +      13.828331480282 *
        TextCluster8_SVD38 ;
   IF MISSING( TextCluster8_SVD39 ) THEN S_TextCluster8_SVD39  = . ;
   ELSE S_TextCluster8_SVD39  =    -0.02066928268522 +     13.2849853760315 *
        TextCluster8_SVD39 ;
   IF MISSING( TextCluster8_SVD4 ) THEN S_TextCluster8_SVD4  = . ;
   ELSE S_TextCluster8_SVD4  =    -0.14454722651707 +     5.50161830657876 *
        TextCluster8_SVD4 ;
   IF MISSING( TextCluster8_SVD40 ) THEN S_TextCluster8_SVD40  = . ;
   ELSE S_TextCluster8_SVD40  =     0.16465454169024 +     13.1265096735889 *
        TextCluster8_SVD40 ;
   IF MISSING( TextCluster8_SVD41 ) THEN S_TextCluster8_SVD41  = . ;
   ELSE S_TextCluster8_SVD41  =    -0.02584880214681 +     14.2038928959824 *
        TextCluster8_SVD41 ;
   IF MISSING( TextCluster8_SVD42 ) THEN S_TextCluster8_SVD42  = . ;
   ELSE S_TextCluster8_SVD42  =    -0.03726095019299 +     13.3871930845775 *
        TextCluster8_SVD42 ;
   IF MISSING( TextCluster8_SVD43 ) THEN S_TextCluster8_SVD43  = . ;
   ELSE S_TextCluster8_SVD43  =    -0.17082642638204 +      13.472009494245 *
        TextCluster8_SVD43 ;
   IF MISSING( TextCluster8_SVD44 ) THEN S_TextCluster8_SVD44  = . ;
   ELSE S_TextCluster8_SVD44  =    -0.01919523867145 +     14.7569706958821 *
        TextCluster8_SVD44 ;
   IF MISSING( TextCluster8_SVD45 ) THEN S_TextCluster8_SVD45  = . ;
   ELSE S_TextCluster8_SVD45  =    -0.03010061643985 +      13.785572606928 *
        TextCluster8_SVD45 ;
   IF MISSING( TextCluster8_SVD46 ) THEN S_TextCluster8_SVD46  = . ;
   ELSE S_TextCluster8_SVD46  =    -0.07697012482031 +     13.0468110730848 *
        TextCluster8_SVD46 ;
   IF MISSING( TextCluster8_SVD47 ) THEN S_TextCluster8_SVD47  = . ;
   ELSE S_TextCluster8_SVD47  =    -0.03941347175485 +     13.7605658978193 *
        TextCluster8_SVD47 ;
   IF MISSING( TextCluster8_SVD48 ) THEN S_TextCluster8_SVD48  = . ;
   ELSE S_TextCluster8_SVD48  =     0.00808452553345 +      13.560296346034 *
        TextCluster8_SVD48 ;
   IF MISSING( TextCluster8_SVD49 ) THEN S_TextCluster8_SVD49  = . ;
   ELSE S_TextCluster8_SVD49  =     0.11277384850561 +     13.3463138765777 *
        TextCluster8_SVD49 ;
   IF MISSING( TextCluster8_SVD5 ) THEN S_TextCluster8_SVD5  = . ;
   ELSE S_TextCluster8_SVD5  =    -0.09376395734414 +     5.68161885093972 *
        TextCluster8_SVD5 ;
   IF MISSING( TextCluster8_SVD50 ) THEN S_TextCluster8_SVD50  = . ;
   ELSE S_TextCluster8_SVD50  =    -0.06992482690872 +     13.8037613689636 *
        TextCluster8_SVD50 ;
   IF MISSING( TextCluster8_SVD51 ) THEN S_TextCluster8_SVD51  = . ;
   ELSE S_TextCluster8_SVD51  =     0.14662599727534 +     13.5726509248851 *
        TextCluster8_SVD51 ;
   IF MISSING( TextCluster8_SVD52 ) THEN S_TextCluster8_SVD52  = . ;
   ELSE S_TextCluster8_SVD52  =    -0.04647078075369 +     13.3320628792652 *
        TextCluster8_SVD52 ;
   IF MISSING( TextCluster8_SVD53 ) THEN S_TextCluster8_SVD53  = . ;
   ELSE S_TextCluster8_SVD53  =    -0.07223512642604 +     13.3319713782544 *
        TextCluster8_SVD53 ;
   IF MISSING( TextCluster8_SVD54 ) THEN S_TextCluster8_SVD54  = . ;
   ELSE S_TextCluster8_SVD54  =    -0.03304766446348 +     13.3441282490759 *
        TextCluster8_SVD54 ;
   IF MISSING( TextCluster8_SVD55 ) THEN S_TextCluster8_SVD55  = . ;
   ELSE S_TextCluster8_SVD55  =     0.01572121198635 +     13.5418849547423 *
        TextCluster8_SVD55 ;
   IF MISSING( TextCluster8_SVD56 ) THEN S_TextCluster8_SVD56  = . ;
   ELSE S_TextCluster8_SVD56  =    -0.04927928377339 +     13.8011254740636 *
        TextCluster8_SVD56 ;
   IF MISSING( TextCluster8_SVD57 ) THEN S_TextCluster8_SVD57  = . ;
   ELSE S_TextCluster8_SVD57  =     0.03442768102564 +     13.3291960640409 *
        TextCluster8_SVD57 ;
   IF MISSING( TextCluster8_SVD58 ) THEN S_TextCluster8_SVD58  = . ;
   ELSE S_TextCluster8_SVD58  =     0.04344658759212 +     13.7297733658129 *
        TextCluster8_SVD58 ;
   IF MISSING( TextCluster8_SVD59 ) THEN S_TextCluster8_SVD59  = . ;
   ELSE S_TextCluster8_SVD59  =    -0.04109288854519 +     14.6006732590993 *
        TextCluster8_SVD59 ;
   IF MISSING( TextCluster8_SVD6 ) THEN S_TextCluster8_SVD6  = . ;
   ELSE S_TextCluster8_SVD6  =    -0.01904202651839 +      7.8539406364575 *
        TextCluster8_SVD6 ;
   IF MISSING( TextCluster8_SVD60 ) THEN S_TextCluster8_SVD60  = . ;
   ELSE S_TextCluster8_SVD60  =     0.01559220497965 +     13.7971247209085 *
        TextCluster8_SVD60 ;
   IF MISSING( TextCluster8_SVD61 ) THEN S_TextCluster8_SVD61  = . ;
   ELSE S_TextCluster8_SVD61  =     0.03635181885655 +     13.7092379431275 *
        TextCluster8_SVD61 ;
   IF MISSING( TextCluster8_SVD62 ) THEN S_TextCluster8_SVD62  = . ;
   ELSE S_TextCluster8_SVD62  =     0.00666560644934 +     13.2523775456008 *
        TextCluster8_SVD62 ;
   IF MISSING( TextCluster8_SVD63 ) THEN S_TextCluster8_SVD63  = . ;
   ELSE S_TextCluster8_SVD63  =     0.10236697244724 +     14.1750138002611 *
        TextCluster8_SVD63 ;
   IF MISSING( TextCluster8_SVD64 ) THEN S_TextCluster8_SVD64  = . ;
   ELSE S_TextCluster8_SVD64  =    -0.10101630957675 +     13.5726925613875 *
        TextCluster8_SVD64 ;
   IF MISSING( TextCluster8_SVD65 ) THEN S_TextCluster8_SVD65  = . ;
   ELSE S_TextCluster8_SVD65  =     0.07317280356318 +     13.6926036274988 *
        TextCluster8_SVD65 ;
   IF MISSING( TextCluster8_SVD66 ) THEN S_TextCluster8_SVD66  = . ;
   ELSE S_TextCluster8_SVD66  =     0.01747411578061 +     13.5911665615961 *
        TextCluster8_SVD66 ;
   IF MISSING( TextCluster8_SVD67 ) THEN S_TextCluster8_SVD67  = . ;
   ELSE S_TextCluster8_SVD67  =     0.01026682446247 +     13.5728036788925 *
        TextCluster8_SVD67 ;
   IF MISSING( TextCluster8_SVD68 ) THEN S_TextCluster8_SVD68  = . ;
   ELSE S_TextCluster8_SVD68  =     0.04442970109872 +     13.5539757902302 *
        TextCluster8_SVD68 ;
   IF MISSING( TextCluster8_SVD69 ) THEN S_TextCluster8_SVD69  = . ;
   ELSE S_TextCluster8_SVD69  =     -0.0020694354026 +     13.5772711919859 *
        TextCluster8_SVD69 ;
   IF MISSING( TextCluster8_SVD7 ) THEN S_TextCluster8_SVD7  = . ;
   ELSE S_TextCluster8_SVD7  =      -0.038516835294 +     6.85888734927091 *
        TextCluster8_SVD7 ;
   IF MISSING( TextCluster8_SVD70 ) THEN S_TextCluster8_SVD70  = . ;
   ELSE S_TextCluster8_SVD70  =     0.04434809532475 +     13.6139923901064 *
        TextCluster8_SVD70 ;
   IF MISSING( TextCluster8_SVD71 ) THEN S_TextCluster8_SVD71  = . ;
   ELSE S_TextCluster8_SVD71  =     0.03130177572939 +     13.5661122668475 *
        TextCluster8_SVD71 ;
   IF MISSING( TextCluster8_SVD72 ) THEN S_TextCluster8_SVD72  = . ;
   ELSE S_TextCluster8_SVD72  =     0.08384620677083 +     13.9253929946273 *
        TextCluster8_SVD72 ;
   IF MISSING( TextCluster8_SVD73 ) THEN S_TextCluster8_SVD73  = . ;
   ELSE S_TextCluster8_SVD73  =     0.06203026495725 +     13.0999402776086 *
        TextCluster8_SVD73 ;
   IF MISSING( TextCluster8_SVD74 ) THEN S_TextCluster8_SVD74  = . ;
   ELSE S_TextCluster8_SVD74  =     0.02185572729309 +     14.4060283891786 *
        TextCluster8_SVD74 ;
   IF MISSING( TextCluster8_SVD75 ) THEN S_TextCluster8_SVD75  = . ;
   ELSE S_TextCluster8_SVD75  =     -0.1052786741114 +     13.5847936818321 *
        TextCluster8_SVD75 ;
   IF MISSING( TextCluster8_SVD76 ) THEN S_TextCluster8_SVD76  = . ;
   ELSE S_TextCluster8_SVD76  =     0.10317416378688 +     14.0117619936385 *
        TextCluster8_SVD76 ;
   IF MISSING( TextCluster8_SVD77 ) THEN S_TextCluster8_SVD77  = . ;
   ELSE S_TextCluster8_SVD77  =     0.00922095167514 +     13.5114893569277 *
        TextCluster8_SVD77 ;
   IF MISSING( TextCluster8_SVD78 ) THEN S_TextCluster8_SVD78  = . ;
   ELSE S_TextCluster8_SVD78  =     0.05861828156794 +     13.6715706511822 *
        TextCluster8_SVD78 ;
   IF MISSING( TextCluster8_SVD79 ) THEN S_TextCluster8_SVD79  = . ;
   ELSE S_TextCluster8_SVD79  =    -0.00658191205749 +     13.8579399517691 *
        TextCluster8_SVD79 ;
   IF MISSING( TextCluster8_SVD8 ) THEN S_TextCluster8_SVD8  = . ;
   ELSE S_TextCluster8_SVD8  =     0.09786804979099 +     7.36625380339447 *
        TextCluster8_SVD8 ;
   IF MISSING( TextCluster8_SVD80 ) THEN S_TextCluster8_SVD80  = . ;
   ELSE S_TextCluster8_SVD80  =    -0.03190268535884 +     13.5430782000386 *
        TextCluster8_SVD80 ;
   IF MISSING( TextCluster8_SVD81 ) THEN S_TextCluster8_SVD81  = . ;
   ELSE S_TextCluster8_SVD81  =    -0.02034851793113 +     13.3363262164796 *
        TextCluster8_SVD81 ;
   IF MISSING( TextCluster8_SVD82 ) THEN S_TextCluster8_SVD82  = . ;
   ELSE S_TextCluster8_SVD82  =     0.01395213131572 +      13.876734620898 *
        TextCluster8_SVD82 ;
   IF MISSING( TextCluster8_SVD83 ) THEN S_TextCluster8_SVD83  = . ;
   ELSE S_TextCluster8_SVD83  =     0.03881317292982 +     13.8701294952759 *
        TextCluster8_SVD83 ;
   IF MISSING( TextCluster8_SVD84 ) THEN S_TextCluster8_SVD84  = . ;
   ELSE S_TextCluster8_SVD84  =     0.03820136800281 +     13.8898654107438 *
        TextCluster8_SVD84 ;
   IF MISSING( TextCluster8_SVD85 ) THEN S_TextCluster8_SVD85  = . ;
   ELSE S_TextCluster8_SVD85  =     0.05917111429961 +     13.9729741262811 *
        TextCluster8_SVD85 ;
   IF MISSING( TextCluster8_SVD86 ) THEN S_TextCluster8_SVD86  = . ;
   ELSE S_TextCluster8_SVD86  =    -0.02306316935369 +     13.5888128963531 *
        TextCluster8_SVD86 ;
   IF MISSING( TextCluster8_SVD87 ) THEN S_TextCluster8_SVD87  = . ;
   ELSE S_TextCluster8_SVD87  =    -0.05422727642702 +     14.1902046145016 *
        TextCluster8_SVD87 ;
   IF MISSING( TextCluster8_SVD88 ) THEN S_TextCluster8_SVD88  = . ;
   ELSE S_TextCluster8_SVD88  =    -0.03650949422898 +     13.7449387627807 *
        TextCluster8_SVD88 ;
   IF MISSING( TextCluster8_SVD89 ) THEN S_TextCluster8_SVD89  = . ;
   ELSE S_TextCluster8_SVD89  =      0.0264719638926 +     12.9929925833814 *
        TextCluster8_SVD89 ;
   IF MISSING( TextCluster8_SVD9 ) THEN S_TextCluster8_SVD9  = . ;
   ELSE S_TextCluster8_SVD9  =    -0.02653370504035 +     8.43453733708396 *
        TextCluster8_SVD9 ;
   IF MISSING( TextCluster8_SVD90 ) THEN S_TextCluster8_SVD90  = . ;
   ELSE S_TextCluster8_SVD90  =     0.05373650079551 +     13.3055488943045 *
        TextCluster8_SVD90 ;
   IF MISSING( TextCluster8_SVD91 ) THEN S_TextCluster8_SVD91  = . ;
   ELSE S_TextCluster8_SVD91  =      0.0171204641882 +     13.7616357949968 *
        TextCluster8_SVD91 ;
   IF MISSING( TextCluster8_SVD92 ) THEN S_TextCluster8_SVD92  = . ;
   ELSE S_TextCluster8_SVD92  =    -0.02155790526678 +     13.3243725370071 *
        TextCluster8_SVD92 ;
   IF MISSING( TextCluster8_SVD93 ) THEN S_TextCluster8_SVD93  = . ;
   ELSE S_TextCluster8_SVD93  =    -0.03581107296877 +     13.0833899591669 *
        TextCluster8_SVD93 ;
   IF MISSING( TextCluster8_SVD94 ) THEN S_TextCluster8_SVD94  = . ;
   ELSE S_TextCluster8_SVD94  =     0.00939178407423 +     13.5667832603186 *
        TextCluster8_SVD94 ;
   IF MISSING( TextCluster8_SVD95 ) THEN S_TextCluster8_SVD95  = . ;
   ELSE S_TextCluster8_SVD95  =    -0.05168575549344 +     12.8627233112516 *
        TextCluster8_SVD95 ;
   IF MISSING( TextCluster8_SVD96 ) THEN S_TextCluster8_SVD96  = . ;
   ELSE S_TextCluster8_SVD96  =    -0.00942808167107 +     13.4017988419756 *
        TextCluster8_SVD96 ;
   IF MISSING( TextCluster8_SVD97 ) THEN S_TextCluster8_SVD97  = . ;
   ELSE S_TextCluster8_SVD97  =     -0.0198950087017 +     13.6977965909288 *
        TextCluster8_SVD97 ;
   IF MISSING( TextCluster8_SVD98 ) THEN S_TextCluster8_SVD98  = . ;
   ELSE S_TextCluster8_SVD98  =    -0.00914606206687 +      13.019129608364 *
        TextCluster8_SVD98 ;
   IF MISSING( TextCluster8_SVD99 ) THEN S_TextCluster8_SVD99  = . ;
   ELSE S_TextCluster8_SVD99  =     0.01132770640346 +     13.8264401020735 *
        TextCluster8_SVD99 ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     0.00466512785557 * S_TextCluster8_SVD1
          +    -0.49850612209355 * S_TextCluster8_SVD10
          +    -0.11394799339975 * S_TextCluster8_SVD100
          +    -0.60599610886311 * S_TextCluster8_SVD11
          +     0.30357394515527 * S_TextCluster8_SVD12
          +    -0.13479574607649 * S_TextCluster8_SVD13
          +     0.22894687694945 * S_TextCluster8_SVD14
          +    -0.27318206988174 * S_TextCluster8_SVD15
          +      0.2725719787693 * S_TextCluster8_SVD16
          +    -0.01557543229318 * S_TextCluster8_SVD17
          +     -0.1488174534986 * S_TextCluster8_SVD18
          +     0.27035764498586 * S_TextCluster8_SVD19
          +      0.7750326305378 * S_TextCluster8_SVD2
          +     -0.0250191055676 * S_TextCluster8_SVD20
          +     0.05314585866855 * S_TextCluster8_SVD21
          +      -0.031412954401 * S_TextCluster8_SVD22
          +     0.23877753775409 * S_TextCluster8_SVD23
          +     0.12053941758607 * S_TextCluster8_SVD24
          +     0.22020498322632 * S_TextCluster8_SVD25
          +    -0.06306235399995 * S_TextCluster8_SVD26
          +      0.0567130474338 * S_TextCluster8_SVD27
          +     0.19196871047681 * S_TextCluster8_SVD28
          +    -0.08133419257407 * S_TextCluster8_SVD29
          +     0.05604542544632 * S_TextCluster8_SVD3
          +     0.04808374059015 * S_TextCluster8_SVD30
          +    -0.16509635670514 * S_TextCluster8_SVD31
          +    -0.15533436333159 * S_TextCluster8_SVD32
          +    -0.03210239992347 * S_TextCluster8_SVD33
          +     0.07242640054377 * S_TextCluster8_SVD34
          +    -0.10658502402894 * S_TextCluster8_SVD35
          +    -0.04809522818124 * S_TextCluster8_SVD36
          +    -0.29329637369955 * S_TextCluster8_SVD37
          +     -0.2966044723936 * S_TextCluster8_SVD38
          +    -0.04657957716283 * S_TextCluster8_SVD39
          +     0.84328072233385 * S_TextCluster8_SVD4
          +     0.35330333484254 * S_TextCluster8_SVD40
          +     0.06217698220509 * S_TextCluster8_SVD41
          +     0.21014552053343 * S_TextCluster8_SVD42
          +     0.16721776047159 * S_TextCluster8_SVD43
          +     -0.1690190045282 * S_TextCluster8_SVD44
          +    -0.14968859664499 * S_TextCluster8_SVD45
          +      0.1256544129438 * S_TextCluster8_SVD46
          +    -0.01162731897767 * S_TextCluster8_SVD47
          +     -0.1537773020199 * S_TextCluster8_SVD48
          +     -0.0728626316528 * S_TextCluster8_SVD49
          +     0.68021758601483 * S_TextCluster8_SVD5
          +    -0.12562288779887 * S_TextCluster8_SVD50
          +     0.06412190605715 * S_TextCluster8_SVD51
          +     0.11733099928084 * S_TextCluster8_SVD52
          +    -0.02202990666036 * S_TextCluster8_SVD53
          +     0.00839820910458 * S_TextCluster8_SVD54
          +     0.03953897860893 * S_TextCluster8_SVD55
          +    -0.23992604604157 * S_TextCluster8_SVD56
          +     0.05576825258756 * S_TextCluster8_SVD57
          +    -0.03304689971241 * S_TextCluster8_SVD58
          +    -0.16602626683436 * S_TextCluster8_SVD59
          +     0.46733888125577 * S_TextCluster8_SVD6
          +    -0.02794642214957 * S_TextCluster8_SVD60
          +    -0.14526943194109 * S_TextCluster8_SVD61
          +     0.25928520370849 * S_TextCluster8_SVD62
          +      -0.016689437949 * S_TextCluster8_SVD63
          +    -0.18105844240794 * S_TextCluster8_SVD64
          +      -0.087902351334 * S_TextCluster8_SVD65
          +    -0.09169899831347 * S_TextCluster8_SVD66
          +     0.11483720790978 * S_TextCluster8_SVD67
          +    -0.04814389855399 * S_TextCluster8_SVD68
          +     0.28005233433304 * S_TextCluster8_SVD69
          +     0.21704751083274 * S_TextCluster8_SVD7
          +     0.05440972746153 * S_TextCluster8_SVD70
          +    -0.04155089968167 * S_TextCluster8_SVD71
          +    -0.10394084039919 * S_TextCluster8_SVD72
          +    -0.16959136375575 * S_TextCluster8_SVD73
          +      0.1431380466124 * S_TextCluster8_SVD74
          +     0.10344431995988 * S_TextCluster8_SVD75
          +    -0.08367126875742 * S_TextCluster8_SVD76
          +     0.11309050932066 * S_TextCluster8_SVD77
          +     0.10296940721065 * S_TextCluster8_SVD78
          +     0.07138727864603 * S_TextCluster8_SVD79
          +     0.75192626522792 * S_TextCluster8_SVD8
          +     0.15413531323857 * S_TextCluster8_SVD80
          +     0.12659894659132 * S_TextCluster8_SVD81
          +     0.17171102051392 * S_TextCluster8_SVD82
          +    -0.04407553874004 * S_TextCluster8_SVD83
          +    -0.01439801083144 * S_TextCluster8_SVD84
          +     -0.3364493669841 * S_TextCluster8_SVD85
          +     0.17081972096129 * S_TextCluster8_SVD86
          +     0.11032698679016 * S_TextCluster8_SVD87
          +    -0.09659226039177 * S_TextCluster8_SVD88
          +    -0.13759482717954 * S_TextCluster8_SVD89
          +      0.7312670854428 * S_TextCluster8_SVD9
          +    -0.09409784815189 * S_TextCluster8_SVD90
          +    -0.19815362981988 * S_TextCluster8_SVD91
          +    -0.05391034717317 * S_TextCluster8_SVD92
          +     0.17836368725203 * S_TextCluster8_SVD93
          +     0.32625293342807 * S_TextCluster8_SVD94
          +     0.04539863355652 * S_TextCluster8_SVD95
          +      0.0562250063358 * S_TextCluster8_SVD96
          +     -0.0193883010488 * S_TextCluster8_SVD97
          +     0.12774297238854 * S_TextCluster8_SVD98
          +    -0.22797296907537 * S_TextCluster8_SVD99 ;
   H12  =    -0.02125346134549 * S_TextCluster8_SVD1
          +    -0.02476702117776 * S_TextCluster8_SVD10
          +    -0.03450338148052 * S_TextCluster8_SVD100
          +    -0.26581975797323 * S_TextCluster8_SVD11
          +     0.09841656734455 * S_TextCluster8_SVD12
          +     0.05883294791599 * S_TextCluster8_SVD13
          +    -0.09171566449435 * S_TextCluster8_SVD14
          +    -0.05130128970634 * S_TextCluster8_SVD15
          +     0.04929226334939 * S_TextCluster8_SVD16
          +    -0.02340907884821 * S_TextCluster8_SVD17
          +    -0.12299718404078 * S_TextCluster8_SVD18
          +    -0.00010759452157 * S_TextCluster8_SVD19
          +     0.05397222082284 * S_TextCluster8_SVD2
          +    -0.03433843164424 * S_TextCluster8_SVD20
          +     0.03391421525785 * S_TextCluster8_SVD21
          +     0.07490913607933 * S_TextCluster8_SVD22
          +    -0.02559727426311 * S_TextCluster8_SVD23
          +    -0.06680936698036 * S_TextCluster8_SVD24
          +    -0.01905923433589 * S_TextCluster8_SVD25
          +     0.01469466114819 * S_TextCluster8_SVD26
          +     0.02985077882374 * S_TextCluster8_SVD27
          +    -0.01401095075128 * S_TextCluster8_SVD28
          +    -0.07877943044911 * S_TextCluster8_SVD29
          +     0.36602310398457 * S_TextCluster8_SVD3
          +    -0.06561588690874 * S_TextCluster8_SVD30
          +    -0.00821266428021 * S_TextCluster8_SVD31
          +    -0.00390797990198 * S_TextCluster8_SVD32
          +     0.00854413000885 * S_TextCluster8_SVD33
          +     0.07256572635427 * S_TextCluster8_SVD34
          +    -0.06910120582417 * S_TextCluster8_SVD35
          +     0.04534863317982 * S_TextCluster8_SVD36
          +     0.00083096442122 * S_TextCluster8_SVD37
          +     0.02624146343522 * S_TextCluster8_SVD38
          +      0.0035491612747 * S_TextCluster8_SVD39
          +     0.04040787408314 * S_TextCluster8_SVD4
          +    -0.01694291539926 * S_TextCluster8_SVD40
          +     -0.0417969922192 * S_TextCluster8_SVD41
          +     0.00002318803869 * S_TextCluster8_SVD42
          +    -0.07701747296332 * S_TextCluster8_SVD43
          +    -0.00782084827008 * S_TextCluster8_SVD44
          +    -0.04297117296663 * S_TextCluster8_SVD45
          +    -0.07478067748343 * S_TextCluster8_SVD46
          +     0.01763005913722 * S_TextCluster8_SVD47
          +     -0.0323321586914 * S_TextCluster8_SVD48
          +     0.02614337483437 * S_TextCluster8_SVD49
          +     0.20624824851497 * S_TextCluster8_SVD5
          +    -0.02981401802181 * S_TextCluster8_SVD50
          +     0.00294176219667 * S_TextCluster8_SVD51
          +     -0.1026978207509 * S_TextCluster8_SVD52
          +     0.04521113252651 * S_TextCluster8_SVD53
          +    -0.02124140854202 * S_TextCluster8_SVD54
          +     0.05220434568635 * S_TextCluster8_SVD55
          +      0.0181212153131 * S_TextCluster8_SVD56
          +    -0.01721273813493 * S_TextCluster8_SVD57
          +     0.00668796705986 * S_TextCluster8_SVD58
          +    -0.00904775836491 * S_TextCluster8_SVD59
          +    -0.16463429464433 * S_TextCluster8_SVD6
          +    -0.01030143819822 * S_TextCluster8_SVD60
          +     0.04503540994906 * S_TextCluster8_SVD61
          +    -0.01855238281056 * S_TextCluster8_SVD62
          +    -0.08465292914771 * S_TextCluster8_SVD63
          +    -0.02561360491483 * S_TextCluster8_SVD64
          +    -0.05428569901601 * S_TextCluster8_SVD65
          +     -0.0492663586005 * S_TextCluster8_SVD66
          +    -0.02155801108031 * S_TextCluster8_SVD67
          +     0.03995770393069 * S_TextCluster8_SVD68
          +    -0.02939244345697 * S_TextCluster8_SVD69
          +     0.20583618318144 * S_TextCluster8_SVD7
          +     0.02439324679565 * S_TextCluster8_SVD70
          +        0.02179421488 * S_TextCluster8_SVD71
          +    -0.00100804452226 * S_TextCluster8_SVD72
          +     -0.0125350176725 * S_TextCluster8_SVD73
          +     0.03007249287882 * S_TextCluster8_SVD74
          +    -0.01167503928037 * S_TextCluster8_SVD75
          +    -0.00731414146484 * S_TextCluster8_SVD76
          +     0.01346697380948 * S_TextCluster8_SVD77
          +    -0.01148436551227 * S_TextCluster8_SVD78
          +    -0.00420208865927 * S_TextCluster8_SVD79
          +    -0.28094786309879 * S_TextCluster8_SVD8
          +     0.01179362664757 * S_TextCluster8_SVD80
          +     0.04533048169593 * S_TextCluster8_SVD81
          +    -0.07649942777072 * S_TextCluster8_SVD82
          +     0.00019689723736 * S_TextCluster8_SVD83
          +      0.0094297312687 * S_TextCluster8_SVD84
          +     0.00801094892866 * S_TextCluster8_SVD85
          +      0.0096357282733 * S_TextCluster8_SVD86
          +     0.03720026731153 * S_TextCluster8_SVD87
          +     0.02050240067225 * S_TextCluster8_SVD88
          +     0.03352053898157 * S_TextCluster8_SVD89
          +     0.10960840750127 * S_TextCluster8_SVD9
          +    -0.01144400934755 * S_TextCluster8_SVD90
          +     0.00711383118973 * S_TextCluster8_SVD91
          +    -0.01994005482341 * S_TextCluster8_SVD92
          +      0.0023472044507 * S_TextCluster8_SVD93
          +    -0.00168688014516 * S_TextCluster8_SVD94
          +     0.04227053210305 * S_TextCluster8_SVD95
          +     0.02233483063764 * S_TextCluster8_SVD96
          +    -0.01836680212925 * S_TextCluster8_SVD97
          +    -0.00875061533144 * S_TextCluster8_SVD98
          +     0.02202668256943 * S_TextCluster8_SVD99 ;
   H13  =    -0.09942729601167 * S_TextCluster8_SVD1
          +    -0.42311492853084 * S_TextCluster8_SVD10
          +     0.00823975099635 * S_TextCluster8_SVD100
          +    -1.60783615681314 * S_TextCluster8_SVD11
          +     0.19620614567568 * S_TextCluster8_SVD12
          +     0.83368325538072 * S_TextCluster8_SVD13
          +    -0.48150045386558 * S_TextCluster8_SVD14
          +    -0.44059919752869 * S_TextCluster8_SVD15
          +    -0.56417053347283 * S_TextCluster8_SVD16
          +     -0.0425122339371 * S_TextCluster8_SVD17
          +    -0.56427569035074 * S_TextCluster8_SVD18
          +    -0.43854704983721 * S_TextCluster8_SVD19
          +    -1.77662725721563 * S_TextCluster8_SVD2
          +     0.49497185593962 * S_TextCluster8_SVD20
          +     0.19257231661187 * S_TextCluster8_SVD21
          +    -0.26862105614434 * S_TextCluster8_SVD22
          +     0.09840922035817 * S_TextCluster8_SVD23
          +     0.14370375721584 * S_TextCluster8_SVD24
          +    -0.68485039409576 * S_TextCluster8_SVD25
          +      0.4987401252463 * S_TextCluster8_SVD26
          +    -0.19662871160782 * S_TextCluster8_SVD27
          +     0.20461025130663 * S_TextCluster8_SVD28
          +     0.25422772582688 * S_TextCluster8_SVD29
          +    -0.72927355485148 * S_TextCluster8_SVD3
          +    -0.65960546246924 * S_TextCluster8_SVD30
          +     0.03640979991078 * S_TextCluster8_SVD31
          +     0.38888728460315 * S_TextCluster8_SVD32
          +     0.13308051608642 * S_TextCluster8_SVD33
          +     0.04067678298291 * S_TextCluster8_SVD34
          +    -0.15059011229614 * S_TextCluster8_SVD35
          +    -0.28523398733868 * S_TextCluster8_SVD36
          +     0.61636909375272 * S_TextCluster8_SVD37
          +     0.13919985882363 * S_TextCluster8_SVD38
          +     0.16042389531744 * S_TextCluster8_SVD39
          +      1.3873283494388 * S_TextCluster8_SVD4
          +     -0.3393988727799 * S_TextCluster8_SVD40
          +    -0.31001299579026 * S_TextCluster8_SVD41
          +    -0.01056321536655 * S_TextCluster8_SVD42
          +     0.12471735785516 * S_TextCluster8_SVD43
          +     0.05741989445937 * S_TextCluster8_SVD44
          +    -0.05824046993526 * S_TextCluster8_SVD45
          +     0.19575809148728 * S_TextCluster8_SVD46
          +    -0.01738971158101 * S_TextCluster8_SVD47
          +     0.05401709784644 * S_TextCluster8_SVD48
          +    -0.05533271549909 * S_TextCluster8_SVD49
          +      0.1353795545299 * S_TextCluster8_SVD5
          +     0.15291229303597 * S_TextCluster8_SVD50
          +     0.25375908864833 * S_TextCluster8_SVD51
          +    -0.26013700185449 * S_TextCluster8_SVD52
          +    -0.25949316645716 * S_TextCluster8_SVD53
          +     0.02841691838668 * S_TextCluster8_SVD54
          +    -0.56937979077349 * S_TextCluster8_SVD55
          +     0.02444772553199 * S_TextCluster8_SVD56
          +    -0.01125277021258 * S_TextCluster8_SVD57
          +     0.50150176728797 * S_TextCluster8_SVD58
          +    -0.01493307165251 * S_TextCluster8_SVD59
          +     0.33591990360227 * S_TextCluster8_SVD6
          +     0.18767025346513 * S_TextCluster8_SVD60
          +     0.20020211106832 * S_TextCluster8_SVD61
          +      -0.286270910156 * S_TextCluster8_SVD62
          +    -0.10840120794486 * S_TextCluster8_SVD63
          +     0.32866545294603 * S_TextCluster8_SVD64
          +     0.66107896476169 * S_TextCluster8_SVD65
          +    -0.32901124267753 * S_TextCluster8_SVD66
          +    -0.59228637651029 * S_TextCluster8_SVD67
          +     0.16537315445043 * S_TextCluster8_SVD68
          +    -0.10085398585562 * S_TextCluster8_SVD69
          +     0.28637099972672 * S_TextCluster8_SVD7
          +     0.25502328632659 * S_TextCluster8_SVD70
          +    -0.51767087879634 * S_TextCluster8_SVD71
          +     0.08384387425973 * S_TextCluster8_SVD72
          +     -0.1161043021327 * S_TextCluster8_SVD73
          +     0.10757398553351 * S_TextCluster8_SVD74
          +     0.15246569046627 * S_TextCluster8_SVD75
          +     0.15602319066887 * S_TextCluster8_SVD76
          +    -0.32330508445215 * S_TextCluster8_SVD77
          +     0.04127527274529 * S_TextCluster8_SVD78
          +     0.07905008532697 * S_TextCluster8_SVD79
          +     0.59600935884778 * S_TextCluster8_SVD8
          +    -0.01797868796472 * S_TextCluster8_SVD80
          +    -0.64854391860174 * S_TextCluster8_SVD81
          +     0.12210300096509 * S_TextCluster8_SVD82
          +     -0.1964968167492 * S_TextCluster8_SVD83
          +    -0.08809964633201 * S_TextCluster8_SVD84
          +    -0.28748546133538 * S_TextCluster8_SVD85
          +     0.04546452945689 * S_TextCluster8_SVD86
          +    -0.30229952706841 * S_TextCluster8_SVD87
          +    -0.34039624521527 * S_TextCluster8_SVD88
          +    -0.04675481006793 * S_TextCluster8_SVD89
          +     0.56621137381774 * S_TextCluster8_SVD9
          +     0.13535893924523 * S_TextCluster8_SVD90
          +     -0.1915896626238 * S_TextCluster8_SVD91
          +    -0.17509794347352 * S_TextCluster8_SVD92
          +    -0.03080847491327 * S_TextCluster8_SVD93
          +    -0.03479199433216 * S_TextCluster8_SVD94
          +    -0.32996933262555 * S_TextCluster8_SVD95
          +     0.05036992634838 * S_TextCluster8_SVD96
          +     0.13823810266267 * S_TextCluster8_SVD97
          +    -0.00481632107415 * S_TextCluster8_SVD98
          +      0.2269384960753 * S_TextCluster8_SVD99 ;
   H11  =     0.57939818008076 + H11 ;
   H12  =     0.14673611070041 + H12 ;
   H13  =    -0.54976962434335 + H13 ;
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
   P_CategoryTEACHER  =      2.8156991259761 * H11  +    -3.84552207299391 *
        H12  +     3.23320120999118 * H13 ;
   P_CategorySALES  =     2.96851419553579 * H11  +     -0.2367659592862 * H12
          +     2.82346233951523 * H13 ;
   P_CategoryOTHER  =     1.12930622736064 * H11  +     -1.0020613169187 * H12
          +    -1.22933479492919 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =     2.12038982644143 * H11
          +    -3.99444209355707 * H12  +    -2.64669590688569 * H13 ;
   P_CategoryHR  =    -4.10619194992782 * H11  +    -0.50982631574943 * H12
          +    -1.35940474987679 * H13 ;
   P_CategoryHEALTHCARE  =     -1.3920325108597 * H11
          +    -0.15700037259297 * H12  +     1.49610337236842 * H13 ;
   P_CategoryFITNESS  =    -0.67666910164801 * H11  +    -6.46188169794081 *
        H12  +    -0.20580095516007 * H13 ;
   P_CategoryDIGITAL_MEDIA  =     0.11642915175224 * H11
          +     4.25470811301116 * H12  +    -1.96691698433502 * H13 ;
   P_CategoryDESIGNER  =    -1.51991868954338 * H11  +      5.5800104588768 *
        H12  +     0.91215775529555 * H13 ;
   P_CategoryCONSULTANT  =      0.3871145808795 * H11
          +      1.3492335352914 * H12  +    -2.71193898378074 * H13 ;
   P_CategoryBUSINESS_DEVELOPMENT  =     2.35397597947653 * H11
          +     2.25528183885614 * H12  +     1.06263702818327 * H13 ;
   P_CategoryTEACHER  =    -3.34091424817163 + P_CategoryTEACHER ;
   P_CategorySALES  =    -2.50387116976261 + P_CategorySALES ;
   P_CategoryOTHER  =    -0.67636996907363 + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -2.83027668440368 +
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =    -2.39130551910603 + P_CategoryHR ;
   P_CategoryHEALTHCARE  =    -0.22647060229717 + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  =    -1.06521293602765 + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  =    -2.92565487717237 + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  =    -2.13147315778631 + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  =    -1.98544671516491 + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -1.58582873781668 +
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
S_TextCluster8_SVD1
S_TextCluster8_SVD10
S_TextCluster8_SVD100
S_TextCluster8_SVD11
S_TextCluster8_SVD12
S_TextCluster8_SVD13
S_TextCluster8_SVD14
S_TextCluster8_SVD15
S_TextCluster8_SVD16
S_TextCluster8_SVD17
S_TextCluster8_SVD18
S_TextCluster8_SVD19
S_TextCluster8_SVD2
S_TextCluster8_SVD20
S_TextCluster8_SVD21
S_TextCluster8_SVD22
S_TextCluster8_SVD23
S_TextCluster8_SVD24
S_TextCluster8_SVD25
S_TextCluster8_SVD26
S_TextCluster8_SVD27
S_TextCluster8_SVD28
S_TextCluster8_SVD29
S_TextCluster8_SVD3
S_TextCluster8_SVD30
S_TextCluster8_SVD31
S_TextCluster8_SVD32
S_TextCluster8_SVD33
S_TextCluster8_SVD34
S_TextCluster8_SVD35
S_TextCluster8_SVD36
S_TextCluster8_SVD37
S_TextCluster8_SVD38
S_TextCluster8_SVD39
S_TextCluster8_SVD4
S_TextCluster8_SVD40
S_TextCluster8_SVD41
S_TextCluster8_SVD42
S_TextCluster8_SVD43
S_TextCluster8_SVD44
S_TextCluster8_SVD45
S_TextCluster8_SVD46
S_TextCluster8_SVD47
S_TextCluster8_SVD48
S_TextCluster8_SVD49
S_TextCluster8_SVD5
S_TextCluster8_SVD50
S_TextCluster8_SVD51
S_TextCluster8_SVD52
S_TextCluster8_SVD53
S_TextCluster8_SVD54
S_TextCluster8_SVD55
S_TextCluster8_SVD56
S_TextCluster8_SVD57
S_TextCluster8_SVD58
S_TextCluster8_SVD59
S_TextCluster8_SVD6
S_TextCluster8_SVD60
S_TextCluster8_SVD61
S_TextCluster8_SVD62
S_TextCluster8_SVD63
S_TextCluster8_SVD64
S_TextCluster8_SVD65
S_TextCluster8_SVD66
S_TextCluster8_SVD67
S_TextCluster8_SVD68
S_TextCluster8_SVD69
S_TextCluster8_SVD7
S_TextCluster8_SVD70
S_TextCluster8_SVD71
S_TextCluster8_SVD72
S_TextCluster8_SVD73
S_TextCluster8_SVD74
S_TextCluster8_SVD75
S_TextCluster8_SVD76
S_TextCluster8_SVD77
S_TextCluster8_SVD78
S_TextCluster8_SVD79
S_TextCluster8_SVD8
S_TextCluster8_SVD80
S_TextCluster8_SVD81
S_TextCluster8_SVD82
S_TextCluster8_SVD83
S_TextCluster8_SVD84
S_TextCluster8_SVD85
S_TextCluster8_SVD86
S_TextCluster8_SVD87
S_TextCluster8_SVD88
S_TextCluster8_SVD89
S_TextCluster8_SVD9
S_TextCluster8_SVD90
S_TextCluster8_SVD91
S_TextCluster8_SVD92
S_TextCluster8_SVD93
S_TextCluster8_SVD94
S_TextCluster8_SVD95
S_TextCluster8_SVD96
S_TextCluster8_SVD97
S_TextCluster8_SVD98
S_TextCluster8_SVD99
H11
H12
H13
;
