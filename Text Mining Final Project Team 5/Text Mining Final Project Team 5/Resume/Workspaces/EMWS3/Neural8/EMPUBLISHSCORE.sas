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
      label S_TextCluster9_SVD1 = 'Standard: TextCluster9_SVD1' ;

      label S_TextCluster9_SVD10 = 'Standard: TextCluster9_SVD10' ;

      label S_TextCluster9_SVD11 = 'Standard: TextCluster9_SVD11' ;

      label S_TextCluster9_SVD12 = 'Standard: TextCluster9_SVD12' ;

      label S_TextCluster9_SVD13 = 'Standard: TextCluster9_SVD13' ;

      label S_TextCluster9_SVD14 = 'Standard: TextCluster9_SVD14' ;

      label S_TextCluster9_SVD15 = 'Standard: TextCluster9_SVD15' ;

      label S_TextCluster9_SVD16 = 'Standard: TextCluster9_SVD16' ;

      label S_TextCluster9_SVD17 = 'Standard: TextCluster9_SVD17' ;

      label S_TextCluster9_SVD18 = 'Standard: TextCluster9_SVD18' ;

      label S_TextCluster9_SVD19 = 'Standard: TextCluster9_SVD19' ;

      label S_TextCluster9_SVD2 = 'Standard: TextCluster9_SVD2' ;

      label S_TextCluster9_SVD20 = 'Standard: TextCluster9_SVD20' ;

      label S_TextCluster9_SVD21 = 'Standard: TextCluster9_SVD21' ;

      label S_TextCluster9_SVD22 = 'Standard: TextCluster9_SVD22' ;

      label S_TextCluster9_SVD23 = 'Standard: TextCluster9_SVD23' ;

      label S_TextCluster9_SVD24 = 'Standard: TextCluster9_SVD24' ;

      label S_TextCluster9_SVD25 = 'Standard: TextCluster9_SVD25' ;

      label S_TextCluster9_SVD26 = 'Standard: TextCluster9_SVD26' ;

      label S_TextCluster9_SVD27 = 'Standard: TextCluster9_SVD27' ;

      label S_TextCluster9_SVD28 = 'Standard: TextCluster9_SVD28' ;

      label S_TextCluster9_SVD29 = 'Standard: TextCluster9_SVD29' ;

      label S_TextCluster9_SVD3 = 'Standard: TextCluster9_SVD3' ;

      label S_TextCluster9_SVD30 = 'Standard: TextCluster9_SVD30' ;

      label S_TextCluster9_SVD31 = 'Standard: TextCluster9_SVD31' ;

      label S_TextCluster9_SVD32 = 'Standard: TextCluster9_SVD32' ;

      label S_TextCluster9_SVD33 = 'Standard: TextCluster9_SVD33' ;

      label S_TextCluster9_SVD4 = 'Standard: TextCluster9_SVD4' ;

      label S_TextCluster9_SVD5 = 'Standard: TextCluster9_SVD5' ;

      label S_TextCluster9_SVD6 = 'Standard: TextCluster9_SVD6' ;

      label S_TextCluster9_SVD7 = 'Standard: TextCluster9_SVD7' ;

      label S_TextCluster9_SVD8 = 'Standard: TextCluster9_SVD8' ;

      label S_TextCluster9_SVD9 = 'Standard: TextCluster9_SVD9' ;

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
   TextCluster9_SVD1 ,
   TextCluster9_SVD10 ,
   TextCluster9_SVD11 ,
   TextCluster9_SVD12 ,
   TextCluster9_SVD13 ,
   TextCluster9_SVD14 ,
   TextCluster9_SVD15 ,
   TextCluster9_SVD16 ,
   TextCluster9_SVD17 ,
   TextCluster9_SVD18 ,
   TextCluster9_SVD19 ,
   TextCluster9_SVD2 ,
   TextCluster9_SVD20 ,
   TextCluster9_SVD21 ,
   TextCluster9_SVD22 ,
   TextCluster9_SVD23 ,
   TextCluster9_SVD24 ,
   TextCluster9_SVD25 ,
   TextCluster9_SVD26 ,
   TextCluster9_SVD27 ,
   TextCluster9_SVD28 ,
   TextCluster9_SVD29 ,
   TextCluster9_SVD3 ,
   TextCluster9_SVD30 ,
   TextCluster9_SVD31 ,
   TextCluster9_SVD32 ,
   TextCluster9_SVD33 ,
   TextCluster9_SVD4 ,
   TextCluster9_SVD5 ,
   TextCluster9_SVD6 ,
   TextCluster9_SVD7 ,
   TextCluster9_SVD8 ,
   TextCluster9_SVD9   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster9_SVD1  =    -4.30411068535319 +     7.95172191256055 *
        TextCluster9_SVD1 ;
   S_TextCluster9_SVD10  =     0.04360437217267 +     6.21125087278021 *
        TextCluster9_SVD10 ;
   S_TextCluster9_SVD11  =    -0.07611634332029 +     7.55322764628545 *
        TextCluster9_SVD11 ;
   S_TextCluster9_SVD12  =     -0.0567580572253 +     7.79651660372889 *
        TextCluster9_SVD12 ;
   S_TextCluster9_SVD13  =     0.03208769545849 +     7.43887607352601 *
        TextCluster9_SVD13 ;
   S_TextCluster9_SVD14  =    -0.13905141577304 +     9.17649672171229 *
        TextCluster9_SVD14 ;
   S_TextCluster9_SVD15  =     0.09067275844594 +      8.2488935587765 *
        TextCluster9_SVD15 ;
   S_TextCluster9_SVD16  =     0.02514869060051 +     9.33277011140748 *
        TextCluster9_SVD16 ;
   S_TextCluster9_SVD17  =    -0.01717669616362 +     10.0095091412423 *
        TextCluster9_SVD17 ;
   S_TextCluster9_SVD18  =     0.08309393666135 +     8.77109412405085 *
        TextCluster9_SVD18 ;
   S_TextCluster9_SVD19  =    -0.15975549911595 +      8.7831445575755 *
        TextCluster9_SVD19 ;
   S_TextCluster9_SVD2  =     0.23570202179644 +     3.91236434172022 *
        TextCluster9_SVD2 ;
   S_TextCluster9_SVD20  =      0.0817985675148 +     8.95929400103925 *
        TextCluster9_SVD20 ;
   S_TextCluster9_SVD21  =    -0.07715159116869 +     9.34851064337784 *
        TextCluster9_SVD21 ;
   S_TextCluster9_SVD22  =     0.01216462815775 +     9.48764662870095 *
        TextCluster9_SVD22 ;
   S_TextCluster9_SVD23  =    -0.02158447569029 +     9.30153711162139 *
        TextCluster9_SVD23 ;
   S_TextCluster9_SVD24  =    -0.05107417477631 +     9.40535881885524 *
        TextCluster9_SVD24 ;
   S_TextCluster9_SVD25  =     0.10660337944479 +      9.3206165131745 *
        TextCluster9_SVD25 ;
   S_TextCluster9_SVD26  =     0.11419978907413 +      9.8503250513507 *
        TextCluster9_SVD26 ;
   S_TextCluster9_SVD27  =     -0.0253319697082 +     10.4704772452649 *
        TextCluster9_SVD27 ;
   S_TextCluster9_SVD28  =     0.02668639789587 +     10.3372750103301 *
        TextCluster9_SVD28 ;
   S_TextCluster9_SVD29  =     -0.0282596463449 +     10.2043548841761 *
        TextCluster9_SVD29 ;
   S_TextCluster9_SVD3  =     0.13205502700336 +      4.0817122169104 *
        TextCluster9_SVD3 ;
   S_TextCluster9_SVD30  =     0.08519701602255 +     11.1403641206632 *
        TextCluster9_SVD30 ;
   S_TextCluster9_SVD31  =     0.01592300818845 +     10.6822433246101 *
        TextCluster9_SVD31 ;
   S_TextCluster9_SVD32  =     0.04081374443145 +     10.8463444124928 *
        TextCluster9_SVD32 ;
   S_TextCluster9_SVD33  =      0.0001278685923 +     10.6117140679089 *
        TextCluster9_SVD33 ;
   S_TextCluster9_SVD4  =    -0.23172035716865 +     4.03443481496435 *
        TextCluster9_SVD4 ;
   S_TextCluster9_SVD5  =     0.27033947140263 +     4.35995858946701 *
        TextCluster9_SVD5 ;
   S_TextCluster9_SVD6  =     0.09072631671085 +     4.87588529202294 *
        TextCluster9_SVD6 ;
   S_TextCluster9_SVD7  =     0.14907412009717 +     4.83689859457797 *
        TextCluster9_SVD7 ;
   S_TextCluster9_SVD8  =     0.02053847144834 +     5.77527008315891 *
        TextCluster9_SVD8 ;
   S_TextCluster9_SVD9  =     0.07368930256906 +     5.99900674575526 *
        TextCluster9_SVD9 ;
