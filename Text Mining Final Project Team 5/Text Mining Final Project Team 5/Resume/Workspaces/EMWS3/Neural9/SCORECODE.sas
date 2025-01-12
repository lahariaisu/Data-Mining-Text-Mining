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
      label S_TextCluster12_SVD1 = 'Standard: TextCluster12_SVD1' ;

      label S_TextCluster12_SVD10 = 'Standard: TextCluster12_SVD10' ;

      label S_TextCluster12_SVD100 = 'Standard: TextCluster12_SVD100' ;

      label S_TextCluster12_SVD11 = 'Standard: TextCluster12_SVD11' ;

      label S_TextCluster12_SVD12 = 'Standard: TextCluster12_SVD12' ;

      label S_TextCluster12_SVD13 = 'Standard: TextCluster12_SVD13' ;

      label S_TextCluster12_SVD14 = 'Standard: TextCluster12_SVD14' ;

      label S_TextCluster12_SVD15 = 'Standard: TextCluster12_SVD15' ;

      label S_TextCluster12_SVD16 = 'Standard: TextCluster12_SVD16' ;

      label S_TextCluster12_SVD17 = 'Standard: TextCluster12_SVD17' ;

      label S_TextCluster12_SVD18 = 'Standard: TextCluster12_SVD18' ;

      label S_TextCluster12_SVD19 = 'Standard: TextCluster12_SVD19' ;

      label S_TextCluster12_SVD2 = 'Standard: TextCluster12_SVD2' ;

      label S_TextCluster12_SVD20 = 'Standard: TextCluster12_SVD20' ;

      label S_TextCluster12_SVD21 = 'Standard: TextCluster12_SVD21' ;

      label S_TextCluster12_SVD22 = 'Standard: TextCluster12_SVD22' ;

      label S_TextCluster12_SVD23 = 'Standard: TextCluster12_SVD23' ;

      label S_TextCluster12_SVD24 = 'Standard: TextCluster12_SVD24' ;

      label S_TextCluster12_SVD25 = 'Standard: TextCluster12_SVD25' ;

      label S_TextCluster12_SVD26 = 'Standard: TextCluster12_SVD26' ;

      label S_TextCluster12_SVD27 = 'Standard: TextCluster12_SVD27' ;

      label S_TextCluster12_SVD28 = 'Standard: TextCluster12_SVD28' ;

      label S_TextCluster12_SVD29 = 'Standard: TextCluster12_SVD29' ;

      label S_TextCluster12_SVD3 = 'Standard: TextCluster12_SVD3' ;

      label S_TextCluster12_SVD30 = 'Standard: TextCluster12_SVD30' ;

      label S_TextCluster12_SVD31 = 'Standard: TextCluster12_SVD31' ;

      label S_TextCluster12_SVD32 = 'Standard: TextCluster12_SVD32' ;

      label S_TextCluster12_SVD33 = 'Standard: TextCluster12_SVD33' ;

      label S_TextCluster12_SVD34 = 'Standard: TextCluster12_SVD34' ;

      label S_TextCluster12_SVD35 = 'Standard: TextCluster12_SVD35' ;

      label S_TextCluster12_SVD36 = 'Standard: TextCluster12_SVD36' ;

      label S_TextCluster12_SVD37 = 'Standard: TextCluster12_SVD37' ;

      label S_TextCluster12_SVD38 = 'Standard: TextCluster12_SVD38' ;

      label S_TextCluster12_SVD39 = 'Standard: TextCluster12_SVD39' ;

      label S_TextCluster12_SVD4 = 'Standard: TextCluster12_SVD4' ;

      label S_TextCluster12_SVD40 = 'Standard: TextCluster12_SVD40' ;

      label S_TextCluster12_SVD41 = 'Standard: TextCluster12_SVD41' ;

      label S_TextCluster12_SVD42 = 'Standard: TextCluster12_SVD42' ;

      label S_TextCluster12_SVD43 = 'Standard: TextCluster12_SVD43' ;

      label S_TextCluster12_SVD44 = 'Standard: TextCluster12_SVD44' ;

      label S_TextCluster12_SVD45 = 'Standard: TextCluster12_SVD45' ;

      label S_TextCluster12_SVD46 = 'Standard: TextCluster12_SVD46' ;

      label S_TextCluster12_SVD47 = 'Standard: TextCluster12_SVD47' ;

      label S_TextCluster12_SVD48 = 'Standard: TextCluster12_SVD48' ;

      label S_TextCluster12_SVD49 = 'Standard: TextCluster12_SVD49' ;

      label S_TextCluster12_SVD5 = 'Standard: TextCluster12_SVD5' ;

      label S_TextCluster12_SVD50 = 'Standard: TextCluster12_SVD50' ;

      label S_TextCluster12_SVD51 = 'Standard: TextCluster12_SVD51' ;

      label S_TextCluster12_SVD52 = 'Standard: TextCluster12_SVD52' ;

      label S_TextCluster12_SVD53 = 'Standard: TextCluster12_SVD53' ;

      label S_TextCluster12_SVD54 = 'Standard: TextCluster12_SVD54' ;

      label S_TextCluster12_SVD55 = 'Standard: TextCluster12_SVD55' ;

      label S_TextCluster12_SVD56 = 'Standard: TextCluster12_SVD56' ;

      label S_TextCluster12_SVD57 = 'Standard: TextCluster12_SVD57' ;

      label S_TextCluster12_SVD58 = 'Standard: TextCluster12_SVD58' ;

      label S_TextCluster12_SVD59 = 'Standard: TextCluster12_SVD59' ;

      label S_TextCluster12_SVD6 = 'Standard: TextCluster12_SVD6' ;

      label S_TextCluster12_SVD60 = 'Standard: TextCluster12_SVD60' ;

      label S_TextCluster12_SVD61 = 'Standard: TextCluster12_SVD61' ;

      label S_TextCluster12_SVD62 = 'Standard: TextCluster12_SVD62' ;

      label S_TextCluster12_SVD63 = 'Standard: TextCluster12_SVD63' ;

      label S_TextCluster12_SVD64 = 'Standard: TextCluster12_SVD64' ;

      label S_TextCluster12_SVD65 = 'Standard: TextCluster12_SVD65' ;

      label S_TextCluster12_SVD66 = 'Standard: TextCluster12_SVD66' ;

      label S_TextCluster12_SVD67 = 'Standard: TextCluster12_SVD67' ;

      label S_TextCluster12_SVD68 = 'Standard: TextCluster12_SVD68' ;

      label S_TextCluster12_SVD69 = 'Standard: TextCluster12_SVD69' ;

      label S_TextCluster12_SVD7 = 'Standard: TextCluster12_SVD7' ;

      label S_TextCluster12_SVD70 = 'Standard: TextCluster12_SVD70' ;

      label S_TextCluster12_SVD71 = 'Standard: TextCluster12_SVD71' ;

      label S_TextCluster12_SVD72 = 'Standard: TextCluster12_SVD72' ;

      label S_TextCluster12_SVD73 = 'Standard: TextCluster12_SVD73' ;

      label S_TextCluster12_SVD74 = 'Standard: TextCluster12_SVD74' ;

      label S_TextCluster12_SVD75 = 'Standard: TextCluster12_SVD75' ;

      label S_TextCluster12_SVD76 = 'Standard: TextCluster12_SVD76' ;

      label S_TextCluster12_SVD77 = 'Standard: TextCluster12_SVD77' ;

      label S_TextCluster12_SVD78 = 'Standard: TextCluster12_SVD78' ;

      label S_TextCluster12_SVD79 = 'Standard: TextCluster12_SVD79' ;

      label S_TextCluster12_SVD8 = 'Standard: TextCluster12_SVD8' ;

      label S_TextCluster12_SVD80 = 'Standard: TextCluster12_SVD80' ;

      label S_TextCluster12_SVD81 = 'Standard: TextCluster12_SVD81' ;

      label S_TextCluster12_SVD82 = 'Standard: TextCluster12_SVD82' ;

      label S_TextCluster12_SVD83 = 'Standard: TextCluster12_SVD83' ;

      label S_TextCluster12_SVD84 = 'Standard: TextCluster12_SVD84' ;

      label S_TextCluster12_SVD85 = 'Standard: TextCluster12_SVD85' ;

      label S_TextCluster12_SVD86 = 'Standard: TextCluster12_SVD86' ;

      label S_TextCluster12_SVD87 = 'Standard: TextCluster12_SVD87' ;

      label S_TextCluster12_SVD88 = 'Standard: TextCluster12_SVD88' ;

      label S_TextCluster12_SVD89 = 'Standard: TextCluster12_SVD89' ;

      label S_TextCluster12_SVD9 = 'Standard: TextCluster12_SVD9' ;

      label S_TextCluster12_SVD90 = 'Standard: TextCluster12_SVD90' ;

      label S_TextCluster12_SVD91 = 'Standard: TextCluster12_SVD91' ;

      label S_TextCluster12_SVD92 = 'Standard: TextCluster12_SVD92' ;

      label S_TextCluster12_SVD93 = 'Standard: TextCluster12_SVD93' ;

      label S_TextCluster12_SVD94 = 'Standard: TextCluster12_SVD94' ;

      label S_TextCluster12_SVD95 = 'Standard: TextCluster12_SVD95' ;

      label S_TextCluster12_SVD96 = 'Standard: TextCluster12_SVD96' ;

      label S_TextCluster12_SVD97 = 'Standard: TextCluster12_SVD97' ;

      label S_TextCluster12_SVD98 = 'Standard: TextCluster12_SVD98' ;

      label S_TextCluster12_SVD99 = 'Standard: TextCluster12_SVD99' ;

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
   TextCluster12_SVD1 , 
   TextCluster12_SVD10 , 
   TextCluster12_SVD100 , 
   TextCluster12_SVD11 , 
   TextCluster12_SVD12 , 
   TextCluster12_SVD13 , 
   TextCluster12_SVD14 , 
   TextCluster12_SVD15 , 
   TextCluster12_SVD16 , 
   TextCluster12_SVD17 , 
   TextCluster12_SVD18 , 
   TextCluster12_SVD19 , 
   TextCluster12_SVD2 , 
   TextCluster12_SVD20 , 
   TextCluster12_SVD21 , 
   TextCluster12_SVD22 , 
   TextCluster12_SVD23 , 
   TextCluster12_SVD24 , 
   TextCluster12_SVD25 , 
   TextCluster12_SVD26 , 
   TextCluster12_SVD27 , 
   TextCluster12_SVD28 , 
   TextCluster12_SVD29 , 
   TextCluster12_SVD3 , 
   TextCluster12_SVD30 , 
   TextCluster12_SVD31 , 
   TextCluster12_SVD32 , 
   TextCluster12_SVD33 , 
   TextCluster12_SVD34 , 
   TextCluster12_SVD35 , 
   TextCluster12_SVD36 , 
   TextCluster12_SVD37 , 
   TextCluster12_SVD38 , 
   TextCluster12_SVD39 , 
   TextCluster12_SVD4 , 
   TextCluster12_SVD40 , 
   TextCluster12_SVD41 , 
   TextCluster12_SVD42 , 
   TextCluster12_SVD43 , 
   TextCluster12_SVD44 , 
   TextCluster12_SVD45 , 
   TextCluster12_SVD46 , 
   TextCluster12_SVD47 , 
   TextCluster12_SVD48 , 
   TextCluster12_SVD49 , 
   TextCluster12_SVD5 , 
   TextCluster12_SVD50 , 
   TextCluster12_SVD51 , 
   TextCluster12_SVD52 , 
   TextCluster12_SVD53 , 
   TextCluster12_SVD54 , 
   TextCluster12_SVD55 , 
   TextCluster12_SVD56 , 
   TextCluster12_SVD57 , 
   TextCluster12_SVD58 , 
   TextCluster12_SVD59 , 
   TextCluster12_SVD6 , 
   TextCluster12_SVD60 , 
   TextCluster12_SVD61 , 
   TextCluster12_SVD62 , 
   TextCluster12_SVD63 , 
   TextCluster12_SVD64 , 
   TextCluster12_SVD65 , 
   TextCluster12_SVD66 , 
   TextCluster12_SVD67 , 
   TextCluster12_SVD68 , 
   TextCluster12_SVD69 , 
   TextCluster12_SVD7 , 
   TextCluster12_SVD70 , 
   TextCluster12_SVD71 , 
   TextCluster12_SVD72 , 
   TextCluster12_SVD73 , 
   TextCluster12_SVD74 , 
   TextCluster12_SVD75 , 
   TextCluster12_SVD76 , 
   TextCluster12_SVD77 , 
   TextCluster12_SVD78 , 
   TextCluster12_SVD79 , 
   TextCluster12_SVD8 , 
   TextCluster12_SVD80 , 
   TextCluster12_SVD81 , 
   TextCluster12_SVD82 , 
   TextCluster12_SVD83 , 
   TextCluster12_SVD84 , 
   TextCluster12_SVD85 , 
   TextCluster12_SVD86 , 
   TextCluster12_SVD87 , 
   TextCluster12_SVD88 , 
   TextCluster12_SVD89 , 
   TextCluster12_SVD9 , 
   TextCluster12_SVD90 , 
   TextCluster12_SVD91 , 
   TextCluster12_SVD92 , 
   TextCluster12_SVD93 , 
   TextCluster12_SVD94 , 
   TextCluster12_SVD95 , 
   TextCluster12_SVD96 , 
   TextCluster12_SVD97 , 
   TextCluster12_SVD98 , 
   TextCluster12_SVD99   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_TextCluster12_SVD1  =    -4.28510606929308 +     9.66306977996348 * 
        TextCluster12_SVD1 ;
   S_TextCluster12_SVD10  =     0.04106711222608 +     7.45180236373577 * 
        TextCluster12_SVD10 ;
   S_TextCluster12_SVD100  =    -0.08766152867752 +     15.1992377490007 * 
        TextCluster12_SVD100 ;
   S_TextCluster12_SVD11  =    -0.05235334011013 +     9.19109333716906 * 
        TextCluster12_SVD11 ;
   S_TextCluster12_SVD12  =    -0.04523765342911 +     9.49899485467046 * 
        TextCluster12_SVD12 ;
   S_TextCluster12_SVD13  =     0.02261588360505 +     8.96437899687832 * 
        TextCluster12_SVD13 ;
   S_TextCluster12_SVD14  =    -0.12870528517608 +     11.1843012143055 * 
        TextCluster12_SVD14 ;
   S_TextCluster12_SVD15  =     0.09360847845064 +     10.1513151889711 * 
        TextCluster12_SVD15 ;
   S_TextCluster12_SVD16  =     0.02652029157941 +     11.3800915181938 * 
        TextCluster12_SVD16 ;
   S_TextCluster12_SVD17  =    -0.01714557941046 +     12.0074346533609 * 
        TextCluster12_SVD17 ;
   S_TextCluster12_SVD18  =     0.08357392093637 +      10.776812893565 * 
        TextCluster12_SVD18 ;
   S_TextCluster12_SVD19  =    -0.15006068732604 +     10.8579368176861 * 
        TextCluster12_SVD19 ;
   S_TextCluster12_SVD2  =     0.23635714340843 +     4.64872227050232 * 
        TextCluster12_SVD2 ;
   S_TextCluster12_SVD20  =     0.08557686808304 +     11.0096633063987 * 
        TextCluster12_SVD20 ;
   S_TextCluster12_SVD21  =    -0.07683793695364 +     11.6332786695967 * 
        TextCluster12_SVD21 ;
   S_TextCluster12_SVD22  =     0.03152782829993 +     11.8253524089626 * 
        TextCluster12_SVD22 ;
   S_TextCluster12_SVD23  =    -0.00255042018325 +     11.7617663607392 * 
        TextCluster12_SVD23 ;
   S_TextCluster12_SVD24  =    -0.04147538971245 +     11.5288256232928 * 
        TextCluster12_SVD24 ;
   S_TextCluster12_SVD25  =     0.10164840116797 +     11.7761994579378 * 
        TextCluster12_SVD25 ;
   S_TextCluster12_SVD26  =      0.1223382893618 +     12.1709162929762 * 
        TextCluster12_SVD26 ;
   S_TextCluster12_SVD27  =    -0.02628221009335 +     12.9276406392854 * 
        TextCluster12_SVD27 ;
   S_TextCluster12_SVD28  =      0.0266036097616 +     12.9309637066507 * 
        TextCluster12_SVD28 ;
   S_TextCluster12_SVD29  =    -0.03229257583526 +     12.8732592702676 * 
        TextCluster12_SVD29 ;
   S_TextCluster12_SVD3  =     0.13223159905652 +     4.75441848096707 * 
        TextCluster12_SVD3 ;
   S_TextCluster12_SVD30  =     0.07939569859343 +     13.6737030796742 * 
        TextCluster12_SVD30 ;
   S_TextCluster12_SVD31  =     0.01453940293489 +     13.5874699041492 * 
        TextCluster12_SVD31 ;
   S_TextCluster12_SVD32  =      0.0510867497544 +     13.5206723180615 * 
        TextCluster12_SVD32 ;
   S_TextCluster12_SVD33  =     0.00203901343035 +     13.2228000740626 * 
        TextCluster12_SVD33 ;
   S_TextCluster12_SVD34  =     0.00962781738502 +     13.0301657907581 * 
        TextCluster12_SVD34 ;
   S_TextCluster12_SVD35  =     0.02616294239437 +     13.9152585869308 * 
        TextCluster12_SVD35 ;
   S_TextCluster12_SVD36  =      0.0071379357172 +     12.3808954158011 * 
        TextCluster12_SVD36 ;
   S_TextCluster12_SVD37  =    -0.01623564764521 +     13.9951125056962 * 
        TextCluster12_SVD37 ;
   S_TextCluster12_SVD38  =     0.00116112791932 +     13.1169461784816 * 
        TextCluster12_SVD38 ;
   S_TextCluster12_SVD39  =    -0.03978258736012 +     13.9218390709738 * 
        TextCluster12_SVD39 ;
   S_TextCluster12_SVD4  =    -0.21837576381513 +     4.79611905574112 * 
        TextCluster12_SVD4 ;
   S_TextCluster12_SVD40  =     0.02149482524644 +      14.374561467383 * 
        TextCluster12_SVD40 ;
   S_TextCluster12_SVD41  =    -0.08026729897919 +     13.3055079453838 * 
        TextCluster12_SVD41 ;
   S_TextCluster12_SVD42  =     0.01413890597073 +     14.5670514385145 * 
        TextCluster12_SVD42 ;
   S_TextCluster12_SVD43  =    -0.05535868280358 +     13.3429754212401 * 
        TextCluster12_SVD43 ;
   S_TextCluster12_SVD44  =     0.01698826248839 +     13.6494723939699 * 
        TextCluster12_SVD44 ;
   S_TextCluster12_SVD45  =    -0.13371205621724 +     14.7777715410572 * 
        TextCluster12_SVD45 ;
   S_TextCluster12_SVD46  =      0.0146805340865 +     14.3600743366902 * 
        TextCluster12_SVD46 ;
   S_TextCluster12_SVD47  =    -0.02769622521716 +     14.2530994839849 * 
        TextCluster12_SVD47 ;
   S_TextCluster12_SVD48  =      0.0313539415708 +     13.7018851530244 * 
        TextCluster12_SVD48 ;
   S_TextCluster12_SVD49  =    -0.03427782119259 +      14.247719807645 * 
        TextCluster12_SVD49 ;
   S_TextCluster12_SVD5  =     0.25974651596863 +     5.20348202469969 * 
        TextCluster12_SVD5 ;
   S_TextCluster12_SVD50  =     -0.0371769231098 +     13.6801201431174 * 
        TextCluster12_SVD50 ;
   S_TextCluster12_SVD51  =     0.13193113072099 +     13.7035954333265 * 
        TextCluster12_SVD51 ;
   S_TextCluster12_SVD52  =    -0.00303539880531 +     14.0621296460942 * 
        TextCluster12_SVD52 ;
   S_TextCluster12_SVD53  =     0.00668905291955 +     14.6671820683733 * 
        TextCluster12_SVD53 ;
   S_TextCluster12_SVD54  =    -0.00482779740282 +     15.1240940563917 * 
        TextCluster12_SVD54 ;
   S_TextCluster12_SVD55  =     0.00419114143683 +     15.2094977642232 * 
        TextCluster12_SVD55 ;
   S_TextCluster12_SVD56  =    -0.01462854573809 +     13.8411140815818 * 
        TextCluster12_SVD56 ;
   S_TextCluster12_SVD57  =    -0.00276351522364 +     14.4234798701256 * 
        TextCluster12_SVD57 ;
   S_TextCluster12_SVD58  =    -0.01051081084149 +     14.6507235616806 * 
        TextCluster12_SVD58 ;
   S_TextCluster12_SVD59  =    -0.03538565723211 +     15.2332027802693 * 
        TextCluster12_SVD59 ;
   S_TextCluster12_SVD6  =     0.08711942051733 +     5.80014988846751 * 
        TextCluster12_SVD6 ;
   S_TextCluster12_SVD60  =    -0.06681111738339 +     14.9425640257634 * 
        TextCluster12_SVD60 ;
   S_TextCluster12_SVD61  =     0.10019383057144 +      15.329182741572 * 
        TextCluster12_SVD61 ;
   S_TextCluster12_SVD62  =    -0.02680120132396 +     13.9219336269609 * 
        TextCluster12_SVD62 ;
   S_TextCluster12_SVD63  =    -0.02399142716582 +     13.9918054123957 * 
        TextCluster12_SVD63 ;
   S_TextCluster12_SVD64  =    -0.03222850473276 +     14.1776283854938 * 
        TextCluster12_SVD64 ;
   S_TextCluster12_SVD65  =    -0.00348263293218 +     14.7546371992541 * 
        TextCluster12_SVD65 ;
   S_TextCluster12_SVD66  =    -0.02112232008446 +     15.3207858654043 * 
        TextCluster12_SVD66 ;
   S_TextCluster12_SVD67  =    -0.01361404842886 +     15.2433450925312 * 
        TextCluster12_SVD67 ;
   S_TextCluster12_SVD68  =     0.11117727696691 +     14.3653362220822 * 
        TextCluster12_SVD68 ;
   S_TextCluster12_SVD69  =     0.01874580001763 +     14.9538011838543 * 
        TextCluster12_SVD69 ;
   S_TextCluster12_SVD7  =     0.15102198014529 +     5.84942824010202 * 
        TextCluster12_SVD7 ;
   S_TextCluster12_SVD70  =    -0.02259885209884 +     14.5738608152621 * 
        TextCluster12_SVD70 ;
   S_TextCluster12_SVD71  =       0.072857962221 +     15.1198163865925 * 
        TextCluster12_SVD71 ;
   S_TextCluster12_SVD72  =     0.01267723923077 +     14.7076481561274 * 
        TextCluster12_SVD72 ;
   S_TextCluster12_SVD73  =     -0.0278491012917 +     15.2449330491436 * 
        TextCluster12_SVD73 ;
   S_TextCluster12_SVD74  =     0.00074381382638 +     14.9782655900694 * 
        TextCluster12_SVD74 ;
   S_TextCluster12_SVD75  =    -0.03923352593631 +     15.6094167475939 * 
        TextCluster12_SVD75 ;
   S_TextCluster12_SVD76  =    -0.02460349693698 +     15.1702409362964 * 
        TextCluster12_SVD76 ;
   S_TextCluster12_SVD77  =     0.01204193517209 +     15.5278871176592 * 
        TextCluster12_SVD77 ;
   S_TextCluster12_SVD78  =    -0.02457786741061 +     14.3929889573414 * 
        TextCluster12_SVD78 ;
   S_TextCluster12_SVD79  =     0.00986904289126 +      15.355607713703 * 
        TextCluster12_SVD79 ;
   S_TextCluster12_SVD8  =     0.01040387503016 +      6.7316723156876 * 
        TextCluster12_SVD8 ;
   S_TextCluster12_SVD80  =    -0.04852743259816 +     14.8183182753651 * 
        TextCluster12_SVD80 ;
   S_TextCluster12_SVD81  =    -0.03044814407717 +     15.1542783971194 * 
        TextCluster12_SVD81 ;
   S_TextCluster12_SVD82  =     0.03508327690591 +     14.9624769001847 * 
        TextCluster12_SVD82 ;
   S_TextCluster12_SVD83  =    -0.02382377270395 +     15.0924492738353 * 
        TextCluster12_SVD83 ;
   S_TextCluster12_SVD84  =     0.02453329390274 +     15.1951807146024 * 
        TextCluster12_SVD84 ;
   S_TextCluster12_SVD85  =     0.00588110805426 +     14.9764222355011 * 
        TextCluster12_SVD85 ;
   S_TextCluster12_SVD86  =    -0.00500987427278 +     14.6899165206528 * 
        TextCluster12_SVD86 ;
   S_TextCluster12_SVD87  =    -0.00744183627823 +     15.0319166593391 * 
        TextCluster12_SVD87 ;
   S_TextCluster12_SVD88  =    -0.02703985862575 +     15.4728720594193 * 
        TextCluster12_SVD88 ;
   S_TextCluster12_SVD89  =    -0.00852793398273 +     15.1653203185411 * 
        TextCluster12_SVD89 ;
   S_TextCluster12_SVD9  =     0.06106150497343 +     7.25785953831764 * 
        TextCluster12_SVD9 ;
   S_TextCluster12_SVD90  =    -0.13868913315053 +     14.6150553887938 * 
        TextCluster12_SVD90 ;
   S_TextCluster12_SVD91  =    -0.01433572862859 +     15.1455948653772 * 
        TextCluster12_SVD91 ;
   S_TextCluster12_SVD92  =     0.02642361915516 +      14.648816148363 * 
        TextCluster12_SVD92 ;
   S_TextCluster12_SVD93  =    -0.02433459126526 +     15.2618724351659 * 
        TextCluster12_SVD93 ;
   S_TextCluster12_SVD94  =    -0.01565008124835 +     14.3069955227901 * 
        TextCluster12_SVD94 ;
   S_TextCluster12_SVD95  =     0.02725245912947 +     14.7746528477439 * 
        TextCluster12_SVD95 ;
   S_TextCluster12_SVD96  =     0.02206222812673 +     14.8308150640929 * 
        TextCluster12_SVD96 ;
   S_TextCluster12_SVD97  =     0.08336629700049 +     15.3056348483792 * 
        TextCluster12_SVD97 ;
   S_TextCluster12_SVD98  =     0.01228650889099 +     15.0837706424057 * 
        TextCluster12_SVD98 ;
   S_TextCluster12_SVD99  =    -0.04533636000317 +     15.0416109994092 * 
        TextCluster12_SVD99 ;
