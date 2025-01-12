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
      label S_TextCluster7_SVD1 = 'Standard: TextCluster7_SVD1' ;

      label S_TextCluster7_SVD10 = 'Standard: TextCluster7_SVD10' ;

      label S_TextCluster7_SVD11 = 'Standard: TextCluster7_SVD11' ;

      label S_TextCluster7_SVD12 = 'Standard: TextCluster7_SVD12' ;

      label S_TextCluster7_SVD13 = 'Standard: TextCluster7_SVD13' ;

      label S_TextCluster7_SVD14 = 'Standard: TextCluster7_SVD14' ;

      label S_TextCluster7_SVD15 = 'Standard: TextCluster7_SVD15' ;

      label S_TextCluster7_SVD16 = 'Standard: TextCluster7_SVD16' ;

      label S_TextCluster7_SVD17 = 'Standard: TextCluster7_SVD17' ;

      label S_TextCluster7_SVD18 = 'Standard: TextCluster7_SVD18' ;

      label S_TextCluster7_SVD19 = 'Standard: TextCluster7_SVD19' ;

      label S_TextCluster7_SVD2 = 'Standard: TextCluster7_SVD2' ;

      label S_TextCluster7_SVD20 = 'Standard: TextCluster7_SVD20' ;

      label S_TextCluster7_SVD21 = 'Standard: TextCluster7_SVD21' ;

      label S_TextCluster7_SVD22 = 'Standard: TextCluster7_SVD22' ;

      label S_TextCluster7_SVD23 = 'Standard: TextCluster7_SVD23' ;

      label S_TextCluster7_SVD24 = 'Standard: TextCluster7_SVD24' ;

      label S_TextCluster7_SVD25 = 'Standard: TextCluster7_SVD25' ;

      label S_TextCluster7_SVD26 = 'Standard: TextCluster7_SVD26' ;

      label S_TextCluster7_SVD27 = 'Standard: TextCluster7_SVD27' ;

      label S_TextCluster7_SVD28 = 'Standard: TextCluster7_SVD28' ;

      label S_TextCluster7_SVD29 = 'Standard: TextCluster7_SVD29' ;

      label S_TextCluster7_SVD3 = 'Standard: TextCluster7_SVD3' ;

      label S_TextCluster7_SVD30 = 'Standard: TextCluster7_SVD30' ;

      label S_TextCluster7_SVD31 = 'Standard: TextCluster7_SVD31' ;

      label S_TextCluster7_SVD32 = 'Standard: TextCluster7_SVD32' ;

      label S_TextCluster7_SVD33 = 'Standard: TextCluster7_SVD33' ;

      label S_TextCluster7_SVD34 = 'Standard: TextCluster7_SVD34' ;

      label S_TextCluster7_SVD35 = 'Standard: TextCluster7_SVD35' ;

      label S_TextCluster7_SVD36 = 'Standard: TextCluster7_SVD36' ;

      label S_TextCluster7_SVD37 = 'Standard: TextCluster7_SVD37' ;

      label S_TextCluster7_SVD38 = 'Standard: TextCluster7_SVD38' ;

      label S_TextCluster7_SVD39 = 'Standard: TextCluster7_SVD39' ;

      label S_TextCluster7_SVD4 = 'Standard: TextCluster7_SVD4' ;

      label S_TextCluster7_SVD40 = 'Standard: TextCluster7_SVD40' ;

      label S_TextCluster7_SVD41 = 'Standard: TextCluster7_SVD41' ;

      label S_TextCluster7_SVD42 = 'Standard: TextCluster7_SVD42' ;

      label S_TextCluster7_SVD43 = 'Standard: TextCluster7_SVD43' ;

      label S_TextCluster7_SVD44 = 'Standard: TextCluster7_SVD44' ;

      label S_TextCluster7_SVD45 = 'Standard: TextCluster7_SVD45' ;

      label S_TextCluster7_SVD46 = 'Standard: TextCluster7_SVD46' ;

      label S_TextCluster7_SVD47 = 'Standard: TextCluster7_SVD47' ;

      label S_TextCluster7_SVD48 = 'Standard: TextCluster7_SVD48' ;

      label S_TextCluster7_SVD49 = 'Standard: TextCluster7_SVD49' ;

      label S_TextCluster7_SVD5 = 'Standard: TextCluster7_SVD5' ;

      label S_TextCluster7_SVD50 = 'Standard: TextCluster7_SVD50' ;

      label S_TextCluster7_SVD51 = 'Standard: TextCluster7_SVD51' ;

      label S_TextCluster7_SVD52 = 'Standard: TextCluster7_SVD52' ;

      label S_TextCluster7_SVD53 = 'Standard: TextCluster7_SVD53' ;

      label S_TextCluster7_SVD54 = 'Standard: TextCluster7_SVD54' ;

      label S_TextCluster7_SVD55 = 'Standard: TextCluster7_SVD55' ;

      label S_TextCluster7_SVD56 = 'Standard: TextCluster7_SVD56' ;

      label S_TextCluster7_SVD57 = 'Standard: TextCluster7_SVD57' ;

      label S_TextCluster7_SVD58 = 'Standard: TextCluster7_SVD58' ;

      label S_TextCluster7_SVD59 = 'Standard: TextCluster7_SVD59' ;

      label S_TextCluster7_SVD6 = 'Standard: TextCluster7_SVD6' ;

      label S_TextCluster7_SVD60 = 'Standard: TextCluster7_SVD60' ;

      label S_TextCluster7_SVD61 = 'Standard: TextCluster7_SVD61' ;

      label S_TextCluster7_SVD62 = 'Standard: TextCluster7_SVD62' ;

      label S_TextCluster7_SVD63 = 'Standard: TextCluster7_SVD63' ;

      label S_TextCluster7_SVD64 = 'Standard: TextCluster7_SVD64' ;

      label S_TextCluster7_SVD65 = 'Standard: TextCluster7_SVD65' ;

      label S_TextCluster7_SVD66 = 'Standard: TextCluster7_SVD66' ;

      label S_TextCluster7_SVD67 = 'Standard: TextCluster7_SVD67' ;

      label S_TextCluster7_SVD68 = 'Standard: TextCluster7_SVD68' ;

      label S_TextCluster7_SVD69 = 'Standard: TextCluster7_SVD69' ;

      label S_TextCluster7_SVD7 = 'Standard: TextCluster7_SVD7' ;

      label S_TextCluster7_SVD8 = 'Standard: TextCluster7_SVD8' ;

      label S_TextCluster7_SVD9 = 'Standard: TextCluster7_SVD9' ;

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
   TextCluster7_SVD1 ,
   TextCluster7_SVD10 ,
   TextCluster7_SVD11 ,
   TextCluster7_SVD12 ,
   TextCluster7_SVD13 ,
   TextCluster7_SVD14 ,
   TextCluster7_SVD15 ,
   TextCluster7_SVD16 ,
   TextCluster7_SVD17 ,
   TextCluster7_SVD18 ,
   TextCluster7_SVD19 ,
   TextCluster7_SVD2 ,
   TextCluster7_SVD20 ,
   TextCluster7_SVD21 ,
   TextCluster7_SVD22 ,
   TextCluster7_SVD23 ,
   TextCluster7_SVD24 ,
   TextCluster7_SVD25 ,
   TextCluster7_SVD26 ,
   TextCluster7_SVD27 ,
   TextCluster7_SVD28 ,
   TextCluster7_SVD29 ,
   TextCluster7_SVD3 ,
   TextCluster7_SVD30 ,
   TextCluster7_SVD31 ,
   TextCluster7_SVD32 ,
   TextCluster7_SVD33 ,
   TextCluster7_SVD34 ,
   TextCluster7_SVD35 ,
   TextCluster7_SVD36 ,
   TextCluster7_SVD37 ,
   TextCluster7_SVD38 ,
   TextCluster7_SVD39 ,
   TextCluster7_SVD4 ,
   TextCluster7_SVD40 ,
   TextCluster7_SVD41 ,
   TextCluster7_SVD42 ,
   TextCluster7_SVD43 ,
   TextCluster7_SVD44 ,
   TextCluster7_SVD45 ,
   TextCluster7_SVD46 ,
   TextCluster7_SVD47 ,
   TextCluster7_SVD48 ,
   TextCluster7_SVD49 ,
   TextCluster7_SVD5 ,
   TextCluster7_SVD50 ,
   TextCluster7_SVD51 ,
   TextCluster7_SVD52 ,
   TextCluster7_SVD53 ,
   TextCluster7_SVD54 ,
   TextCluster7_SVD55 ,
   TextCluster7_SVD56 ,
   TextCluster7_SVD57 ,
   TextCluster7_SVD58 ,
   TextCluster7_SVD59 ,
   TextCluster7_SVD6 ,
   TextCluster7_SVD60 ,
   TextCluster7_SVD61 ,
   TextCluster7_SVD62 ,
   TextCluster7_SVD63 ,
   TextCluster7_SVD64 ,
   TextCluster7_SVD65 ,
   TextCluster7_SVD66 ,
   TextCluster7_SVD67 ,
   TextCluster7_SVD68 ,
   TextCluster7_SVD69 ,
   TextCluster7_SVD7 ,
   TextCluster7_SVD8 ,
   TextCluster7_SVD9   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster7_SVD1  =    -4.28116996976157 +     8.31774681496481 *
        TextCluster7_SVD1 ;
   S_TextCluster7_SVD10  =    -0.10427859702414 +     7.06013358940159 *
        TextCluster7_SVD10 ;
   S_TextCluster7_SVD11  =     -0.0682826217365 +     7.71234585319081 *
        TextCluster7_SVD11 ;
   S_TextCluster7_SVD12  =    -0.12796006561053 +     8.79983311699188 *
        TextCluster7_SVD12 ;
   S_TextCluster7_SVD13  =    -0.05350281988525 +     8.98152378413682 *
        TextCluster7_SVD13 ;
   S_TextCluster7_SVD14  =     0.01398655230534 +     8.95781890559545 *
        TextCluster7_SVD14 ;
   S_TextCluster7_SVD15  =    -0.04113633716343 +     9.90781816811413 *
        TextCluster7_SVD15 ;
   S_TextCluster7_SVD16  =     0.03902508597183 +     10.4340593372309 *
        TextCluster7_SVD16 ;
   S_TextCluster7_SVD17  =     0.00382519701751 +     12.5193780948602 *
        TextCluster7_SVD17 ;
   S_TextCluster7_SVD18  =     -0.0232160440706 +     9.76469931072731 *
        TextCluster7_SVD18 ;
   S_TextCluster7_SVD19  =    -0.02262476836075 +     10.7953735101503 *
        TextCluster7_SVD19 ;
   S_TextCluster7_SVD2  =     0.18731011290146 +     4.64478508971524 *
        TextCluster7_SVD2 ;
   S_TextCluster7_SVD20  =    -0.05405244324392 +     9.98460278196948 *
        TextCluster7_SVD20 ;
   S_TextCluster7_SVD21  =     0.12351789023876 +     10.9173046761214 *
        TextCluster7_SVD21 ;
   S_TextCluster7_SVD22  =     0.09448195264979 +     11.2068219965767 *
        TextCluster7_SVD22 ;
   S_TextCluster7_SVD23  =    -0.11532466210643 +     9.67496912481459 *
        TextCluster7_SVD23 ;
   S_TextCluster7_SVD24  =     0.02210617853672 +     12.5905145145335 *
        TextCluster7_SVD24 ;
   S_TextCluster7_SVD25  =    -0.03503292193081 +     11.9063694198619 *
        TextCluster7_SVD25 ;
   S_TextCluster7_SVD26  =    -0.03210589551419 +     10.9651036104691 *
        TextCluster7_SVD26 ;
   S_TextCluster7_SVD27  =     0.08223172080027 +     11.5897017965566 *
        TextCluster7_SVD27 ;
   S_TextCluster7_SVD28  =    -0.02970949470483 +     11.9317241701322 *
        TextCluster7_SVD28 ;
   S_TextCluster7_SVD29  =     0.05318718424736 +     12.8160454923984 *
        TextCluster7_SVD29 ;
   S_TextCluster7_SVD3  =     0.02818832990123 +     4.81654263656865 *
        TextCluster7_SVD3 ;
   S_TextCluster7_SVD30  =     0.12697422809781 +     10.9739153310288 *
        TextCluster7_SVD30 ;
   S_TextCluster7_SVD31  =     0.02920982713467 +     12.5987809224073 *
        TextCluster7_SVD31 ;
   S_TextCluster7_SVD32  =    -0.12180326861955 +     12.1702681637193 *
        TextCluster7_SVD32 ;
   S_TextCluster7_SVD33  =    -0.04227319881571 +     13.0770668668884 *
        TextCluster7_SVD33 ;
   S_TextCluster7_SVD34  =    -0.15750167305088 +     11.8058309492182 *
        TextCluster7_SVD34 ;
   S_TextCluster7_SVD35  =    -0.03220618674622 +     12.1871814711217 *
        TextCluster7_SVD35 ;
   S_TextCluster7_SVD36  =    -0.01623563072008 +     11.5926901824311 *
        TextCluster7_SVD36 ;
   S_TextCluster7_SVD37  =    -0.03829696896691 +      12.026722428586 *
        TextCluster7_SVD37 ;
   S_TextCluster7_SVD38  =    -0.00163170326301 +     12.5039930315948 *
        TextCluster7_SVD38 ;
   S_TextCluster7_SVD39  =    -0.01955256831107 +     12.0489327387877 *
        TextCluster7_SVD39 ;
   S_TextCluster7_SVD4  =    -0.14662847882972 +     5.10599552582538 *
        TextCluster7_SVD4 ;
   S_TextCluster7_SVD40  =     0.16896435566776 +     11.9113173925414 *
        TextCluster7_SVD40 ;
   S_TextCluster7_SVD41  =    -0.02849337974632 +     12.8484783463847 *
        TextCluster7_SVD41 ;
   S_TextCluster7_SVD42  =    -0.03583046427301 +      12.194746446796 *
        TextCluster7_SVD42 ;
   S_TextCluster7_SVD43  =    -0.16885601604375 +     12.2732079596177 *
        TextCluster7_SVD43 ;
   S_TextCluster7_SVD44  =    -0.01468495575263 +     13.3649306637091 *
        TextCluster7_SVD44 ;
   S_TextCluster7_SVD45  =     -0.0281408387759 +     12.4560416702483 *
        TextCluster7_SVD45 ;
   S_TextCluster7_SVD46  =    -0.07924225334331 +     11.7394716423763 *
        TextCluster7_SVD46 ;
   S_TextCluster7_SVD47  =    -0.03106539068804 +     12.4700491115467 *
        TextCluster7_SVD47 ;
   S_TextCluster7_SVD48  =     0.00583932464147 +     12.2762507911933 *
        TextCluster7_SVD48 ;
   S_TextCluster7_SVD49  =     0.11817908863111 +     12.0068075121709 *
        TextCluster7_SVD49 ;
   S_TextCluster7_SVD5  =    -0.09533032636999 +     5.24463413712209 *
        TextCluster7_SVD5 ;
   S_TextCluster7_SVD50  =    -0.07832197931669 +     12.4418167611441 *
        TextCluster7_SVD50 ;
   S_TextCluster7_SVD51  =      0.1429122570484 +     12.2727852561009 *
        TextCluster7_SVD51 ;
   S_TextCluster7_SVD52  =    -0.04693220124268 +     11.9268647652466 *
        TextCluster7_SVD52 ;
   S_TextCluster7_SVD53  =      -0.073353829069 +     11.9825140102404 *
        TextCluster7_SVD53 ;
   S_TextCluster7_SVD54  =    -0.03206496968687 +     12.0379470370483 *
        TextCluster7_SVD54 ;
   S_TextCluster7_SVD55  =     0.01563516490609 +     12.2892255075424 *
        TextCluster7_SVD55 ;
   S_TextCluster7_SVD56  =    -0.05075063864169 +     12.4005477078259 *
        TextCluster7_SVD56 ;
   S_TextCluster7_SVD57  =      0.0371580699031 +     11.9921604148511 *
        TextCluster7_SVD57 ;
   S_TextCluster7_SVD58  =     0.04291782951669 +     12.2928545566751 *
        TextCluster7_SVD58 ;
   S_TextCluster7_SVD59  =     -0.0409578125012 +     13.1321764107035 *
        TextCluster7_SVD59 ;
   S_TextCluster7_SVD6  =    -0.01411388511664 +     7.14101067276707 *
        TextCluster7_SVD6 ;
   S_TextCluster7_SVD60  =     0.01326070807809 +     12.4031454385803 *
        TextCluster7_SVD60 ;
   S_TextCluster7_SVD61  =     0.03810919945757 +     12.2421159503419 *
        TextCluster7_SVD61 ;
   S_TextCluster7_SVD62  =     0.00543820335579 +     11.9038757141209 *
        TextCluster7_SVD62 ;
   S_TextCluster7_SVD63  =     0.10338919552411 +     12.6724699429707 *
        TextCluster7_SVD63 ;
   S_TextCluster7_SVD64  =     -0.0937931480703 +     12.2728762103028 *
        TextCluster7_SVD64 ;
   S_TextCluster7_SVD65  =      0.0733714091289 +     12.1016477296004 *
        TextCluster7_SVD65 ;
   S_TextCluster7_SVD66  =     0.01680605408346 +     12.0975460736355 *
        TextCluster7_SVD66 ;
   S_TextCluster7_SVD67  =     0.00655424790707 +     12.1744536412369 *
        TextCluster7_SVD67 ;
   S_TextCluster7_SVD68  =     0.04244763456581 +     12.1024826665908 *
        TextCluster7_SVD68 ;
   S_TextCluster7_SVD69  =      0.0003356929109 +     12.0558799230361 *
        TextCluster7_SVD69 ;
   S_TextCluster7_SVD7  =    -0.03490436888498 +     6.29986426584422 *
        TextCluster7_SVD7 ;
   S_TextCluster7_SVD8  =     0.09636281054232 +     6.77177721649239 *
        TextCluster7_SVD8 ;
   S_TextCluster7_SVD9  =    -0.03734982129122 +     7.70572263872354 *
        TextCluster7_SVD9 ;