END;
ELSE DO;
   IF MISSING( TextCluster9_SVD1 ) THEN S_TextCluster9_SVD1  = . ;
   ELSE S_TextCluster9_SVD1  =    -4.30411068535319 +     7.95172191256055 *
        TextCluster9_SVD1 ;
   IF MISSING( TextCluster9_SVD10 ) THEN S_TextCluster9_SVD10  = . ;
   ELSE S_TextCluster9_SVD10  =     0.04360437217267 +     6.21125087278021 *
        TextCluster9_SVD10 ;
   IF MISSING( TextCluster9_SVD11 ) THEN S_TextCluster9_SVD11  = . ;
   ELSE S_TextCluster9_SVD11  =    -0.07611634332029 +     7.55322764628545 *
        TextCluster9_SVD11 ;
   IF MISSING( TextCluster9_SVD12 ) THEN S_TextCluster9_SVD12  = . ;
   ELSE S_TextCluster9_SVD12  =     -0.0567580572253 +     7.79651660372889 *
        TextCluster9_SVD12 ;
   IF MISSING( TextCluster9_SVD13 ) THEN S_TextCluster9_SVD13  = . ;
   ELSE S_TextCluster9_SVD13  =     0.03208769545849 +     7.43887607352601 *
        TextCluster9_SVD13 ;
   IF MISSING( TextCluster9_SVD14 ) THEN S_TextCluster9_SVD14  = . ;
   ELSE S_TextCluster9_SVD14  =    -0.13905141577304 +     9.17649672171229 *
        TextCluster9_SVD14 ;
   IF MISSING( TextCluster9_SVD15 ) THEN S_TextCluster9_SVD15  = . ;
   ELSE S_TextCluster9_SVD15  =     0.09067275844594 +      8.2488935587765 *
        TextCluster9_SVD15 ;
   IF MISSING( TextCluster9_SVD16 ) THEN S_TextCluster9_SVD16  = . ;
   ELSE S_TextCluster9_SVD16  =     0.02514869060051 +     9.33277011140748 *
        TextCluster9_SVD16 ;
   IF MISSING( TextCluster9_SVD17 ) THEN S_TextCluster9_SVD17  = . ;
   ELSE S_TextCluster9_SVD17  =    -0.01717669616362 +     10.0095091412423 *
        TextCluster9_SVD17 ;
   IF MISSING( TextCluster9_SVD18 ) THEN S_TextCluster9_SVD18  = . ;
   ELSE S_TextCluster9_SVD18  =     0.08309393666135 +     8.77109412405085 *
        TextCluster9_SVD18 ;
   IF MISSING( TextCluster9_SVD19 ) THEN S_TextCluster9_SVD19  = . ;
   ELSE S_TextCluster9_SVD19  =    -0.15975549911595 +      8.7831445575755 *
        TextCluster9_SVD19 ;
   IF MISSING( TextCluster9_SVD2 ) THEN S_TextCluster9_SVD2  = . ;
   ELSE S_TextCluster9_SVD2  =     0.23570202179644 +     3.91236434172022 *
        TextCluster9_SVD2 ;
   IF MISSING( TextCluster9_SVD20 ) THEN S_TextCluster9_SVD20  = . ;
   ELSE S_TextCluster9_SVD20  =      0.0817985675148 +     8.95929400103925 *
        TextCluster9_SVD20 ;
   IF MISSING( TextCluster9_SVD21 ) THEN S_TextCluster9_SVD21  = . ;
   ELSE S_TextCluster9_SVD21  =    -0.07715159116869 +     9.34851064337784 *
        TextCluster9_SVD21 ;
   IF MISSING( TextCluster9_SVD22 ) THEN S_TextCluster9_SVD22  = . ;
   ELSE S_TextCluster9_SVD22  =     0.01216462815775 +     9.48764662870095 *
        TextCluster9_SVD22 ;
   IF MISSING( TextCluster9_SVD23 ) THEN S_TextCluster9_SVD23  = . ;
   ELSE S_TextCluster9_SVD23  =    -0.02158447569029 +     9.30153711162139 *
        TextCluster9_SVD23 ;
   IF MISSING( TextCluster9_SVD24 ) THEN S_TextCluster9_SVD24  = . ;
   ELSE S_TextCluster9_SVD24  =    -0.05107417477631 +     9.40535881885524 *
        TextCluster9_SVD24 ;
   IF MISSING( TextCluster9_SVD25 ) THEN S_TextCluster9_SVD25  = . ;
   ELSE S_TextCluster9_SVD25  =     0.10660337944479 +      9.3206165131745 *
        TextCluster9_SVD25 ;
   IF MISSING( TextCluster9_SVD26 ) THEN S_TextCluster9_SVD26  = . ;
   ELSE S_TextCluster9_SVD26  =     0.11419978907413 +      9.8503250513507 *
        TextCluster9_SVD26 ;
   IF MISSING( TextCluster9_SVD27 ) THEN S_TextCluster9_SVD27  = . ;
   ELSE S_TextCluster9_SVD27  =     -0.0253319697082 +     10.4704772452649 *
        TextCluster9_SVD27 ;
   IF MISSING( TextCluster9_SVD28 ) THEN S_TextCluster9_SVD28  = . ;
   ELSE S_TextCluster9_SVD28  =     0.02668639789587 +     10.3372750103301 *
        TextCluster9_SVD28 ;
   IF MISSING( TextCluster9_SVD29 ) THEN S_TextCluster9_SVD29  = . ;
   ELSE S_TextCluster9_SVD29  =     -0.0282596463449 +     10.2043548841761 *
        TextCluster9_SVD29 ;
   IF MISSING( TextCluster9_SVD3 ) THEN S_TextCluster9_SVD3  = . ;
   ELSE S_TextCluster9_SVD3  =     0.13205502700336 +      4.0817122169104 *
        TextCluster9_SVD3 ;
   IF MISSING( TextCluster9_SVD30 ) THEN S_TextCluster9_SVD30  = . ;
   ELSE S_TextCluster9_SVD30  =     0.08519701602255 +     11.1403641206632 *
        TextCluster9_SVD30 ;
   IF MISSING( TextCluster9_SVD31 ) THEN S_TextCluster9_SVD31  = . ;
   ELSE S_TextCluster9_SVD31  =     0.01592300818845 +     10.6822433246101 *
        TextCluster9_SVD31 ;
   IF MISSING( TextCluster9_SVD32 ) THEN S_TextCluster9_SVD32  = . ;
   ELSE S_TextCluster9_SVD32  =     0.04081374443145 +     10.8463444124928 *
        TextCluster9_SVD32 ;
   IF MISSING( TextCluster9_SVD33 ) THEN S_TextCluster9_SVD33  = . ;
   ELSE S_TextCluster9_SVD33  =      0.0001278685923 +     10.6117140679089 *
        TextCluster9_SVD33 ;
   IF MISSING( TextCluster9_SVD4 ) THEN S_TextCluster9_SVD4  = . ;
   ELSE S_TextCluster9_SVD4  =    -0.23172035716865 +     4.03443481496435 *
        TextCluster9_SVD4 ;
   IF MISSING( TextCluster9_SVD5 ) THEN S_TextCluster9_SVD5  = . ;
   ELSE S_TextCluster9_SVD5  =     0.27033947140263 +     4.35995858946701 *
        TextCluster9_SVD5 ;
   IF MISSING( TextCluster9_SVD6 ) THEN S_TextCluster9_SVD6  = . ;
   ELSE S_TextCluster9_SVD6  =     0.09072631671085 +     4.87588529202294 *
        TextCluster9_SVD6 ;
   IF MISSING( TextCluster9_SVD7 ) THEN S_TextCluster9_SVD7  = . ;
   ELSE S_TextCluster9_SVD7  =     0.14907412009717 +     4.83689859457797 *
        TextCluster9_SVD7 ;
   IF MISSING( TextCluster9_SVD8 ) THEN S_TextCluster9_SVD8  = . ;
   ELSE S_TextCluster9_SVD8  =     0.02053847144834 +     5.77527008315891 *
        TextCluster9_SVD8 ;
   IF MISSING( TextCluster9_SVD9 ) THEN S_TextCluster9_SVD9  = . ;
   ELSE S_TextCluster9_SVD9  =     0.07368930256906 +     5.99900674575526 *
        TextCluster9_SVD9 ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     0.01587106467832 * S_TextCluster9_SVD1
          +      0.0790401631966 * S_TextCluster9_SVD10
          +    -0.07642530503452 * S_TextCluster9_SVD11
          +    -0.10669175214421 * S_TextCluster9_SVD12
          +     0.10061501206165 * S_TextCluster9_SVD13
          +     0.08373265294332 * S_TextCluster9_SVD14
          +    -0.00924997757318 * S_TextCluster9_SVD15
          +      0.0374257270506 * S_TextCluster9_SVD16
          +     -0.0585000475568 * S_TextCluster9_SVD17
          +     0.03310916809782 * S_TextCluster9_SVD18
          +    -0.12944080855956 * S_TextCluster9_SVD19
          +    -0.22652387876706 * S_TextCluster9_SVD2
          +    -0.21269464878666 * S_TextCluster9_SVD20
          +     0.12607361003043 * S_TextCluster9_SVD21
          +     0.11186081288447 * S_TextCluster9_SVD22
          +     0.06255934851036 * S_TextCluster9_SVD23
          +    -0.06231178619962 * S_TextCluster9_SVD24
          +     0.01040853746463 * S_TextCluster9_SVD25
          +    -0.07612362479843 * S_TextCluster9_SVD26
          +     0.14399390169773 * S_TextCluster9_SVD27
          +     -0.0468731720619 * S_TextCluster9_SVD28
          +    -0.04685245039752 * S_TextCluster9_SVD29
          +     0.38284965560155 * S_TextCluster9_SVD3
          +     0.07982253744028 * S_TextCluster9_SVD30
          +     0.10819826969676 * S_TextCluster9_SVD31
          +     -0.0480602478235 * S_TextCluster9_SVD32
          +    -0.14000288333136 * S_TextCluster9_SVD33
          +    -0.36794128883294 * S_TextCluster9_SVD4
          +    -0.07860266937615 * S_TextCluster9_SVD5
          +    -0.41878123371194 * S_TextCluster9_SVD6
          +     0.04699253366187 * S_TextCluster9_SVD7
          +    -0.17551254761804 * S_TextCluster9_SVD8
          +    -0.07139110340067 * S_TextCluster9_SVD9 ;
   H12  =     0.08217004692691 * S_TextCluster9_SVD1
          +    -0.30723125987254 * S_TextCluster9_SVD10
          +     0.10254829249702 * S_TextCluster9_SVD11
          +      0.1642543869684 * S_TextCluster9_SVD12
          +    -0.00265855899817 * S_TextCluster9_SVD13
          +      0.0197282244135 * S_TextCluster9_SVD14
          +    -0.13381808701571 * S_TextCluster9_SVD15
          +    -0.11285467790298 * S_TextCluster9_SVD16
          +     0.06522817824293 * S_TextCluster9_SVD17
          +      0.0124864314809 * S_TextCluster9_SVD18
          +     0.10419134364441 * S_TextCluster9_SVD19
          +    -0.00668382097366 * S_TextCluster9_SVD2
          +     0.04635353586754 * S_TextCluster9_SVD20
          +    -0.03902248740604 * S_TextCluster9_SVD21
          +    -0.07793847148308 * S_TextCluster9_SVD22
          +     0.14735867327669 * S_TextCluster9_SVD23
          +     0.08710224067123 * S_TextCluster9_SVD24
          +    -0.08254703595836 * S_TextCluster9_SVD25
          +     0.02935830168891 * S_TextCluster9_SVD26
          +     -0.0091822624887 * S_TextCluster9_SVD27
          +      0.0574731368987 * S_TextCluster9_SVD28
          +     0.03380514546641 * S_TextCluster9_SVD29
          +     0.59331547389646 * S_TextCluster9_SVD3
          +    -0.00589193245611 * S_TextCluster9_SVD30
          +      0.0693252355475 * S_TextCluster9_SVD31
          +     0.05273063506023 * S_TextCluster9_SVD32
          +    -0.01145792725882 * S_TextCluster9_SVD33
          +     -0.3547994834957 * S_TextCluster9_SVD4
          +    -0.27917379162148 * S_TextCluster9_SVD5
          +     0.42611710221256 * S_TextCluster9_SVD6
          +      0.1261106312901 * S_TextCluster9_SVD7
          +     0.71338725729086 * S_TextCluster9_SVD8
          +    -0.18028302643213 * S_TextCluster9_SVD9 ;
   H13  =    -0.02145836021659 * S_TextCluster9_SVD1
          +    -0.11399746563078 * S_TextCluster9_SVD10
          +    -0.04697085872045 * S_TextCluster9_SVD11
          +    -0.11766937028518 * S_TextCluster9_SVD12
          +     0.08902066156547 * S_TextCluster9_SVD13
          +     -0.0823281664098 * S_TextCluster9_SVD14
          +    -0.00288136921701 * S_TextCluster9_SVD15
          +    -0.00102272341069 * S_TextCluster9_SVD16
          +     0.01994682177138 * S_TextCluster9_SVD17
          +     0.04034624897659 * S_TextCluster9_SVD18
          +    -0.02529311674844 * S_TextCluster9_SVD19
          +    -0.41115480494562 * S_TextCluster9_SVD2
          +    -0.08552155385162 * S_TextCluster9_SVD20
          +     0.01423114927071 * S_TextCluster9_SVD21
          +      0.0316003098638 * S_TextCluster9_SVD22
          +      0.0277320054335 * S_TextCluster9_SVD23
          +     0.00135739935378 * S_TextCluster9_SVD24
          +     0.04046487971734 * S_TextCluster9_SVD25
          +    -0.09195006096455 * S_TextCluster9_SVD26
          +     0.02001534399635 * S_TextCluster9_SVD27
          +    -0.01389317774477 * S_TextCluster9_SVD28
          +     0.08033705419551 * S_TextCluster9_SVD29
          +    -0.18886550436388 * S_TextCluster9_SVD3
          +     0.01706137190083 * S_TextCluster9_SVD30
          +    -0.00527507977161 * S_TextCluster9_SVD31
          +    -0.07680720018985 * S_TextCluster9_SVD32
          +     0.00983884424482 * S_TextCluster9_SVD33
          +    -0.01756189622357 * S_TextCluster9_SVD4
          +    -0.26056070806087 * S_TextCluster9_SVD5
          +      0.2811752219876 * S_TextCluster9_SVD6
          +    -0.08048552758974 * S_TextCluster9_SVD7
          +     0.12927726344034 * S_TextCluster9_SVD8
          +    -0.07679608207133 * S_TextCluster9_SVD9 ;
   H11  =    -0.01893004704604 + H11 ;
   H12  =     0.12860953359573 + H12 ;
   H13  =      0.1839740542608 + H13 ;
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
   P_CategoryTEACHER  =    -0.92601881267701 * H11  +    -3.74615287874911 *
        H12  +     4.35268146446509 * H13 ;
   P_CategorySALES  =     0.16095406849044 * H11  +     0.69232927992598 * H12
          +     3.89451876453918 * H13 ;
   P_CategoryOTHER  =    -0.80954289170356 * H11  +     2.19206484246266 * H12
          +     -0.7385331685005 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -1.29525488162838 * H11
          +     1.93299596477731 * H12  +    -7.02498610208728 * H13 ;
   P_CategoryHR  =      5.0353670376156 * H11  +     3.42171787722787 * H12
          +    -0.08554300026599 * H13 ;
   P_CategoryHEALTHCARE  =     4.45760016024622 * H11
          +    -2.07240214591085 * H12  +     0.29458448667656 * H13 ;
   P_CategoryFITNESS  =    -2.27725762640281 * H11  +     4.96026437455839 *
        H12  +     5.01255854061772 * H13 ;
   P_CategoryDIGITAL_MEDIA  =     -5.3633834406739 * H11
          +    -1.83651194192731 * H12  +    -4.64073628575569 * H13 ;
   P_CategoryDESIGNER  =     2.40875124089774 * H11  +    -3.07366614959353 *
        H12  +    -6.66220020324343 * H13 ;
   P_CategoryCONSULTANT  =      0.7878351434718 * H11
          +    -0.85736009614956 * H12  +    -2.25618205438606 * H13 ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -3.45898666789526 * H11
          +      0.7712180259433 * H12  +     1.48510390542307 * H13 ;
   P_CategoryTEACHER  =    -4.20026491414763 + P_CategoryTEACHER ;
   P_CategorySALES  =    -1.92581691127266 + P_CategorySALES ;
   P_CategoryOTHER  =    -0.64557454746159 + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -3.02319090046538 +
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =    -4.53535231189338 + P_CategoryHR ;
   P_CategoryHEALTHCARE  =    -2.25934140185509 + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  =    -5.45036073804502 + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  =    -3.84654075013723 + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  =    -2.79483558460102 + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  =     0.02911456600466 + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -1.60312242162606 +
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
S_TextCluster9_SVD1
S_TextCluster9_SVD10
S_TextCluster9_SVD11
S_TextCluster9_SVD12
S_TextCluster9_SVD13
S_TextCluster9_SVD14
S_TextCluster9_SVD15
S_TextCluster9_SVD16
S_TextCluster9_SVD17
S_TextCluster9_SVD18
S_TextCluster9_SVD19
S_TextCluster9_SVD2
S_TextCluster9_SVD20
S_TextCluster9_SVD21
S_TextCluster9_SVD22
S_TextCluster9_SVD23
S_TextCluster9_SVD24
S_TextCluster9_SVD25
S_TextCluster9_SVD26
S_TextCluster9_SVD27
S_TextCluster9_SVD28
S_TextCluster9_SVD29
S_TextCluster9_SVD3
S_TextCluster9_SVD30
S_TextCluster9_SVD31
S_TextCluster9_SVD32
S_TextCluster9_SVD33
S_TextCluster9_SVD4
S_TextCluster9_SVD5
S_TextCluster9_SVD6
S_TextCluster9_SVD7
S_TextCluster9_SVD8
S_TextCluster9_SVD9
H11
H12
H13
;