END;
ELSE DO;
   IF MISSING( TextCluster12_SVD1 ) THEN S_TextCluster12_SVD1  = . ;
   ELSE S_TextCluster12_SVD1  =    -4.28510606929308 +     9.66306977996348 * 
        TextCluster12_SVD1 ;
   IF MISSING( TextCluster12_SVD10 ) THEN S_TextCluster12_SVD10  = . ;
   ELSE S_TextCluster12_SVD10
          =     0.04106711222608 +     7.45180236373577 * TextCluster12_SVD10
         ;
   IF MISSING( TextCluster12_SVD100 ) THEN S_TextCluster12_SVD100  = . ;
   ELSE S_TextCluster12_SVD100
          =    -0.08766152867752 +     15.1992377490007 * TextCluster12_SVD100
         ;
   IF MISSING( TextCluster12_SVD11 ) THEN S_TextCluster12_SVD11  = . ;
   ELSE S_TextCluster12_SVD11
          =    -0.05235334011013 +     9.19109333716906 * TextCluster12_SVD11
         ;
   IF MISSING( TextCluster12_SVD12 ) THEN S_TextCluster12_SVD12  = . ;
   ELSE S_TextCluster12_SVD12
          =    -0.04523765342911 +     9.49899485467046 * TextCluster12_SVD12
         ;
   IF MISSING( TextCluster12_SVD13 ) THEN S_TextCluster12_SVD13  = . ;
   ELSE S_TextCluster12_SVD13
          =     0.02261588360505 +     8.96437899687832 * TextCluster12_SVD13
         ;
   IF MISSING( TextCluster12_SVD14 ) THEN S_TextCluster12_SVD14  = . ;
   ELSE S_TextCluster12_SVD14
          =    -0.12870528517608 +     11.1843012143055 * TextCluster12_SVD14
         ;
   IF MISSING( TextCluster12_SVD15 ) THEN S_TextCluster12_SVD15  = . ;
   ELSE S_TextCluster12_SVD15
          =     0.09360847845064 +     10.1513151889711 * TextCluster12_SVD15
         ;
   IF MISSING( TextCluster12_SVD16 ) THEN S_TextCluster12_SVD16  = . ;
   ELSE S_TextCluster12_SVD16
          =     0.02652029157941 +     11.3800915181938 * TextCluster12_SVD16
         ;
   IF MISSING( TextCluster12_SVD17 ) THEN S_TextCluster12_SVD17  = . ;
   ELSE S_TextCluster12_SVD17
          =    -0.01714557941046 +     12.0074346533609 * TextCluster12_SVD17
         ;
   IF MISSING( TextCluster12_SVD18 ) THEN S_TextCluster12_SVD18  = . ;
   ELSE S_TextCluster12_SVD18
          =     0.08357392093637 +      10.776812893565 * TextCluster12_SVD18
         ;
   IF MISSING( TextCluster12_SVD19 ) THEN S_TextCluster12_SVD19  = . ;
   ELSE S_TextCluster12_SVD19
          =    -0.15006068732604 +     10.8579368176861 * TextCluster12_SVD19
         ;
   IF MISSING( TextCluster12_SVD2 ) THEN S_TextCluster12_SVD2  = . ;
   ELSE S_TextCluster12_SVD2  =     0.23635714340843 +     4.64872227050232 * 
        TextCluster12_SVD2 ;
   IF MISSING( TextCluster12_SVD20 ) THEN S_TextCluster12_SVD20  = . ;
   ELSE S_TextCluster12_SVD20
          =     0.08557686808304 +     11.0096633063987 * TextCluster12_SVD20
         ;
   IF MISSING( TextCluster12_SVD21 ) THEN S_TextCluster12_SVD21  = . ;
   ELSE S_TextCluster12_SVD21
          =    -0.07683793695364 +     11.6332786695967 * TextCluster12_SVD21
         ;
   IF MISSING( TextCluster12_SVD22 ) THEN S_TextCluster12_SVD22  = . ;
   ELSE S_TextCluster12_SVD22
          =     0.03152782829993 +     11.8253524089626 * TextCluster12_SVD22
         ;
   IF MISSING( TextCluster12_SVD23 ) THEN S_TextCluster12_SVD23  = . ;
   ELSE S_TextCluster12_SVD23
          =    -0.00255042018325 +     11.7617663607392 * TextCluster12_SVD23
         ;
   IF MISSING( TextCluster12_SVD24 ) THEN S_TextCluster12_SVD24  = . ;
   ELSE S_TextCluster12_SVD24
          =    -0.04147538971245 +     11.5288256232928 * TextCluster12_SVD24
         ;
   IF MISSING( TextCluster12_SVD25 ) THEN S_TextCluster12_SVD25  = . ;
   ELSE S_TextCluster12_SVD25
          =     0.10164840116797 +     11.7761994579378 * TextCluster12_SVD25
         ;
   IF MISSING( TextCluster12_SVD26 ) THEN S_TextCluster12_SVD26  = . ;
   ELSE S_TextCluster12_SVD26
          =      0.1223382893618 +     12.1709162929762 * TextCluster12_SVD26
         ;
   IF MISSING( TextCluster12_SVD27 ) THEN S_TextCluster12_SVD27  = . ;
   ELSE S_TextCluster12_SVD27
          =    -0.02628221009335 +     12.9276406392854 * TextCluster12_SVD27
         ;
   IF MISSING( TextCluster12_SVD28 ) THEN S_TextCluster12_SVD28  = . ;
   ELSE S_TextCluster12_SVD28
          =      0.0266036097616 +     12.9309637066507 * TextCluster12_SVD28
         ;
   IF MISSING( TextCluster12_SVD29 ) THEN S_TextCluster12_SVD29  = . ;
   ELSE S_TextCluster12_SVD29
          =    -0.03229257583526 +     12.8732592702676 * TextCluster12_SVD29
         ;
   IF MISSING( TextCluster12_SVD3 ) THEN S_TextCluster12_SVD3  = . ;
   ELSE S_TextCluster12_SVD3  =     0.13223159905652 +     4.75441848096707 * 
        TextCluster12_SVD3 ;
   IF MISSING( TextCluster12_SVD30 ) THEN S_TextCluster12_SVD30  = . ;
   ELSE S_TextCluster12_SVD30
          =     0.07939569859343 +     13.6737030796742 * TextCluster12_SVD30
         ;
   IF MISSING( TextCluster12_SVD31 ) THEN S_TextCluster12_SVD31  = . ;
   ELSE S_TextCluster12_SVD31
          =     0.01453940293489 +     13.5874699041492 * TextCluster12_SVD31
         ;
   IF MISSING( TextCluster12_SVD32 ) THEN S_TextCluster12_SVD32  = . ;
   ELSE S_TextCluster12_SVD32
          =      0.0510867497544 +     13.5206723180615 * TextCluster12_SVD32
         ;
   IF MISSING( TextCluster12_SVD33 ) THEN S_TextCluster12_SVD33  = . ;
   ELSE S_TextCluster12_SVD33
          =     0.00203901343035 +     13.2228000740626 * TextCluster12_SVD33
         ;
   IF MISSING( TextCluster12_SVD34 ) THEN S_TextCluster12_SVD34  = . ;
   ELSE S_TextCluster12_SVD34
          =     0.00962781738502 +     13.0301657907581 * TextCluster12_SVD34
         ;
   IF MISSING( TextCluster12_SVD35 ) THEN S_TextCluster12_SVD35  = . ;
   ELSE S_TextCluster12_SVD35
          =     0.02616294239437 +     13.9152585869308 * TextCluster12_SVD35
         ;
   IF MISSING( TextCluster12_SVD36 ) THEN S_TextCluster12_SVD36  = . ;
   ELSE S_TextCluster12_SVD36
          =      0.0071379357172 +     12.3808954158011 * TextCluster12_SVD36
         ;
   IF MISSING( TextCluster12_SVD37 ) THEN S_TextCluster12_SVD37  = . ;
   ELSE S_TextCluster12_SVD37
          =    -0.01623564764521 +     13.9951125056962 * TextCluster12_SVD37
         ;
   IF MISSING( TextCluster12_SVD38 ) THEN S_TextCluster12_SVD38  = . ;
   ELSE S_TextCluster12_SVD38
          =     0.00116112791932 +     13.1169461784816 * TextCluster12_SVD38
         ;
   IF MISSING( TextCluster12_SVD39 ) THEN S_TextCluster12_SVD39  = . ;
   ELSE S_TextCluster12_SVD39
          =    -0.03978258736012 +     13.9218390709738 * TextCluster12_SVD39
         ;
   IF MISSING( TextCluster12_SVD4 ) THEN S_TextCluster12_SVD4  = . ;
   ELSE S_TextCluster12_SVD4  =    -0.21837576381513 +     4.79611905574112 * 
        TextCluster12_SVD4 ;
   IF MISSING( TextCluster12_SVD40 ) THEN S_TextCluster12_SVD40  = . ;
   ELSE S_TextCluster12_SVD40
          =     0.02149482524644 +      14.374561467383 * TextCluster12_SVD40
         ;
   IF MISSING( TextCluster12_SVD41 ) THEN S_TextCluster12_SVD41  = . ;
   ELSE S_TextCluster12_SVD41
          =    -0.08026729897919 +     13.3055079453838 * TextCluster12_SVD41
         ;
   IF MISSING( TextCluster12_SVD42 ) THEN S_TextCluster12_SVD42  = . ;
   ELSE S_TextCluster12_SVD42
          =     0.01413890597073 +     14.5670514385145 * TextCluster12_SVD42
         ;
   IF MISSING( TextCluster12_SVD43 ) THEN S_TextCluster12_SVD43  = . ;
   ELSE S_TextCluster12_SVD43
          =    -0.05535868280358 +     13.3429754212401 * TextCluster12_SVD43
         ;
   IF MISSING( TextCluster12_SVD44 ) THEN S_TextCluster12_SVD44  = . ;
   ELSE S_TextCluster12_SVD44
          =     0.01698826248839 +     13.6494723939699 * TextCluster12_SVD44
         ;
   IF MISSING( TextCluster12_SVD45 ) THEN S_TextCluster12_SVD45  = . ;
   ELSE S_TextCluster12_SVD45
          =    -0.13371205621724 +     14.7777715410572 * TextCluster12_SVD45
         ;
   IF MISSING( TextCluster12_SVD46 ) THEN S_TextCluster12_SVD46  = . ;
   ELSE S_TextCluster12_SVD46
          =      0.0146805340865 +     14.3600743366902 * TextCluster12_SVD46
         ;
   IF MISSING( TextCluster12_SVD47 ) THEN S_TextCluster12_SVD47  = . ;
   ELSE S_TextCluster12_SVD47
          =    -0.02769622521716 +     14.2530994839849 * TextCluster12_SVD47
         ;
   IF MISSING( TextCluster12_SVD48 ) THEN S_TextCluster12_SVD48  = . ;
   ELSE S_TextCluster12_SVD48
          =      0.0313539415708 +     13.7018851530244 * TextCluster12_SVD48
         ;
   IF MISSING( TextCluster12_SVD49 ) THEN S_TextCluster12_SVD49  = . ;
   ELSE S_TextCluster12_SVD49
          =    -0.03427782119259 +      14.247719807645 * TextCluster12_SVD49
         ;
   IF MISSING( TextCluster12_SVD5 ) THEN S_TextCluster12_SVD5  = . ;
   ELSE S_TextCluster12_SVD5  =     0.25974651596863 +     5.20348202469969 * 
        TextCluster12_SVD5 ;
   IF MISSING( TextCluster12_SVD50 ) THEN S_TextCluster12_SVD50  = . ;
   ELSE S_TextCluster12_SVD50
          =     -0.0371769231098 +     13.6801201431174 * TextCluster12_SVD50
         ;
   IF MISSING( TextCluster12_SVD51 ) THEN S_TextCluster12_SVD51  = . ;
   ELSE S_TextCluster12_SVD51
          =     0.13193113072099 +     13.7035954333265 * TextCluster12_SVD51
         ;
   IF MISSING( TextCluster12_SVD52 ) THEN S_TextCluster12_SVD52  = . ;
   ELSE S_TextCluster12_SVD52
          =    -0.00303539880531 +     14.0621296460942 * TextCluster12_SVD52
         ;
   IF MISSING( TextCluster12_SVD53 ) THEN S_TextCluster12_SVD53  = . ;
   ELSE S_TextCluster12_SVD53
          =     0.00668905291955 +     14.6671820683733 * TextCluster12_SVD53
         ;
   IF MISSING( TextCluster12_SVD54 ) THEN S_TextCluster12_SVD54  = . ;
   ELSE S_TextCluster12_SVD54
          =    -0.00482779740282 +     15.1240940563917 * TextCluster12_SVD54
         ;
   IF MISSING( TextCluster12_SVD55 ) THEN S_TextCluster12_SVD55  = . ;
   ELSE S_TextCluster12_SVD55
          =     0.00419114143683 +     15.2094977642232 * TextCluster12_SVD55
         ;
   IF MISSING( TextCluster12_SVD56 ) THEN S_TextCluster12_SVD56  = . ;
   ELSE S_TextCluster12_SVD56
          =    -0.01462854573809 +     13.8411140815818 * TextCluster12_SVD56
         ;
   IF MISSING( TextCluster12_SVD57 ) THEN S_TextCluster12_SVD57  = . ;
   ELSE S_TextCluster12_SVD57
          =    -0.00276351522364 +     14.4234798701256 * TextCluster12_SVD57
         ;
   IF MISSING( TextCluster12_SVD58 ) THEN S_TextCluster12_SVD58  = . ;
   ELSE S_TextCluster12_SVD58
          =    -0.01051081084149 +     14.6507235616806 * TextCluster12_SVD58
         ;
   IF MISSING( TextCluster12_SVD59 ) THEN S_TextCluster12_SVD59  = . ;
   ELSE S_TextCluster12_SVD59
          =    -0.03538565723211 +     15.2332027802693 * TextCluster12_SVD59
         ;
   IF MISSING( TextCluster12_SVD6 ) THEN S_TextCluster12_SVD6  = . ;
   ELSE S_TextCluster12_SVD6  =     0.08711942051733 +     5.80014988846751 * 
        TextCluster12_SVD6 ;
   IF MISSING( TextCluster12_SVD60 ) THEN S_TextCluster12_SVD60  = . ;
   ELSE S_TextCluster12_SVD60
          =    -0.06681111738339 +     14.9425640257634 * TextCluster12_SVD60
         ;
   IF MISSING( TextCluster12_SVD61 ) THEN S_TextCluster12_SVD61  = . ;
   ELSE S_TextCluster12_SVD61
          =     0.10019383057144 +      15.329182741572 * TextCluster12_SVD61
         ;
   IF MISSING( TextCluster12_SVD62 ) THEN S_TextCluster12_SVD62  = . ;
   ELSE S_TextCluster12_SVD62
          =    -0.02680120132396 +     13.9219336269609 * TextCluster12_SVD62
         ;
   IF MISSING( TextCluster12_SVD63 ) THEN S_TextCluster12_SVD63  = . ;
   ELSE S_TextCluster12_SVD63
          =    -0.02399142716582 +     13.9918054123957 * TextCluster12_SVD63
         ;
   IF MISSING( TextCluster12_SVD64 ) THEN S_TextCluster12_SVD64  = . ;
   ELSE S_TextCluster12_SVD64
          =    -0.03222850473276 +     14.1776283854938 * TextCluster12_SVD64
         ;
   IF MISSING( TextCluster12_SVD65 ) THEN S_TextCluster12_SVD65  = . ;
   ELSE S_TextCluster12_SVD65
          =    -0.00348263293218 +     14.7546371992541 * TextCluster12_SVD65
         ;
   IF MISSING( TextCluster12_SVD66 ) THEN S_TextCluster12_SVD66  = . ;
   ELSE S_TextCluster12_SVD66
          =    -0.02112232008446 +     15.3207858654043 * TextCluster12_SVD66
         ;
   IF MISSING( TextCluster12_SVD67 ) THEN S_TextCluster12_SVD67  = . ;
   ELSE S_TextCluster12_SVD67
          =    -0.01361404842886 +     15.2433450925312 * TextCluster12_SVD67
         ;
   IF MISSING( TextCluster12_SVD68 ) THEN S_TextCluster12_SVD68  = . ;
   ELSE S_TextCluster12_SVD68
          =     0.11117727696691 +     14.3653362220822 * TextCluster12_SVD68
         ;
   IF MISSING( TextCluster12_SVD69 ) THEN S_TextCluster12_SVD69  = . ;
   ELSE S_TextCluster12_SVD69
          =     0.01874580001763 +     14.9538011838543 * TextCluster12_SVD69
         ;
   IF MISSING( TextCluster12_SVD7 ) THEN S_TextCluster12_SVD7  = . ;
   ELSE S_TextCluster12_SVD7  =     0.15102198014529 +     5.84942824010202 * 
        TextCluster12_SVD7 ;
   IF MISSING( TextCluster12_SVD70 ) THEN S_TextCluster12_SVD70  = . ;
   ELSE S_TextCluster12_SVD70
          =    -0.02259885209884 +     14.5738608152621 * TextCluster12_SVD70
         ;
   IF MISSING( TextCluster12_SVD71 ) THEN S_TextCluster12_SVD71  = . ;
   ELSE S_TextCluster12_SVD71
          =       0.072857962221 +     15.1198163865925 * TextCluster12_SVD71
         ;
   IF MISSING( TextCluster12_SVD72 ) THEN S_TextCluster12_SVD72  = . ;
   ELSE S_TextCluster12_SVD72
          =     0.01267723923077 +     14.7076481561274 * TextCluster12_SVD72
         ;
   IF MISSING( TextCluster12_SVD73 ) THEN S_TextCluster12_SVD73  = . ;
   ELSE S_TextCluster12_SVD73
          =     -0.0278491012917 +     15.2449330491436 * TextCluster12_SVD73
         ;
   IF MISSING( TextCluster12_SVD74 ) THEN S_TextCluster12_SVD74  = . ;
   ELSE S_TextCluster12_SVD74
          =     0.00074381382638 +     14.9782655900694 * TextCluster12_SVD74
         ;
   IF MISSING( TextCluster12_SVD75 ) THEN S_TextCluster12_SVD75  = . ;
   ELSE S_TextCluster12_SVD75
          =    -0.03923352593631 +     15.6094167475939 * TextCluster12_SVD75
         ;
   IF MISSING( TextCluster12_SVD76 ) THEN S_TextCluster12_SVD76  = . ;
   ELSE S_TextCluster12_SVD76
          =    -0.02460349693698 +     15.1702409362964 * TextCluster12_SVD76
         ;
   IF MISSING( TextCluster12_SVD77 ) THEN S_TextCluster12_SVD77  = . ;
   ELSE S_TextCluster12_SVD77
          =     0.01204193517209 +     15.5278871176592 * TextCluster12_SVD77
         ;
   IF MISSING( TextCluster12_SVD78 ) THEN S_TextCluster12_SVD78  = . ;
   ELSE S_TextCluster12_SVD78
          =    -0.02457786741061 +     14.3929889573414 * TextCluster12_SVD78
         ;
   IF MISSING( TextCluster12_SVD79 ) THEN S_TextCluster12_SVD79  = . ;
   ELSE S_TextCluster12_SVD79
          =     0.00986904289126 +      15.355607713703 * TextCluster12_SVD79
         ;
   IF MISSING( TextCluster12_SVD8 ) THEN S_TextCluster12_SVD8  = . ;
   ELSE S_TextCluster12_SVD8  =     0.01040387503016 +      6.7316723156876 * 
        TextCluster12_SVD8 ;
   IF MISSING( TextCluster12_SVD80 ) THEN S_TextCluster12_SVD80  = . ;
   ELSE S_TextCluster12_SVD80
          =    -0.04852743259816 +     14.8183182753651 * TextCluster12_SVD80
         ;
   IF MISSING( TextCluster12_SVD81 ) THEN S_TextCluster12_SVD81  = . ;
   ELSE S_TextCluster12_SVD81
          =    -0.03044814407717 +     15.1542783971194 * TextCluster12_SVD81
         ;
   IF MISSING( TextCluster12_SVD82 ) THEN S_TextCluster12_SVD82  = . ;
   ELSE S_TextCluster12_SVD82
          =     0.03508327690591 +     14.9624769001847 * TextCluster12_SVD82
         ;
   IF MISSING( TextCluster12_SVD83 ) THEN S_TextCluster12_SVD83  = . ;
   ELSE S_TextCluster12_SVD83
          =    -0.02382377270395 +     15.0924492738353 * TextCluster12_SVD83
         ;
   IF MISSING( TextCluster12_SVD84 ) THEN S_TextCluster12_SVD84  = . ;
   ELSE S_TextCluster12_SVD84
          =     0.02453329390274 +     15.1951807146024 * TextCluster12_SVD84
         ;
   IF MISSING( TextCluster12_SVD85 ) THEN S_TextCluster12_SVD85  = . ;
   ELSE S_TextCluster12_SVD85
          =     0.00588110805426 +     14.9764222355011 * TextCluster12_SVD85
         ;
   IF MISSING( TextCluster12_SVD86 ) THEN S_TextCluster12_SVD86  = . ;
   ELSE S_TextCluster12_SVD86
          =    -0.00500987427278 +     14.6899165206528 * TextCluster12_SVD86
         ;
   IF MISSING( TextCluster12_SVD87 ) THEN S_TextCluster12_SVD87  = . ;
   ELSE S_TextCluster12_SVD87
          =    -0.00744183627823 +     15.0319166593391 * TextCluster12_SVD87
         ;
   IF MISSING( TextCluster12_SVD88 ) THEN S_TextCluster12_SVD88  = . ;
   ELSE S_TextCluster12_SVD88
          =    -0.02703985862575 +     15.4728720594193 * TextCluster12_SVD88
         ;
   IF MISSING( TextCluster12_SVD89 ) THEN S_TextCluster12_SVD89  = . ;
   ELSE S_TextCluster12_SVD89
          =    -0.00852793398273 +     15.1653203185411 * TextCluster12_SVD89
         ;
   IF MISSING( TextCluster12_SVD9 ) THEN S_TextCluster12_SVD9  = . ;
   ELSE S_TextCluster12_SVD9  =     0.06106150497343 +     7.25785953831764 * 
        TextCluster12_SVD9 ;
   IF MISSING( TextCluster12_SVD90 ) THEN S_TextCluster12_SVD90  = . ;
   ELSE S_TextCluster12_SVD90
          =    -0.13868913315053 +     14.6150553887938 * TextCluster12_SVD90
         ;
   IF MISSING( TextCluster12_SVD91 ) THEN S_TextCluster12_SVD91  = . ;
   ELSE S_TextCluster12_SVD91
          =    -0.01433572862859 +     15.1455948653772 * TextCluster12_SVD91
         ;
   IF MISSING( TextCluster12_SVD92 ) THEN S_TextCluster12_SVD92  = . ;
   ELSE S_TextCluster12_SVD92
          =     0.02642361915516 +      14.648816148363 * TextCluster12_SVD92
         ;
   IF MISSING( TextCluster12_SVD93 ) THEN S_TextCluster12_SVD93  = . ;
   ELSE S_TextCluster12_SVD93
          =    -0.02433459126526 +     15.2618724351659 * TextCluster12_SVD93
         ;
   IF MISSING( TextCluster12_SVD94 ) THEN S_TextCluster12_SVD94  = . ;
   ELSE S_TextCluster12_SVD94
          =    -0.01565008124835 +     14.3069955227901 * TextCluster12_SVD94
         ;
   IF MISSING( TextCluster12_SVD95 ) THEN S_TextCluster12_SVD95  = . ;
   ELSE S_TextCluster12_SVD95
          =     0.02725245912947 +     14.7746528477439 * TextCluster12_SVD95
         ;
   IF MISSING( TextCluster12_SVD96 ) THEN S_TextCluster12_SVD96  = . ;
   ELSE S_TextCluster12_SVD96
          =     0.02206222812673 +     14.8308150640929 * TextCluster12_SVD96
         ;
   IF MISSING( TextCluster12_SVD97 ) THEN S_TextCluster12_SVD97  = . ;
   ELSE S_TextCluster12_SVD97
          =     0.08336629700049 +     15.3056348483792 * TextCluster12_SVD97
         ;
   IF MISSING( TextCluster12_SVD98 ) THEN S_TextCluster12_SVD98  = . ;
   ELSE S_TextCluster12_SVD98
          =     0.01228650889099 +     15.0837706424057 * TextCluster12_SVD98
         ;
   IF MISSING( TextCluster12_SVD99 ) THEN S_TextCluster12_SVD99  = . ;
   ELSE S_TextCluster12_SVD99
          =    -0.04533636000317 +     15.0416109994092 * TextCluster12_SVD99
         ;