END;
ELSE DO;
   IF MISSING( TextCluster7_SVD1 ) THEN S_TextCluster7_SVD1  = . ;
   ELSE S_TextCluster7_SVD1  =    -4.28116996976157 +     8.31774681496481 *
        TextCluster7_SVD1 ;
   IF MISSING( TextCluster7_SVD10 ) THEN S_TextCluster7_SVD10  = . ;
   ELSE S_TextCluster7_SVD10  =    -0.10427859702414 +     7.06013358940159 *
        TextCluster7_SVD10 ;
   IF MISSING( TextCluster7_SVD11 ) THEN S_TextCluster7_SVD11  = . ;
   ELSE S_TextCluster7_SVD11  =     -0.0682826217365 +     7.71234585319081 *
        TextCluster7_SVD11 ;
   IF MISSING( TextCluster7_SVD12 ) THEN S_TextCluster7_SVD12  = . ;
   ELSE S_TextCluster7_SVD12  =    -0.12796006561053 +     8.79983311699188 *
        TextCluster7_SVD12 ;
   IF MISSING( TextCluster7_SVD13 ) THEN S_TextCluster7_SVD13  = . ;
   ELSE S_TextCluster7_SVD13  =    -0.05350281988525 +     8.98152378413682 *
        TextCluster7_SVD13 ;
   IF MISSING( TextCluster7_SVD14 ) THEN S_TextCluster7_SVD14  = . ;
   ELSE S_TextCluster7_SVD14  =     0.01398655230534 +     8.95781890559545 *
        TextCluster7_SVD14 ;
   IF MISSING( TextCluster7_SVD15 ) THEN S_TextCluster7_SVD15  = . ;
   ELSE S_TextCluster7_SVD15  =    -0.04113633716343 +     9.90781816811413 *
        TextCluster7_SVD15 ;
   IF MISSING( TextCluster7_SVD16 ) THEN S_TextCluster7_SVD16  = . ;
   ELSE S_TextCluster7_SVD16  =     0.03902508597183 +     10.4340593372309 *
        TextCluster7_SVD16 ;
   IF MISSING( TextCluster7_SVD17 ) THEN S_TextCluster7_SVD17  = . ;
   ELSE S_TextCluster7_SVD17  =     0.00382519701751 +     12.5193780948602 *
        TextCluster7_SVD17 ;
   IF MISSING( TextCluster7_SVD18 ) THEN S_TextCluster7_SVD18  = . ;
   ELSE S_TextCluster7_SVD18  =     -0.0232160440706 +     9.76469931072731 *
        TextCluster7_SVD18 ;
   IF MISSING( TextCluster7_SVD19 ) THEN S_TextCluster7_SVD19  = . ;
   ELSE S_TextCluster7_SVD19  =    -0.02262476836075 +     10.7953735101503 *
        TextCluster7_SVD19 ;
   IF MISSING( TextCluster7_SVD2 ) THEN S_TextCluster7_SVD2  = . ;
   ELSE S_TextCluster7_SVD2  =     0.18731011290146 +     4.64478508971524 *
        TextCluster7_SVD2 ;
   IF MISSING( TextCluster7_SVD20 ) THEN S_TextCluster7_SVD20  = . ;
   ELSE S_TextCluster7_SVD20  =    -0.05405244324392 +     9.98460278196948 *
        TextCluster7_SVD20 ;
   IF MISSING( TextCluster7_SVD21 ) THEN S_TextCluster7_SVD21  = . ;
   ELSE S_TextCluster7_SVD21  =     0.12351789023876 +     10.9173046761214 *
        TextCluster7_SVD21 ;
   IF MISSING( TextCluster7_SVD22 ) THEN S_TextCluster7_SVD22  = . ;
   ELSE S_TextCluster7_SVD22  =     0.09448195264979 +     11.2068219965767 *
        TextCluster7_SVD22 ;
   IF MISSING( TextCluster7_SVD23 ) THEN S_TextCluster7_SVD23  = . ;
   ELSE S_TextCluster7_SVD23  =    -0.11532466210643 +     9.67496912481459 *
        TextCluster7_SVD23 ;
   IF MISSING( TextCluster7_SVD24 ) THEN S_TextCluster7_SVD24  = . ;
   ELSE S_TextCluster7_SVD24  =     0.02210617853672 +     12.5905145145335 *
        TextCluster7_SVD24 ;
   IF MISSING( TextCluster7_SVD25 ) THEN S_TextCluster7_SVD25  = . ;
   ELSE S_TextCluster7_SVD25  =    -0.03503292193081 +     11.9063694198619 *
        TextCluster7_SVD25 ;
   IF MISSING( TextCluster7_SVD26 ) THEN S_TextCluster7_SVD26  = . ;
   ELSE S_TextCluster7_SVD26  =    -0.03210589551419 +     10.9651036104691 *
        TextCluster7_SVD26 ;
   IF MISSING( TextCluster7_SVD27 ) THEN S_TextCluster7_SVD27  = . ;
   ELSE S_TextCluster7_SVD27  =     0.08223172080027 +     11.5897017965566 *
        TextCluster7_SVD27 ;
   IF MISSING( TextCluster7_SVD28 ) THEN S_TextCluster7_SVD28  = . ;
   ELSE S_TextCluster7_SVD28  =    -0.02970949470483 +     11.9317241701322 *
        TextCluster7_SVD28 ;
   IF MISSING( TextCluster7_SVD29 ) THEN S_TextCluster7_SVD29  = . ;
   ELSE S_TextCluster7_SVD29  =     0.05318718424736 +     12.8160454923984 *
        TextCluster7_SVD29 ;
   IF MISSING( TextCluster7_SVD3 ) THEN S_TextCluster7_SVD3  = . ;
   ELSE S_TextCluster7_SVD3  =     0.02818832990123 +     4.81654263656865 *
        TextCluster7_SVD3 ;
   IF MISSING( TextCluster7_SVD30 ) THEN S_TextCluster7_SVD30  = . ;
   ELSE S_TextCluster7_SVD30  =     0.12697422809781 +     10.9739153310288 *
        TextCluster7_SVD30 ;
   IF MISSING( TextCluster7_SVD31 ) THEN S_TextCluster7_SVD31  = . ;
   ELSE S_TextCluster7_SVD31  =     0.02920982713467 +     12.5987809224073 *
        TextCluster7_SVD31 ;
   IF MISSING( TextCluster7_SVD32 ) THEN S_TextCluster7_SVD32  = . ;
   ELSE S_TextCluster7_SVD32  =    -0.12180326861955 +     12.1702681637193 *
        TextCluster7_SVD32 ;
   IF MISSING( TextCluster7_SVD33 ) THEN S_TextCluster7_SVD33  = . ;
   ELSE S_TextCluster7_SVD33  =    -0.04227319881571 +     13.0770668668884 *
        TextCluster7_SVD33 ;
   IF MISSING( TextCluster7_SVD34 ) THEN S_TextCluster7_SVD34  = . ;
   ELSE S_TextCluster7_SVD34  =    -0.15750167305088 +     11.8058309492182 *
        TextCluster7_SVD34 ;
   IF MISSING( TextCluster7_SVD35 ) THEN S_TextCluster7_SVD35  = . ;
   ELSE S_TextCluster7_SVD35  =    -0.03220618674622 +     12.1871814711217 *
        TextCluster7_SVD35 ;
   IF MISSING( TextCluster7_SVD36 ) THEN S_TextCluster7_SVD36  = . ;
   ELSE S_TextCluster7_SVD36  =    -0.01623563072008 +     11.5926901824311 *
        TextCluster7_SVD36 ;
   IF MISSING( TextCluster7_SVD37 ) THEN S_TextCluster7_SVD37  = . ;
   ELSE S_TextCluster7_SVD37  =    -0.03829696896691 +      12.026722428586 *
        TextCluster7_SVD37 ;
   IF MISSING( TextCluster7_SVD38 ) THEN S_TextCluster7_SVD38  = . ;
   ELSE S_TextCluster7_SVD38  =    -0.00163170326301 +     12.5039930315948 *
        TextCluster7_SVD38 ;
   IF MISSING( TextCluster7_SVD39 ) THEN S_TextCluster7_SVD39  = . ;
   ELSE S_TextCluster7_SVD39  =    -0.01955256831107 +     12.0489327387877 *
        TextCluster7_SVD39 ;
   IF MISSING( TextCluster7_SVD4 ) THEN S_TextCluster7_SVD4  = . ;
   ELSE S_TextCluster7_SVD4  =    -0.14662847882972 +     5.10599552582538 *
        TextCluster7_SVD4 ;
   IF MISSING( TextCluster7_SVD40 ) THEN S_TextCluster7_SVD40  = . ;
   ELSE S_TextCluster7_SVD40  =     0.16896435566776 +     11.9113173925414 *
        TextCluster7_SVD40 ;
   IF MISSING( TextCluster7_SVD41 ) THEN S_TextCluster7_SVD41  = . ;
   ELSE S_TextCluster7_SVD41  =    -0.02849337974632 +     12.8484783463847 *
        TextCluster7_SVD41 ;
   IF MISSING( TextCluster7_SVD42 ) THEN S_TextCluster7_SVD42  = . ;
   ELSE S_TextCluster7_SVD42  =    -0.03583046427301 +      12.194746446796 *
        TextCluster7_SVD42 ;
   IF MISSING( TextCluster7_SVD43 ) THEN S_TextCluster7_SVD43  = . ;
   ELSE S_TextCluster7_SVD43  =    -0.16885601604375 +     12.2732079596177 *
        TextCluster7_SVD43 ;
   IF MISSING( TextCluster7_SVD44 ) THEN S_TextCluster7_SVD44  = . ;
   ELSE S_TextCluster7_SVD44  =    -0.01468495575263 +     13.3649306637091 *
        TextCluster7_SVD44 ;
   IF MISSING( TextCluster7_SVD45 ) THEN S_TextCluster7_SVD45  = . ;
   ELSE S_TextCluster7_SVD45  =     -0.0281408387759 +     12.4560416702483 *
        TextCluster7_SVD45 ;
   IF MISSING( TextCluster7_SVD46 ) THEN S_TextCluster7_SVD46  = . ;
   ELSE S_TextCluster7_SVD46  =    -0.07924225334331 +     11.7394716423763 *
        TextCluster7_SVD46 ;
   IF MISSING( TextCluster7_SVD47 ) THEN S_TextCluster7_SVD47  = . ;
   ELSE S_TextCluster7_SVD47  =    -0.03106539068804 +     12.4700491115467 *
        TextCluster7_SVD47 ;
   IF MISSING( TextCluster7_SVD48 ) THEN S_TextCluster7_SVD48  = . ;
   ELSE S_TextCluster7_SVD48  =     0.00583932464147 +     12.2762507911933 *
        TextCluster7_SVD48 ;
   IF MISSING( TextCluster7_SVD49 ) THEN S_TextCluster7_SVD49  = . ;
   ELSE S_TextCluster7_SVD49  =     0.11817908863111 +     12.0068075121709 *
        TextCluster7_SVD49 ;
   IF MISSING( TextCluster7_SVD5 ) THEN S_TextCluster7_SVD5  = . ;
   ELSE S_TextCluster7_SVD5  =    -0.09533032636999 +     5.24463413712209 *
        TextCluster7_SVD5 ;
   IF MISSING( TextCluster7_SVD50 ) THEN S_TextCluster7_SVD50  = . ;
   ELSE S_TextCluster7_SVD50  =    -0.07832197931669 +     12.4418167611441 *
        TextCluster7_SVD50 ;
   IF MISSING( TextCluster7_SVD51 ) THEN S_TextCluster7_SVD51  = . ;
   ELSE S_TextCluster7_SVD51  =      0.1429122570484 +     12.2727852561009 *
        TextCluster7_SVD51 ;
   IF MISSING( TextCluster7_SVD52 ) THEN S_TextCluster7_SVD52  = . ;
   ELSE S_TextCluster7_SVD52  =    -0.04693220124268 +     11.9268647652466 *
        TextCluster7_SVD52 ;
   IF MISSING( TextCluster7_SVD53 ) THEN S_TextCluster7_SVD53  = . ;
   ELSE S_TextCluster7_SVD53  =      -0.073353829069 +     11.9825140102404 *
        TextCluster7_SVD53 ;
   IF MISSING( TextCluster7_SVD54 ) THEN S_TextCluster7_SVD54  = . ;
   ELSE S_TextCluster7_SVD54  =    -0.03206496968687 +     12.0379470370483 *
        TextCluster7_SVD54 ;
   IF MISSING( TextCluster7_SVD55 ) THEN S_TextCluster7_SVD55  = . ;
   ELSE S_TextCluster7_SVD55  =     0.01563516490609 +     12.2892255075424 *
        TextCluster7_SVD55 ;
   IF MISSING( TextCluster7_SVD56 ) THEN S_TextCluster7_SVD56  = . ;
   ELSE S_TextCluster7_SVD56  =    -0.05075063864169 +     12.4005477078259 *
        TextCluster7_SVD56 ;
   IF MISSING( TextCluster7_SVD57 ) THEN S_TextCluster7_SVD57  = . ;
   ELSE S_TextCluster7_SVD57  =      0.0371580699031 +     11.9921604148511 *
        TextCluster7_SVD57 ;
   IF MISSING( TextCluster7_SVD58 ) THEN S_TextCluster7_SVD58  = . ;
   ELSE S_TextCluster7_SVD58  =     0.04291782951669 +     12.2928545566751 *
        TextCluster7_SVD58 ;
   IF MISSING( TextCluster7_SVD59 ) THEN S_TextCluster7_SVD59  = . ;
   ELSE S_TextCluster7_SVD59  =     -0.0409578125012 +     13.1321764107035 *
        TextCluster7_SVD59 ;
   IF MISSING( TextCluster7_SVD6 ) THEN S_TextCluster7_SVD6  = . ;
   ELSE S_TextCluster7_SVD6  =    -0.01411388511664 +     7.14101067276707 *
        TextCluster7_SVD6 ;
   IF MISSING( TextCluster7_SVD60 ) THEN S_TextCluster7_SVD60  = . ;
   ELSE S_TextCluster7_SVD60  =     0.01326070807809 +     12.4031454385803 *
        TextCluster7_SVD60 ;
   IF MISSING( TextCluster7_SVD61 ) THEN S_TextCluster7_SVD61  = . ;
   ELSE S_TextCluster7_SVD61  =     0.03810919945757 +     12.2421159503419 *
        TextCluster7_SVD61 ;
   IF MISSING( TextCluster7_SVD62 ) THEN S_TextCluster7_SVD62  = . ;
   ELSE S_TextCluster7_SVD62  =     0.00543820335579 +     11.9038757141209 *
        TextCluster7_SVD62 ;
   IF MISSING( TextCluster7_SVD63 ) THEN S_TextCluster7_SVD63  = . ;
   ELSE S_TextCluster7_SVD63  =     0.10338919552411 +     12.6724699429707 *
        TextCluster7_SVD63 ;
   IF MISSING( TextCluster7_SVD64 ) THEN S_TextCluster7_SVD64  = . ;
   ELSE S_TextCluster7_SVD64  =     -0.0937931480703 +     12.2728762103028 *
        TextCluster7_SVD64 ;
   IF MISSING( TextCluster7_SVD65 ) THEN S_TextCluster7_SVD65  = . ;
   ELSE S_TextCluster7_SVD65  =      0.0733714091289 +     12.1016477296004 *
        TextCluster7_SVD65 ;
   IF MISSING( TextCluster7_SVD66 ) THEN S_TextCluster7_SVD66  = . ;
   ELSE S_TextCluster7_SVD66  =     0.01680605408346 +     12.0975460736355 *
        TextCluster7_SVD66 ;
   IF MISSING( TextCluster7_SVD67 ) THEN S_TextCluster7_SVD67  = . ;
   ELSE S_TextCluster7_SVD67  =     0.00655424790707 +     12.1744536412369 *
        TextCluster7_SVD67 ;
   IF MISSING( TextCluster7_SVD68 ) THEN S_TextCluster7_SVD68  = . ;
   ELSE S_TextCluster7_SVD68  =     0.04244763456581 +     12.1024826665908 *
        TextCluster7_SVD68 ;
   IF MISSING( TextCluster7_SVD69 ) THEN S_TextCluster7_SVD69  = . ;
   ELSE S_TextCluster7_SVD69  =      0.0003356929109 +     12.0558799230361 *
        TextCluster7_SVD69 ;
   IF MISSING( TextCluster7_SVD7 ) THEN S_TextCluster7_SVD7  = . ;
   ELSE S_TextCluster7_SVD7  =    -0.03490436888498 +     6.29986426584422 *
        TextCluster7_SVD7 ;
   IF MISSING( TextCluster7_SVD8 ) THEN S_TextCluster7_SVD8  = . ;
   ELSE S_TextCluster7_SVD8  =     0.09636281054232 +     6.77177721649239 *
        TextCluster7_SVD8 ;
   IF MISSING( TextCluster7_SVD9 ) THEN S_TextCluster7_SVD9  = . ;
   ELSE S_TextCluster7_SVD9  =    -0.03734982129122 +     7.70572263872354 *
        TextCluster7_SVD9 ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     0.01301195944589 * S_TextCluster7_SVD1
          +    -0.40816577419326 * S_TextCluster7_SVD10
          +    -0.25790727315621 * S_TextCluster7_SVD11
          +      0.0701089935362 * S_TextCluster7_SVD12
          +    -0.20569558957385 * S_TextCluster7_SVD13
          +     0.03693591216349 * S_TextCluster7_SVD14
          +     0.08043622465735 * S_TextCluster7_SVD15
          +     0.02611814250012 * S_TextCluster7_SVD16
          +    -0.02917881611895 * S_TextCluster7_SVD17
          +     0.16960967864948 * S_TextCluster7_SVD18
          +      0.0245024661355 * S_TextCluster7_SVD19
          +     0.25179813980121 * S_TextCluster7_SVD2
          +    -0.00672521966794 * S_TextCluster7_SVD20
          +     0.00449115529657 * S_TextCluster7_SVD21
          +    -0.05408571420846 * S_TextCluster7_SVD22
          +    -0.02456675707189 * S_TextCluster7_SVD23
          +     0.03962588673275 * S_TextCluster7_SVD24
          +     0.07798495954838 * S_TextCluster7_SVD25
          +    -0.03043111941203 * S_TextCluster7_SVD26
          +      0.0367132431074 * S_TextCluster7_SVD27
          +    -0.04898171181453 * S_TextCluster7_SVD28
          +     0.03093001517806 * S_TextCluster7_SVD29
          +    -0.12986574853633 * S_TextCluster7_SVD3
          +     0.07826700218342 * S_TextCluster7_SVD30
          +     -0.0260044260035 * S_TextCluster7_SVD31
          +     -0.1059955630587 * S_TextCluster7_SVD32
          +    -0.03593017131445 * S_TextCluster7_SVD33
          +    -0.05985185269912 * S_TextCluster7_SVD34
          +    -0.01472393369579 * S_TextCluster7_SVD35
          +    -0.00538985532157 * S_TextCluster7_SVD36
          +    -0.03551362218784 * S_TextCluster7_SVD37
          +    -0.12183068803064 * S_TextCluster7_SVD38
          +     0.01220653228713 * S_TextCluster7_SVD39
          +    -0.05281241657031 * S_TextCluster7_SVD4
          +     0.01506196041758 * S_TextCluster7_SVD40
          +     0.04055056261056 * S_TextCluster7_SVD41
          +    -0.00372751002113 * S_TextCluster7_SVD42
          +     0.03299412646453 * S_TextCluster7_SVD43
          +      0.0378068985885 * S_TextCluster7_SVD44
          +     0.00904373706322 * S_TextCluster7_SVD45
          +     0.03994404373548 * S_TextCluster7_SVD46
          +    -0.06014113489969 * S_TextCluster7_SVD47
          +     0.01584237433173 * S_TextCluster7_SVD48
          +      0.0285308626337 * S_TextCluster7_SVD49
          +    -0.40314726766383 * S_TextCluster7_SVD5
          +    -0.02551108204135 * S_TextCluster7_SVD50
          +    -0.12047147778144 * S_TextCluster7_SVD51
          +      0.0767128112908 * S_TextCluster7_SVD52
          +     0.03347928324783 * S_TextCluster7_SVD53
          +        0.06479801588 * S_TextCluster7_SVD54
          +     0.04431147527162 * S_TextCluster7_SVD55
          +     0.03121165604221 * S_TextCluster7_SVD56
          +    -0.07697815916451 * S_TextCluster7_SVD57
          +     -0.0113513103228 * S_TextCluster7_SVD58
          +     0.02756607333848 * S_TextCluster7_SVD59
          +     0.07514975418864 * S_TextCluster7_SVD6
          +    -0.00905010894064 * S_TextCluster7_SVD60
          +     -0.0857493544831 * S_TextCluster7_SVD61
          +     0.03684835588646 * S_TextCluster7_SVD62
          +     0.03413056734678 * S_TextCluster7_SVD63
          +    -0.01961498156735 * S_TextCluster7_SVD64
          +     0.03921369273378 * S_TextCluster7_SVD65
          +     0.03272127626987 * S_TextCluster7_SVD66
          +     0.09524690648997 * S_TextCluster7_SVD67
          +     0.00691723844702 * S_TextCluster7_SVD68
          +     0.00826572042992 * S_TextCluster7_SVD69
          +     0.16806004006244 * S_TextCluster7_SVD7
          +    -0.03709280775715 * S_TextCluster7_SVD8
          +    -0.04566521025025 * S_TextCluster7_SVD9 ;
   H12  =    -0.82096569409554 * S_TextCluster7_SVD1
          +     0.44160126084194 * S_TextCluster7_SVD10
          +    -0.82675311980431 * S_TextCluster7_SVD11
          +      0.3126054039751 * S_TextCluster7_SVD12
          +     0.14245900690648 * S_TextCluster7_SVD13
          +    -0.59339378378452 * S_TextCluster7_SVD14
          +    -0.09900936994412 * S_TextCluster7_SVD15
          +    -0.62766189928964 * S_TextCluster7_SVD16
          +    -0.04911955865423 * S_TextCluster7_SVD17
          +     -0.2018488432231 * S_TextCluster7_SVD18
          +    -0.60019760266232 * S_TextCluster7_SVD19
          +      1.4024141146027 * S_TextCluster7_SVD2
          +     0.77895926615163 * S_TextCluster7_SVD20
          +     0.41418573390709 * S_TextCluster7_SVD21
          +     0.70093794582476 * S_TextCluster7_SVD22
          +    -0.10898436741835 * S_TextCluster7_SVD23
          +     0.69684067314445 * S_TextCluster7_SVD24
          +     0.13573956914244 * S_TextCluster7_SVD25
          +    -0.67465720090068 * S_TextCluster7_SVD26
          +     0.02436778175188 * S_TextCluster7_SVD27
          +      0.0768321920069 * S_TextCluster7_SVD28
          +     0.60714270960345 * S_TextCluster7_SVD29
          +    -0.38268601442527 * S_TextCluster7_SVD3
          +    -0.73033848084127 * S_TextCluster7_SVD30
          +    -0.05572208963193 * S_TextCluster7_SVD31
          +     0.15930604855331 * S_TextCluster7_SVD32
          +     0.48700958142772 * S_TextCluster7_SVD33
          +     0.09098198437178 * S_TextCluster7_SVD34
          +     0.02376060301947 * S_TextCluster7_SVD35
          +    -0.75883332464047 * S_TextCluster7_SVD36
          +     0.66127657277458 * S_TextCluster7_SVD37
          +      0.6030294280871 * S_TextCluster7_SVD38
          +     0.13317044499537 * S_TextCluster7_SVD39
          +     -2.2667405378476 * S_TextCluster7_SVD4
          +    -0.25879572397689 * S_TextCluster7_SVD40
          +     0.02842278869861 * S_TextCluster7_SVD41
          +     0.00477470374925 * S_TextCluster7_SVD42
          +     0.02924149786055 * S_TextCluster7_SVD43
          +    -0.14678855822865 * S_TextCluster7_SVD44
          +    -0.08855627588733 * S_TextCluster7_SVD45
          +    -0.17592620655205 * S_TextCluster7_SVD46
          +    -0.48232163842825 * S_TextCluster7_SVD47
          +     -0.5998554963454 * S_TextCluster7_SVD48
          +     -0.1567494547058 * S_TextCluster7_SVD49
          +     0.41819972011667 * S_TextCluster7_SVD5
          +     1.00491203160602 * S_TextCluster7_SVD50
          +    -0.01326955076741 * S_TextCluster7_SVD51
          +      -0.091080193061 * S_TextCluster7_SVD52
          +    -0.16213805492238 * S_TextCluster7_SVD53
          +     0.47216304181109 * S_TextCluster7_SVD54
          +     0.05160760072111 * S_TextCluster7_SVD55
          +     0.12903604944231 * S_TextCluster7_SVD56
          +     0.52636868905862 * S_TextCluster7_SVD57
          +     0.07461927996444 * S_TextCluster7_SVD58
          +    -0.30603098075027 * S_TextCluster7_SVD59
          +    -0.93979863152039 * S_TextCluster7_SVD6
          +     -0.6849945881872 * S_TextCluster7_SVD60
          +    -0.03751878013472 * S_TextCluster7_SVD61
          +    -0.58874904295327 * S_TextCluster7_SVD62
          +     0.53705811006858 * S_TextCluster7_SVD63
          +     0.47406175150303 * S_TextCluster7_SVD64
          +     0.34804607900834 * S_TextCluster7_SVD65
          +     0.13059938018139 * S_TextCluster7_SVD66
          +    -0.39712576826739 * S_TextCluster7_SVD67
          +     0.63595221546578 * S_TextCluster7_SVD68
          +    -0.15757028167705 * S_TextCluster7_SVD69
          +     0.34625245625681 * S_TextCluster7_SVD7
          +    -0.97335189178157 * S_TextCluster7_SVD8
          +     0.02792390283742 * S_TextCluster7_SVD9 ;
   H13  =    -0.11388622600665 * S_TextCluster7_SVD1
          +      0.5288770746805 * S_TextCluster7_SVD10
          +     0.31292931743742 * S_TextCluster7_SVD11
          +    -0.52707895463885 * S_TextCluster7_SVD12
          +     0.17491484070577 * S_TextCluster7_SVD13
          +     0.00906492860475 * S_TextCluster7_SVD14
          +     0.29293875782273 * S_TextCluster7_SVD15
          +    -0.12268813544529 * S_TextCluster7_SVD16
          +     0.23839110737411 * S_TextCluster7_SVD17
          +     0.00383117694236 * S_TextCluster7_SVD18
          +     -0.0894699446107 * S_TextCluster7_SVD19
          +    -2.39644301489577 * S_TextCluster7_SVD2
          +     0.31257174610908 * S_TextCluster7_SVD20
          +     0.05965373305537 * S_TextCluster7_SVD21
          +    -0.39480343891681 * S_TextCluster7_SVD22
          +     -0.1293440976473 * S_TextCluster7_SVD23
          +    -0.13415425033294 * S_TextCluster7_SVD24
          +    -0.09623898947932 * S_TextCluster7_SVD25
          +     0.05457714577101 * S_TextCluster7_SVD26
          +    -0.06758895764019 * S_TextCluster7_SVD27
          +     0.04963397672899 * S_TextCluster7_SVD28
          +     0.02388772570836 * S_TextCluster7_SVD29
          +     0.18567917668654 * S_TextCluster7_SVD3
          +     0.05809253144676 * S_TextCluster7_SVD30
          +     0.06939443262588 * S_TextCluster7_SVD31
          +      0.1848048894425 * S_TextCluster7_SVD32
          +     0.17536586692366 * S_TextCluster7_SVD33
          +     -0.0214924362836 * S_TextCluster7_SVD34
          +      0.0887632614506 * S_TextCluster7_SVD35
          +     0.15386468610137 * S_TextCluster7_SVD36
          +      0.2273846916594 * S_TextCluster7_SVD37
          +    -0.06040131332557 * S_TextCluster7_SVD38
          +     0.09884482037791 * S_TextCluster7_SVD39
          +     0.10041055090474 * S_TextCluster7_SVD4
          +     0.02035688408987 * S_TextCluster7_SVD40
          +     0.07800734547949 * S_TextCluster7_SVD41
          +     0.02574230209459 * S_TextCluster7_SVD42
          +     0.18598634383203 * S_TextCluster7_SVD43
          +    -0.00118694446388 * S_TextCluster7_SVD44
          +     0.23743969425627 * S_TextCluster7_SVD45
          +     0.13198060273611 * S_TextCluster7_SVD46
          +     0.10646997864039 * S_TextCluster7_SVD47
          +     0.11559351648764 * S_TextCluster7_SVD48
          +     0.09652989555923 * S_TextCluster7_SVD49
          +    -0.89702880923805 * S_TextCluster7_SVD5
          +    -0.36041568962935 * S_TextCluster7_SVD50
          +     -0.0525428260139 * S_TextCluster7_SVD51
          +    -0.05524152038649 * S_TextCluster7_SVD52
          +    -0.16813994582889 * S_TextCluster7_SVD53
          +    -0.08217505448493 * S_TextCluster7_SVD54
          +    -0.36149152016199 * S_TextCluster7_SVD55
          +     0.02197492459383 * S_TextCluster7_SVD56
          +     0.00792045441843 * S_TextCluster7_SVD57
          +    -0.04008882118847 * S_TextCluster7_SVD58
          +     -0.0055714048355 * S_TextCluster7_SVD59
          +    -0.16615713767026 * S_TextCluster7_SVD6
          +     0.25612290240191 * S_TextCluster7_SVD60
          +     0.12655199124359 * S_TextCluster7_SVD61
          +     0.07215046074926 * S_TextCluster7_SVD62
          +     0.12588284761151 * S_TextCluster7_SVD63
          +     0.12257033634292 * S_TextCluster7_SVD64
          +     0.11212464603612 * S_TextCluster7_SVD65
          +    -0.15626427859732 * S_TextCluster7_SVD66
          +      -0.129681147239 * S_TextCluster7_SVD67
          +     0.08017873460195 * S_TextCluster7_SVD68
          +     0.05828821910527 * S_TextCluster7_SVD69
          +     0.29517745255718 * S_TextCluster7_SVD7
          +    -0.19600016939286 * S_TextCluster7_SVD8
          +      -0.237817801368 * S_TextCluster7_SVD9 ;
   H11  =    -0.22960359219627 + H11 ;
   H12  =    -1.48306618218166 + H12 ;
   H13  =    -0.64716084330835 + H13 ;
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
   P_CategoryTEACHER  =     4.05774072925906 * H11  +    -0.35095386072605 *
        H12  +       2.496826713667 * H13 ;
   P_CategorySALES  =    -4.95907704727819 * H11  +     0.94693590796545 * H12
          +    -1.93252011994931 * H13 ;
   P_CategoryOTHER  =    -0.18664579723336 * H11  +     -0.5056576437789 * H12
          +    -1.46214144579135 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =     4.29386808363456 * H11
          +     2.37065866113501 * H12  +    -2.90848966279186 * H13 ;
   P_CategoryHR  =     2.96992002167018 * H11  +     3.95539601640886 * H12
          +     3.56124428482491 * H13 ;
   P_CategoryHEALTHCARE  =     0.03942078054218 * H11
          +     2.41689793700833 * H12  +     0.01608036236604 * H13 ;
   P_CategoryFITNESS  =    -2.99648066203575 * H11  +    -0.72273594593571 *
        H12  +     1.46582352682832 * H13 ;
   P_CategoryDIGITAL_MEDIA  =      2.5098678098387 * H11
          +    -1.36048220732318 * H12  +    -2.49558599237347 * H13 ;
   P_CategoryDESIGNER  =    -3.50221126650796 * H11  +      3.0352558347388 *
        H12  +      1.3422907391463 * H13 ;
   P_CategoryCONSULTANT  =    -0.62083093015913 * H11
          +     1.08698079128934 * H12  +    -2.23005458734632 * H13 ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -3.29404646592308 * H11
          +    -0.37493291159792 * H12  +    -2.80919120488575 * H13 ;
   P_CategoryTEACHER  =    -3.06244296544807 + P_CategoryTEACHER ;
   P_CategorySALES  =    -2.39755550631609 + P_CategorySALES ;
   P_CategoryOTHER  =    -0.58813973684176 + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -2.74140141604077 +
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =    -1.99671862691077 + P_CategoryHR ;
   P_CategoryHEALTHCARE  =     0.41712565676221 + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  =    -2.62751917970601 + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  =    -2.75147530666958 + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  =    -1.78203783486325 + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  =    -0.55168115397254 + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  =     -2.5626409584213 +
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
S_TextCluster7_SVD1
S_TextCluster7_SVD10
S_TextCluster7_SVD11
S_TextCluster7_SVD12
S_TextCluster7_SVD13
S_TextCluster7_SVD14
S_TextCluster7_SVD15
S_TextCluster7_SVD16
S_TextCluster7_SVD17
S_TextCluster7_SVD18
S_TextCluster7_SVD19
S_TextCluster7_SVD2
S_TextCluster7_SVD20
S_TextCluster7_SVD21
S_TextCluster7_SVD22
S_TextCluster7_SVD23
S_TextCluster7_SVD24
S_TextCluster7_SVD25
S_TextCluster7_SVD26
S_TextCluster7_SVD27
S_TextCluster7_SVD28
S_TextCluster7_SVD29
S_TextCluster7_SVD3
S_TextCluster7_SVD30
S_TextCluster7_SVD31
S_TextCluster7_SVD32
S_TextCluster7_SVD33
S_TextCluster7_SVD34
S_TextCluster7_SVD35
S_TextCluster7_SVD36
S_TextCluster7_SVD37
S_TextCluster7_SVD38
S_TextCluster7_SVD39
S_TextCluster7_SVD4
S_TextCluster7_SVD40
S_TextCluster7_SVD41
S_TextCluster7_SVD42
S_TextCluster7_SVD43
S_TextCluster7_SVD44
S_TextCluster7_SVD45
S_TextCluster7_SVD46
S_TextCluster7_SVD47
S_TextCluster7_SVD48
S_TextCluster7_SVD49
S_TextCluster7_SVD5
S_TextCluster7_SVD50
S_TextCluster7_SVD51
S_TextCluster7_SVD52
S_TextCluster7_SVD53
S_TextCluster7_SVD54
S_TextCluster7_SVD55
S_TextCluster7_SVD56
S_TextCluster7_SVD57
S_TextCluster7_SVD58
S_TextCluster7_SVD59
S_TextCluster7_SVD6
S_TextCluster7_SVD60
S_TextCluster7_SVD61
S_TextCluster7_SVD62
S_TextCluster7_SVD63
S_TextCluster7_SVD64
S_TextCluster7_SVD65
S_TextCluster7_SVD66
S_TextCluster7_SVD67
S_TextCluster7_SVD68
S_TextCluster7_SVD69
S_TextCluster7_SVD7
S_TextCluster7_SVD8
S_TextCluster7_SVD9
H11
H12
H13
;
