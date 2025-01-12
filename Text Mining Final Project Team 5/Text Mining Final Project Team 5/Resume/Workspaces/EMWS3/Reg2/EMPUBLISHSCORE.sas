*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Category $ 22;
label I_Category = 'Into: Category' ;
*** Target Values;
array REG2DRF [12] $22 _temporary_ ('TEACHER' 'SALES' 'OTHER' 
'INFORMATION-TECHNOLOGY' 'HR' 'HEALTHCARE' 'FITNESS' 'DIGITAL-MEDIA' 
'DESIGNER' 'CONSULTANT' 'BUSINESS-DEVELOPMENT' 'ADVOCATE' );
label U_Category = 'Unnormalized Into: Category' ;
format U_Category $22.;
length U_Category $ 22;
*** Unnormalized target values;
array REG2DRU[12] $ 22 _temporary_ ('TEACHER               '  
'SALES                 '  'OTHER                 '  'INFORMATION-TECHNOLOGY'  
'HR                    '  'HEALTHCARE            '  'FITNESS               '  
'DIGITAL-MEDIA         '  'DESIGNER              '  'CONSULTANT            '  
'BUSINESS-DEVELOPMENT  '  'ADVOCATE              ' );

drop _DM_BAD;
_DM_BAD=0;

*** Check TextCluster5_SVD10 for missing values ;
if missing( TextCluster5_SVD10 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster5_SVD12 for missing values ;
if missing( TextCluster5_SVD12 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster5_SVD15 for missing values ;
if missing( TextCluster5_SVD15 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster5_SVD2 for missing values ;
if missing( TextCluster5_SVD2 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster5_SVD25 for missing values ;
if missing( TextCluster5_SVD25 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster5_SVD3 for missing values ;
if missing( TextCluster5_SVD3 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster5_SVD4 for missing values ;
if missing( TextCluster5_SVD4 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster5_SVD5 for missing values ;
if missing( TextCluster5_SVD5 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster5_SVD6 for missing values ;
if missing( TextCluster5_SVD6 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster5_SVD7 for missing values ;
if missing( TextCluster5_SVD7 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _P0 = 0.0741839763;
   _P1 = 0.0860534125;
   _P2 = 0.0934718101;
   _P3 = 0.087537092;
   _P4 = 0.0816023739;
   _P5 = 0.0845697329;
   _P6 = 0.0860534125;
   _P7 = 0.0697329377;
   _P8 = 0.0786350148;
   _P9 = 0.0845697329;
   _P10 = 0.0890207715;
   _P11 = 0.0845697329;
   goto REG2DR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0  _LP1 _LP2 _LP3 _LP4 _LP5 _LP6 _LP7 _LP8 _LP9 _LP10;
_LP0 = 0;
_LP1 = 0;
_LP2 = 0;
_LP3 = 0;
_LP4 = 0;
_LP5 = 0;
_LP6 = 0;
_LP7 = 0;
_LP8 = 0;
_LP9 = 0;
_LP10 = 0;

***  Effect: TextCluster5_SVD10 ;
_TEMP = TextCluster5_SVD10 ;
_LP0 = _LP0 + (   -1.70425899469917 * _TEMP);
_LP1 = _LP1 + (    10.1132656839394 * _TEMP);
_LP2 = _LP2 + (    8.35833551177424 * _TEMP);
_LP3 = _LP3 + (    3.93010169201721 * _TEMP);
_LP4 = _LP4 + (    13.8845236463215 * _TEMP);
_LP5 = _LP5 + (   -8.60075571348244 * _TEMP);
_LP6 = _LP6 + (    10.1774343965392 * _TEMP);
_LP7 = _LP7 + (   -5.03328369548436 * _TEMP);
_LP8 = _LP8 + (    18.9101148274619 * _TEMP);
_LP9 = _LP9 + (    1.11692842108068 * _TEMP);
_LP10 = _LP10 + (     4.5572716247938 * _TEMP);

***  Effect: TextCluster5_SVD12 ;
_TEMP = TextCluster5_SVD12 ;
_LP0 = _LP0 + (    16.1047416878422 * _TEMP);
_LP1 = _LP1 + (    3.64601281329768 * _TEMP);
_LP2 = _LP2 + (    1.55723683379145 * _TEMP);
_LP3 = _LP3 + (    9.68730835849818 * _TEMP);
_LP4 = _LP4 + (    5.16833555210173 * _TEMP);
_LP5 = _LP5 + (    10.5985949125378 * _TEMP);
_LP6 = _LP6 + (   -9.92154101129905 * _TEMP);
_LP7 = _LP7 + (    11.1643789612698 * _TEMP);
_LP8 = _LP8 + (   -7.32435127964353 * _TEMP);
_LP9 = _LP9 + (    7.85294606045864 * _TEMP);
_LP10 = _LP10 + (    2.32646964493416 * _TEMP);

***  Effect: TextCluster5_SVD15 ;
_TEMP = TextCluster5_SVD15 ;
_LP0 = _LP0 + (   -10.9517036113894 * _TEMP);
_LP1 = _LP1 + (   -6.59026367443137 * _TEMP);
_LP2 = _LP2 + (   -1.22998724535558 * _TEMP);
_LP3 = _LP3 + (    0.07026454786121 * _TEMP);
_LP4 = _LP4 + (    5.29030160773689 * _TEMP);
_LP5 = _LP5 + (   -1.69088443678317 * _TEMP);
_LP6 = _LP6 + (   -8.24660790166649 * _TEMP);
_LP7 = _LP7 + (    2.51653818135795 * _TEMP);
_LP8 = _LP8 + (    0.32840819947174 * _TEMP);
_LP9 = _LP9 + (    -7.9570587420046 * _TEMP);
_LP10 = _LP10 + (    -9.7873423670912 * _TEMP);

***  Effect: TextCluster5_SVD2 ;
_TEMP = TextCluster5_SVD2 ;
_LP0 = _LP0 + (   -0.37861130287424 * _TEMP);
_LP1 = _LP1 + (    3.91838976982588 * _TEMP);
_LP2 = _LP2 + (       5.78533411122 * _TEMP);
_LP3 = _LP3 + (    15.0694513542625 * _TEMP);
_LP4 = _LP4 + (   -6.78762134246236 * _TEMP);
_LP5 = _LP5 + (    5.28957881810226 * _TEMP);
_LP6 = _LP6 + (   -8.81209120744732 * _TEMP);
_LP7 = _LP7 + (    10.1225906245206 * _TEMP);
_LP8 = _LP8 + (    6.44016945437565 * _TEMP);
_LP9 = _LP9 + (    10.0478334812951 * _TEMP);
_LP10 = _LP10 + (    4.84266915511971 * _TEMP);

***  Effect: TextCluster5_SVD25 ;
_TEMP = TextCluster5_SVD25 ;
_LP0 = _LP0 + (    6.05634157813091 * _TEMP);
_LP1 = _LP1 + (   -4.90295188227148 * _TEMP);
_LP2 = _LP2 + (    6.14926182670898 * _TEMP);
_LP3 = _LP3 + (   -9.61750760344294 * _TEMP);
_LP4 = _LP4 + (    2.94046067545837 * _TEMP);
_LP5 = _LP5 + (   -4.11639095112731 * _TEMP);
_LP6 = _LP6 + (   -5.17452526489741 * _TEMP);
_LP7 = _LP7 + (    6.45305332855458 * _TEMP);
_LP8 = _LP8 + (    4.23931391678378 * _TEMP);
_LP9 = _LP9 + (   -0.50719368955024 * _TEMP);
_LP10 = _LP10 + (   -5.06519553391745 * _TEMP);

***  Effect: TextCluster5_SVD3 ;
_TEMP = TextCluster5_SVD3 ;
_LP0 = _LP0 + (    2.23653031750899 * _TEMP);
_LP1 = _LP1 + (    5.28569279560224 * _TEMP);
_LP2 = _LP2 + (    3.74121169657458 * _TEMP);
_LP3 = _LP3 + (    0.98118414239431 * _TEMP);
_LP4 = _LP4 + (    2.16477819295465 * _TEMP);
_LP5 = _LP5 + (    3.71912183812205 * _TEMP);
_LP6 = _LP6 + (    3.45043811007475 * _TEMP);
_LP7 = _LP7 + (    8.42784863399021 * _TEMP);
_LP8 = _LP8 + (    7.52633642556581 * _TEMP);
_LP9 = _LP9 + (    4.51775838351169 * _TEMP);
_LP10 = _LP10 + (    9.51905227849337 * _TEMP);

***  Effect: TextCluster5_SVD4 ;
_TEMP = TextCluster5_SVD4 ;
_LP0 = _LP0 + (    8.65386025803896 * _TEMP);
_LP1 = _LP1 + (    5.10063034884668 * _TEMP);
_LP2 = _LP2 + (    1.91392117819161 * _TEMP);
_LP3 = _LP3 + (    -0.8596553952359 * _TEMP);
_LP4 = _LP4 + (   -10.0814543796867 * _TEMP);
_LP5 = _LP5 + (   -1.07359314910646 * _TEMP);
_LP6 = _LP6 + (    4.73175022018074 * _TEMP);
_LP7 = _LP7 + (    7.30422644949097 * _TEMP);
_LP8 = _LP8 + (     4.8734051812002 * _TEMP);
_LP9 = _LP9 + (     2.0890812481804 * _TEMP);
_LP10 = _LP10 + (    0.61405303577277 * _TEMP);

***  Effect: TextCluster5_SVD5 ;
_TEMP = TextCluster5_SVD5 ;
_LP0 = _LP0 + (   -5.25774455934326 * _TEMP);
_LP1 = _LP1 + (    13.0206185844048 * _TEMP);
_LP2 = _LP2 + (    4.22367481976331 * _TEMP);
_LP3 = _LP3 + (   -3.76791595716312 * _TEMP);
_LP4 = _LP4 + (   -2.84434064504947 * _TEMP);
_LP5 = _LP5 + (     4.5436127322541 * _TEMP);
_LP6 = _LP6 + (    3.73383993887277 * _TEMP);
_LP7 = _LP7 + (    3.58072273929466 * _TEMP);
_LP8 = _LP8 + (    4.24755421080292 * _TEMP);
_LP9 = _LP9 + (    4.46975873959029 * _TEMP);
_LP10 = _LP10 + (    6.95002897700499 * _TEMP);

***  Effect: TextCluster5_SVD6 ;
_TEMP = TextCluster5_SVD6 ;
_LP0 = _LP0 + (   -9.05153503140929 * _TEMP);
_LP1 = _LP1 + (   -6.85719760185141 * _TEMP);
_LP2 = _LP2 + (   -8.85461696822219 * _TEMP);
_LP3 = _LP3 + (   -9.12652829402747 * _TEMP);
_LP4 = _LP4 + (   -13.2627656814887 * _TEMP);
_LP5 = _LP5 + (   -2.94219764428321 * _TEMP);
_LP6 = _LP6 + (    4.15438608769792 * _TEMP);
_LP7 = _LP7 + (   -13.7210920215119 * _TEMP);
_LP8 = _LP8 + (   -21.3523549228261 * _TEMP);
_LP9 = _LP9 + (   -7.66975609887673 * _TEMP);
_LP10 = _LP10 + (   -4.08812516571003 * _TEMP);

***  Effect: TextCluster5_SVD7 ;
_TEMP = TextCluster5_SVD7 ;
_LP0 = _LP0 + (    12.4935074192467 * _TEMP);
_LP1 = _LP1 + (    6.09816408287605 * _TEMP);
_LP2 = _LP2 + (   -4.14947517476152 * _TEMP);
_LP3 = _LP3 + (    1.27418807342336 * _TEMP);
_LP4 = _LP4 + (    8.08258827526138 * _TEMP);
_LP5 = _LP5 + (    -5.1010052628967 * _TEMP);
_LP6 = _LP6 + (    1.53497440334622 * _TEMP);
_LP7 = _LP7 + (    9.86965275259067 * _TEMP);
_LP8 = _LP8 + (    3.90223717813244 * _TEMP);
_LP9 = _LP9 + (   -3.20287415432519 * _TEMP);
_LP10 = _LP10 + (   -0.14088468073355 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _P10 _P11;
drop _LPMAX;
_LPMAX= 0;
_LP0 =    -3.08348256036882 + _LP0;
if _LPMAX < _LP0 then _LPMAX = _LP0;
_LP1 =    -1.04175699073591 + _LP1;
if _LPMAX < _LP1 then _LPMAX = _LP1;
_LP2 =      0.6556330745086 + _LP2;
if _LPMAX < _LP2 then _LPMAX = _LP2;
_LP3 =     -0.9157696631979 + _LP3;
if _LPMAX < _LP3 then _LPMAX = _LP3;
_LP4 =    -3.34104593396166 + _LP4;
if _LPMAX < _LP4 then _LPMAX = _LP4;
_LP5 =    -0.12859149186644 + _LP5;
if _LPMAX < _LP5 then _LPMAX = _LP5;
_LP6 =    -2.23758138533228 + _LP6;
if _LPMAX < _LP6 then _LPMAX = _LP6;
_LP7 =     -1.0260614558635 + _LP7;
if _LPMAX < _LP7 then _LPMAX = _LP7;
_LP8 =    -2.11468873930281 + _LP8;
if _LPMAX < _LP8 then _LPMAX = _LP8;
_LP9 =     0.63471594097626 + _LP9;
if _LPMAX < _LP9 then _LPMAX = _LP9;
_LP10 =     0.03022614347354 + _LP10;
if _LPMAX < _LP10 then _LPMAX = _LP10;
_LP0 = exp(_LP0 - _LPMAX);
_LP1 = exp(_LP1 - _LPMAX);
_LP2 = exp(_LP2 - _LPMAX);
_LP3 = exp(_LP3 - _LPMAX);
_LP4 = exp(_LP4 - _LPMAX);
_LP5 = exp(_LP5 - _LPMAX);
_LP6 = exp(_LP6 - _LPMAX);
_LP7 = exp(_LP7 - _LPMAX);
_LP8 = exp(_LP8 - _LPMAX);
_LP9 = exp(_LP9 - _LPMAX);
_LP10 = exp(_LP10 - _LPMAX);
_LPMAX = exp(-_LPMAX);
_P11 = 1 / (_LPMAX + _LP0 + _LP1 + _LP2 + _LP3 + _LP4 + _LP5 + _LP6 + _LP7
         + _LP8 + _LP9 + _LP10);
_P0 = _LP0 * _P11;
_P1 = _LP1 * _P11;
_P2 = _LP2 * _P11;
_P3 = _LP3 * _P11;
_P4 = _LP4 * _P11;
_P5 = _LP5 * _P11;
_P6 = _LP6 * _P11;
_P7 = _LP7 * _P11;
_P8 = _LP8 * _P11;
_P9 = _LP9 * _P11;
_P10 = _LP10 * _P11;
_P11 = _LPMAX * _P11;

REG2DR1:


*** Posterior Probabilities and Predicted Level;
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
P_CategoryTEACHER = _P0;
_MAXP = _P0;
_IY = 1;
P_CategorySALES = _P1;
if (_P1 >  _MAXP + 1E-8) then do;
   _MAXP = _P1;
   _IY = 2;
end;
P_CategoryOTHER = _P2;
if (_P2 >  _MAXP + 1E-8) then do;
   _MAXP = _P2;
   _IY = 3;
end;
P_CategoryINFORMATION_TECHNOLOGY = _P3;
if (_P3 >  _MAXP + 1E-8) then do;
   _MAXP = _P3;
   _IY = 4;
end;
P_CategoryHR = _P4;
if (_P4 >  _MAXP + 1E-8) then do;
   _MAXP = _P4;
   _IY = 5;
end;
P_CategoryHEALTHCARE = _P5;
if (_P5 >  _MAXP + 1E-8) then do;
   _MAXP = _P5;
   _IY = 6;
end;
P_CategoryFITNESS = _P6;
if (_P6 >  _MAXP + 1E-8) then do;
   _MAXP = _P6;
   _IY = 7;
end;
P_CategoryDIGITAL_MEDIA = _P7;
if (_P7 >  _MAXP + 1E-8) then do;
   _MAXP = _P7;
   _IY = 8;
end;
P_CategoryDESIGNER = _P8;
if (_P8 >  _MAXP + 1E-8) then do;
   _MAXP = _P8;
   _IY = 9;
end;
P_CategoryCONSULTANT = _P9;
if (_P9 >  _MAXP + 1E-8) then do;
   _MAXP = _P9;
   _IY = 10;
end;
P_CategoryBUSINESS_DEVELOPMENT = _P10;
if (_P10 >  _MAXP + 1E-8) then do;
   _MAXP = _P10;
   _IY = 11;
end;
P_CategoryADVOCATE = _P11;
if (_P11 >  _MAXP + 1E-8) then do;
   _MAXP = _P11;
   _IY = 12;
end;
I_Category = REG2DRF[_IY];
U_Category = REG2DRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