END;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =     0.38852824927885 * S_TextCluster12_SVD1
          +    -0.25949868291579 * S_TextCluster12_SVD10
          +    -0.28891139630869 * S_TextCluster12_SVD100
          +    -0.00019296897992 * S_TextCluster12_SVD11
          +     0.43915642226477 * S_TextCluster12_SVD12
          +    -1.06968286395356 * S_TextCluster12_SVD13
          +     -0.1703823570237 * S_TextCluster12_SVD14
          +    -0.23298630079851 * S_TextCluster12_SVD15
          +    -0.14806742415739 * S_TextCluster12_SVD16
          +    -0.43803250991313 * S_TextCluster12_SVD17
          +     0.28181169521515 * S_TextCluster12_SVD18
          +     0.74185613146312 * S_TextCluster12_SVD19
          +     2.24558169830383 * S_TextCluster12_SVD2
          +     1.21952643166069 * S_TextCluster12_SVD20
          +     0.19648964976867 * S_TextCluster12_SVD21
          +    -0.18044531512721 * S_TextCluster12_SVD22
          +    -0.31387731999941 * S_TextCluster12_SVD23
          +     0.08628401717003 * S_TextCluster12_SVD24
          +    -0.20712728387686 * S_TextCluster12_SVD25
          +     0.67194317543525 * S_TextCluster12_SVD26
          +    -0.21219853979427 * S_TextCluster12_SVD27
          +     0.48673877859306 * S_TextCluster12_SVD28
          +     0.00712232760947 * S_TextCluster12_SVD29
          +     0.04432377764682 * S_TextCluster12_SVD3
          +    -0.61172114002905 * S_TextCluster12_SVD30
          +    -0.31570383388615 * S_TextCluster12_SVD31
          +     0.59334931131489 * S_TextCluster12_SVD32
          +    -0.01519774943826 * S_TextCluster12_SVD33
          +    -0.55956304368839 * S_TextCluster12_SVD34
          +    -0.24263241989562 * S_TextCluster12_SVD35
          +    -0.22397318179694 * S_TextCluster12_SVD36
          +    -0.33903955200194 * S_TextCluster12_SVD37
          +    -0.24196169042728 * S_TextCluster12_SVD38
          +    -0.49553678883051 * S_TextCluster12_SVD39
          +     2.05872366643432 * S_TextCluster12_SVD4
          +    -0.25136205732022 * S_TextCluster12_SVD40
          +     0.37511792882232 * S_TextCluster12_SVD41
          +    -0.11006951000013 * S_TextCluster12_SVD42
          +     0.62158384563546 * S_TextCluster12_SVD43
          +      0.2593748640436 * S_TextCluster12_SVD44
          +    -0.09144766568731 * S_TextCluster12_SVD45
          +     0.34681050797472 * S_TextCluster12_SVD46
          +    -0.28204121375604 * S_TextCluster12_SVD47
          +    -0.06883922178768 * S_TextCluster12_SVD48
          +    -0.33957241244905 * S_TextCluster12_SVD49
          +     0.17881937544957 * S_TextCluster12_SVD5
          +    -0.25234913200871 * S_TextCluster12_SVD50
          +    -0.01668096765024 * S_TextCluster12_SVD51
          +     0.40826906065073 * S_TextCluster12_SVD52
          +      0.0407478590926 * S_TextCluster12_SVD53
          +    -0.09385464956156 * S_TextCluster12_SVD54
          +    -0.25874866807877 * S_TextCluster12_SVD55
          +      0.2377198819727 * S_TextCluster12_SVD56
          +    -0.23887318604707 * S_TextCluster12_SVD57
          +    -0.10446592076845 * S_TextCluster12_SVD58
          +    -0.37272493987827 * S_TextCluster12_SVD59
          +     0.13553711710878 * S_TextCluster12_SVD6
          +    -0.12451157871516 * S_TextCluster12_SVD60
          +    -0.44500392930919 * S_TextCluster12_SVD61
          +     0.22865243493208 * S_TextCluster12_SVD62
          +    -0.48166357021305 * S_TextCluster12_SVD63
          +    -0.01496706835678 * S_TextCluster12_SVD64
          +     0.30804360809112 * S_TextCluster12_SVD65
          +     0.07209122342251 * S_TextCluster12_SVD66
          +    -0.29808254925979 * S_TextCluster12_SVD67
          +    -0.18518774109787 * S_TextCluster12_SVD68
          +     0.15071457006894 * S_TextCluster12_SVD69
          +     0.20826035428753 * S_TextCluster12_SVD7
          +     -0.6085206270027 * S_TextCluster12_SVD70
          +    -0.25533705680724 * S_TextCluster12_SVD71
          +    -0.44998826956762 * S_TextCluster12_SVD72
          +    -0.35002528906414 * S_TextCluster12_SVD73
          +    -0.24061920785237 * S_TextCluster12_SVD74
          +     0.12462122589387 * S_TextCluster12_SVD75
          +    -0.30993412663184 * S_TextCluster12_SVD76
          +     0.46675404782868 * S_TextCluster12_SVD77
          +    -0.12612391473104 * S_TextCluster12_SVD78
          +    -0.54753162118886 * S_TextCluster12_SVD79
          +      1.0945734226908 * S_TextCluster12_SVD8
          +    -0.00361747832783 * S_TextCluster12_SVD80
          +     0.26159437908325 * S_TextCluster12_SVD81
          +    -0.32299248162929 * S_TextCluster12_SVD82
          +    -0.23350192409306 * S_TextCluster12_SVD83
          +     0.29533882549308 * S_TextCluster12_SVD84
          +    -0.06676055071206 * S_TextCluster12_SVD85
          +     0.51788990988883 * S_TextCluster12_SVD86
          +     0.19455215793453 * S_TextCluster12_SVD87
          +     0.17403381099974 * S_TextCluster12_SVD88
          +     0.24830810611229 * S_TextCluster12_SVD89
          +    -0.98937815905027 * S_TextCluster12_SVD9
          +    -0.37228933739746 * S_TextCluster12_SVD90
          +      0.2443883073714 * S_TextCluster12_SVD91
          +    -0.38460046538241 * S_TextCluster12_SVD92
          +    -0.38519754748996 * S_TextCluster12_SVD93
          +    -0.43886462670967 * S_TextCluster12_SVD94
          +     0.38869293675688 * S_TextCluster12_SVD95
          +     0.47835180703837 * S_TextCluster12_SVD96
          +    -0.09310979672405 * S_TextCluster12_SVD97
          +     0.00172957802545 * S_TextCluster12_SVD98
          +    -0.00749526171973 * S_TextCluster12_SVD99 ;
   H12  =    -0.07322151416341 * S_TextCluster12_SVD1
          +     0.66878995918233 * S_TextCluster12_SVD10
          +     0.27725065513382 * S_TextCluster12_SVD100
          +     0.51468128588638 * S_TextCluster12_SVD11
          +     0.30935534892231 * S_TextCluster12_SVD12
          +     -0.4791272637866 * S_TextCluster12_SVD13
          +      0.5144574186374 * S_TextCluster12_SVD14
          +    -0.17244834622478 * S_TextCluster12_SVD15
          +    -0.09507186817141 * S_TextCluster12_SVD16
          +    -0.01823393934755 * S_TextCluster12_SVD17
          +     0.54868686076829 * S_TextCluster12_SVD18
          +     0.11389478166259 * S_TextCluster12_SVD19
          +    -0.91540783890756 * S_TextCluster12_SVD2
          +     -0.4616451486031 * S_TextCluster12_SVD20
          +     -0.0383834217618 * S_TextCluster12_SVD21
          +     0.22798881366688 * S_TextCluster12_SVD22
          +     0.04606970539982 * S_TextCluster12_SVD23
          +    -0.04755517202629 * S_TextCluster12_SVD24
          +    -0.99569722355141 * S_TextCluster12_SVD25
          +    -0.09354967424854 * S_TextCluster12_SVD26
          +     0.16086840837968 * S_TextCluster12_SVD27
          +    -0.11304524400363 * S_TextCluster12_SVD28
          +     0.39798753764638 * S_TextCluster12_SVD29
          +     1.93221956746184 * S_TextCluster12_SVD3
          +    -0.05186850182538 * S_TextCluster12_SVD30
          +     0.38814169522672 * S_TextCluster12_SVD31
          +    -0.23179725786323 * S_TextCluster12_SVD32
          +    -0.00280751617996 * S_TextCluster12_SVD33
          +    -0.62963298317546 * S_TextCluster12_SVD34
          +     0.48227538884711 * S_TextCluster12_SVD35
          +      0.0684656963978 * S_TextCluster12_SVD36
          +    -0.05784186652842 * S_TextCluster12_SVD37
          +     0.14719995575832 * S_TextCluster12_SVD38
          +     0.69017362803844 * S_TextCluster12_SVD39
          +      1.8103099303034 * S_TextCluster12_SVD4
          +     0.08348051699604 * S_TextCluster12_SVD40
          +     0.00388452870743 * S_TextCluster12_SVD41
          +     0.11163086400445 * S_TextCluster12_SVD42
          +     0.25415715635568 * S_TextCluster12_SVD43
          +    -0.04907632053183 * S_TextCluster12_SVD44
          +    -0.44505103378933 * S_TextCluster12_SVD45
          +    -0.37657443470398 * S_TextCluster12_SVD46
          +     0.26672203934543 * S_TextCluster12_SVD47
          +    -0.07406382242973 * S_TextCluster12_SVD48
          +     0.21915850953941 * S_TextCluster12_SVD49
          +     0.44726740716384 * S_TextCluster12_SVD5
          +    -0.28786407319913 * S_TextCluster12_SVD50
          +     0.11571470790716 * S_TextCluster12_SVD51
          +     0.18207145502162 * S_TextCluster12_SVD52
          +     0.16506630172297 * S_TextCluster12_SVD53
          +    -0.36282441574544 * S_TextCluster12_SVD54
          +    -0.10883046621021 * S_TextCluster12_SVD55
          +     0.04927314578422 * S_TextCluster12_SVD56
          +     -0.3977712656102 * S_TextCluster12_SVD57
          +     -0.3105844179913 * S_TextCluster12_SVD58
          +    -0.08122243935663 * S_TextCluster12_SVD59
          +    -1.07665984399565 * S_TextCluster12_SVD6
          +      0.4849701776364 * S_TextCluster12_SVD60
          +     -0.3270569362039 * S_TextCluster12_SVD61
          +     0.16504327843777 * S_TextCluster12_SVD62
          +     0.07191062374327 * S_TextCluster12_SVD63
          +    -0.06372447437089 * S_TextCluster12_SVD64
          +     0.06002957036741 * S_TextCluster12_SVD65
          +    -0.22963190648352 * S_TextCluster12_SVD66
          +     0.34888712791823 * S_TextCluster12_SVD67
          +    -0.00513204137006 * S_TextCluster12_SVD68
          +     0.25446181969752 * S_TextCluster12_SVD69
          +    -0.30763531389561 * S_TextCluster12_SVD7
          +    -0.22284264275143 * S_TextCluster12_SVD70
          +      0.1583577072611 * S_TextCluster12_SVD71
          +    -0.29481661846994 * S_TextCluster12_SVD72
          +     0.18489917102021 * S_TextCluster12_SVD73
          +    -0.10438813973641 * S_TextCluster12_SVD74
          +     0.00386884993205 * S_TextCluster12_SVD75
          +      0.3946464281973 * S_TextCluster12_SVD76
          +    -0.01072191235201 * S_TextCluster12_SVD77
          +     0.05610140387214 * S_TextCluster12_SVD78
          +     0.04867287998802 * S_TextCluster12_SVD79
          +    -1.70056944215142 * S_TextCluster12_SVD8
          +    -0.21513213566943 * S_TextCluster12_SVD80
          +    -0.35565395386846 * S_TextCluster12_SVD81
          +     0.03975049224343 * S_TextCluster12_SVD82
          +     0.07204637943778 * S_TextCluster12_SVD83
          +     0.24945469116862 * S_TextCluster12_SVD84
          +     0.29402349945842 * S_TextCluster12_SVD85
          +     0.07984517031066 * S_TextCluster12_SVD86
          +     0.17969896876648 * S_TextCluster12_SVD87
          +    -0.27456332264127 * S_TextCluster12_SVD88
          +      0.0546761674633 * S_TextCluster12_SVD89
          +     0.30853663208859 * S_TextCluster12_SVD9
          +    -0.21561425095782 * S_TextCluster12_SVD90
          +      0.3655477242295 * S_TextCluster12_SVD91
          +     0.40479998180361 * S_TextCluster12_SVD92
          +    -0.37602324998796 * S_TextCluster12_SVD93
          +    -0.22392240307346 * S_TextCluster12_SVD94
          +    -0.39641069327898 * S_TextCluster12_SVD95
          +     0.06904328542332 * S_TextCluster12_SVD96
          +     0.31298126124818 * S_TextCluster12_SVD97
          +    -0.34947048304545 * S_TextCluster12_SVD98
          +    -0.09812726210226 * S_TextCluster12_SVD99 ;
   H13  =    -0.03939763754558 * S_TextCluster12_SVD1
          +    -0.20767801582206 * S_TextCluster12_SVD10
          +     0.02373079084812 * S_TextCluster12_SVD100
          +      0.0645335654386 * S_TextCluster12_SVD11
          +    -0.00580415613625 * S_TextCluster12_SVD12
          +    -0.04518980406604 * S_TextCluster12_SVD13
          +    -0.10923620886709 * S_TextCluster12_SVD14
          +    -0.15257317488227 * S_TextCluster12_SVD15
          +    -0.06220416095325 * S_TextCluster12_SVD16
          +      0.0780993538692 * S_TextCluster12_SVD17
          +     0.06230253164425 * S_TextCluster12_SVD18
          +     0.12779840285565 * S_TextCluster12_SVD19
          +    -0.15807266777442 * S_TextCluster12_SVD2
          +     0.16671465873535 * S_TextCluster12_SVD20
          +    -0.08202926325635 * S_TextCluster12_SVD21
          +    -0.12894084392082 * S_TextCluster12_SVD22
          +     0.07218416751919 * S_TextCluster12_SVD23
          +     0.07215005535674 * S_TextCluster12_SVD24
          +    -0.02449790078916 * S_TextCluster12_SVD25
          +     -0.0211595791923 * S_TextCluster12_SVD26
          +     -0.0020478693435 * S_TextCluster12_SVD27
          +     0.05736575143248 * S_TextCluster12_SVD28
          +     0.03547347876565 * S_TextCluster12_SVD29
          +    -0.00163570636591 * S_TextCluster12_SVD3
          +    -0.07936829456683 * S_TextCluster12_SVD30
          +     0.01232581732545 * S_TextCluster12_SVD31
          +    -0.03553678689567 * S_TextCluster12_SVD32
          +    -0.00877598419174 * S_TextCluster12_SVD33
          +      0.0439545234568 * S_TextCluster12_SVD34
          +    -0.05413187226871 * S_TextCluster12_SVD35
          +     0.00102435128741 * S_TextCluster12_SVD36
          +    -0.00732466781082 * S_TextCluster12_SVD37
          +     -0.0795693283681 * S_TextCluster12_SVD38
          +      0.0325012387365 * S_TextCluster12_SVD39
          +    -0.05189525728331 * S_TextCluster12_SVD4
          +     0.02515719251063 * S_TextCluster12_SVD40
          +    -0.02953379480195 * S_TextCluster12_SVD41
          +    -0.06619366889627 * S_TextCluster12_SVD42
          +     0.12810406907738 * S_TextCluster12_SVD43
          +     -0.0147976095361 * S_TextCluster12_SVD44
          +     0.01767878169944 * S_TextCluster12_SVD45
          +    -0.01817789525405 * S_TextCluster12_SVD46
          +     0.04405550152363 * S_TextCluster12_SVD47
          +    -0.05405506904665 * S_TextCluster12_SVD48
          +    -0.06672273766272 * S_TextCluster12_SVD49
          +    -0.20575285122774 * S_TextCluster12_SVD5
          +     0.03158626486029 * S_TextCluster12_SVD50
          +     0.01324912954932 * S_TextCluster12_SVD51
          +    -0.03431262047373 * S_TextCluster12_SVD52
          +     0.03108051425192 * S_TextCluster12_SVD53
          +     0.02346608514679 * S_TextCluster12_SVD54
          +     0.08315613528673 * S_TextCluster12_SVD55
          +    -0.05661443940303 * S_TextCluster12_SVD56
          +      0.0045666521128 * S_TextCluster12_SVD57
          +    -0.03139165754926 * S_TextCluster12_SVD58
          +     0.01943522210615 * S_TextCluster12_SVD59
          +     0.69167883001553 * S_TextCluster12_SVD6
          +      0.0001752968021 * S_TextCluster12_SVD60
          +    -0.07049510745719 * S_TextCluster12_SVD61
          +    -0.03541830135699 * S_TextCluster12_SVD62
          +    -0.05234603748107 * S_TextCluster12_SVD63
          +     0.04477307668587 * S_TextCluster12_SVD64
          +     0.02462654305304 * S_TextCluster12_SVD65
          +    -0.02331188546364 * S_TextCluster12_SVD66
          +    -0.00597904984972 * S_TextCluster12_SVD67
          +    -0.00372458858506 * S_TextCluster12_SVD68
          +     0.01958299113143 * S_TextCluster12_SVD69
          +    -0.22127579602388 * S_TextCluster12_SVD7
          +    -0.01573625354624 * S_TextCluster12_SVD70
          +     0.04402848174445 * S_TextCluster12_SVD71
          +     0.01986451792558 * S_TextCluster12_SVD72
          +    -0.02077006879281 * S_TextCluster12_SVD73
          +     0.03650930799396 * S_TextCluster12_SVD74
          +    -0.00643357311621 * S_TextCluster12_SVD75
          +     0.01879486597373 * S_TextCluster12_SVD76
          +     0.02079082302042 * S_TextCluster12_SVD77
          +    -0.08222690274625 * S_TextCluster12_SVD78
          +    -0.02629675115466 * S_TextCluster12_SVD79
          +     0.45892237904749 * S_TextCluster12_SVD8
          +    -0.00898211070849 * S_TextCluster12_SVD80
          +    -0.04729671931914 * S_TextCluster12_SVD81
          +    -0.05123965742928 * S_TextCluster12_SVD82
          +      0.0020613239113 * S_TextCluster12_SVD83
          +    -0.02158229651178 * S_TextCluster12_SVD84
          +     0.00977033568003 * S_TextCluster12_SVD85
          +    -0.09584574365074 * S_TextCluster12_SVD86
          +    -0.03649634947221 * S_TextCluster12_SVD87
          +     0.02435453171718 * S_TextCluster12_SVD88
          +     0.03968238454316 * S_TextCluster12_SVD89
          +    -0.14713847941602 * S_TextCluster12_SVD9
          +     0.05225293169261 * S_TextCluster12_SVD90
          +     -0.0480219016551 * S_TextCluster12_SVD91
          +    -0.05408419265404 * S_TextCluster12_SVD92
          +      0.0187105031932 * S_TextCluster12_SVD93
          +    -0.05347432155484 * S_TextCluster12_SVD94
          +     0.02677510677887 * S_TextCluster12_SVD95
          +    -0.01772770700761 * S_TextCluster12_SVD96
          +    -0.02303507826859 * S_TextCluster12_SVD97
          +     -0.0468031665025 * S_TextCluster12_SVD98
          +     0.07271873404054 * S_TextCluster12_SVD99 ;
   H11  =     1.88149362108351 + H11 ;
   H12  =     1.36454280101418 + H12 ;
   H13  =     0.10560664326619 + H13 ;
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
   P_CategoryTEACHER  =    -4.23877899515348 * H11  +    -5.82962568999515 * 
        H12  +     0.38278461922732 * H13 ;
   P_CategorySALES  =    -4.12180194822017 * H11  +     1.44945678691784 * H12
          +     5.50584722757651 * H13 ;
   P_CategoryOTHER  =     0.56487659372291 * H11  +    -0.64102834309468 * H12
          +     1.57230532459799 * H13 ;
   P_CategoryINFORMATION_TECHNOLOGY  =     3.77158684969718 * H11
          +    -4.68896313658032 * H12  +    -0.24011916802768 * H13 ;
   P_CategoryHR  =    -6.25318705918547 * H11  +     2.74998419213101 * H12
          +     1.54332141030915 * H13 ;
   P_CategoryHEALTHCARE  =    -6.86054270619488 * H11
          +     -0.7369082964048 * H12  +    -2.89941755853051 * H13 ;
   P_CategoryFITNESS  =    -0.48650034693317 * H11  +    -3.68884856714397 * 
        H12  +     5.45813422138685 * H13 ;
   P_CategoryDIGITAL_MEDIA  =     1.67639469617252 * H11
          +     1.72584134391084 * H12  +    -1.49168871337687 * H13 ;
   P_CategoryDESIGNER  =     0.95967094812004 * H11  +     0.29241129555439 * 
        H12  +    -5.00450753358954 * H13 ;
   P_CategoryCONSULTANT  =     2.23310947486408 * H11
          +    -3.48994585679356 * H12  +    -2.81997669228119 * H13 ;
   P_CategoryBUSINESS_DEVELOPMENT  =     1.58672064467157 * H11
          +     -0.6900254016595 * H12  +     4.23039758340383 * H13 ;
   P_CategoryTEACHER  =    -2.48718483842104 + P_CategoryTEACHER ;
   P_CategorySALES  =    -2.03844049134433 + P_CategorySALES ;
   P_CategoryOTHER  =    -0.03462371400295 + P_CategoryOTHER ;
   P_CategoryINFORMATION_TECHNOLOGY  =    -2.72122522596129 + 
        P_CategoryINFORMATION_TECHNOLOGY ;
   P_CategoryHR  =    -3.10869512055645 + P_CategoryHR ;
   P_CategoryHEALTHCARE  =    -2.14255637751439 + P_CategoryHEALTHCARE ;
   P_CategoryFITNESS  =     -1.1832029437558 + P_CategoryFITNESS ;
   P_CategoryDIGITAL_MEDIA  =    -3.29207023870512 + P_CategoryDIGITAL_MEDIA ;
   P_CategoryDESIGNER  =    -3.38960098826957 + P_CategoryDESIGNER ;
   P_CategoryCONSULTANT  =    -1.13222605260585 + P_CategoryCONSULTANT ;
   P_CategoryBUSINESS_DEVELOPMENT  =    -2.33583760825342 + 
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
