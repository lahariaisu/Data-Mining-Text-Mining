*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Category $ 22;
label I_Category = 'Into: Category' ;
*** Target Values;
array REG9DRF [12] $22 _temporary_ ('TEACHER' 'SALES' 'OTHER' 
'INFORMATION-TECHNOLOGY' 'HR' 'HEALTHCARE' 'FITNESS' 'DIGITAL-MEDIA' 
'DESIGNER' 'CONSULTANT' 'BUSINESS-DEVELOPMENT' 'ADVOCATE' );
label U_Category = 'Unnormalized Into: Category' ;
format U_Category $22.;
length U_Category $ 22;
*** Unnormalized target values;
array REG9DRU[12] $ 22 _temporary_ ('TEACHER               '  
'SALES                 '  'OTHER                 '  'INFORMATION-TECHNOLOGY'  
'HR                    '  'HEALTHCARE            '  'FITNESS               '  
'DIGITAL-MEDIA         '  'DESIGNER              '  'CONSULTANT            '  
'BUSINESS-DEVELOPMENT  '  'ADVOCATE              ' );

drop _DM_BAD;
_DM_BAD=0;

*** Check TextCluster9_SVD2 for missing values ;
if missing( TextCluster9_SVD2 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster9_SVD22 for missing values ;
if missing( TextCluster9_SVD22 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster9_SVD3 for missing values ;
if missing( TextCluster9_SVD3 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster9_SVD4 for missing values ;
if missing( TextCluster9_SVD4 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster9_SVD5 for missing values ;
if missing( TextCluster9_SVD5 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster9_SVD7 for missing values ;
if missing( TextCluster9_SVD7 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster9_SVD8 for missing values ;
if missing( TextCluster9_SVD8 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster9_SVD9 for missing values ;
if missing( TextCluster9_SVD9 ) then do;
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
   goto REG9DR1;
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

***  Effect: TextCluster9_SVD2 ;
_TEMP = TextCluster9_SVD2 ;
_LP0 = _LP0 + (   -3.97070431256574 * _TEMP);
_LP1 = _LP1 + (     3.7036406867859 * _TEMP);
_LP2 = _LP2 + (    2.29442090747863 * _TEMP);
_LP3 = _LP3 + (    8.25675557480584 * _TEMP);
_LP4 = _LP4 + (    -7.1491630358413 * _TEMP);
_LP5 = _LP5 + (    3.65443811392013 * _TEMP);
_LP6 = _LP6 + (    -5.3753532159071 * _TEMP);
_LP7 = _LP7 + (    5.72854351105562 * _TEMP);
_LP8 = _LP8 + (    6.19099160418531 * _TEMP);
_LP9 = _LP9 + (    6.73985666519732 * _TEMP);
_LP10 = _LP10 + (   -1.46528128936157 * _TEMP);

***  Effect: TextCluster9_SVD22 ;
_TEMP = TextCluster9_SVD22 ;
_LP0 = _LP0 + (    12.6314009526347 * _TEMP);
_LP1 = _LP1 + (    2.38550208446259 * _TEMP);
_LP2 = _LP2 + (    8.33263531153788 * _TEMP);
_LP3 = _LP3 + (   -4.38418664051991 * _TEMP);
_LP4 = _LP4 + (    0.13411067449779 * _TEMP);
_LP5 = _LP5 + (    6.02426696819409 * _TEMP);
_LP6 = _LP6 + (   -0.10119111348476 * _TEMP);
_LP7 = _LP7 + (    2.54942373694374 * _TEMP);
_LP8 = _LP8 + (    2.52826726748703 * _TEMP);
_LP9 = _LP9 + (    16.1990797474371 * _TEMP);
_LP10 = _LP10 + (   -0.28231352971785 * _TEMP);

***  Effect: TextCluster9_SVD3 ;
_TEMP = TextCluster9_SVD3 ;
_LP0 = _LP0 + (   -8.23969576980074 * _TEMP);
_LP1 = _LP1 + (   -3.25240956584136 * _TEMP);
_LP2 = _LP2 + (   -0.48044510871841 * _TEMP);
_LP3 = _LP3 + (    0.02923588111815 * _TEMP);
_LP4 = _LP4 + (    5.19375332821404 * _TEMP);
_LP5 = _LP5 + (     2.6450394674676 * _TEMP);
_LP6 = _LP6 + (   -0.52302971869914 * _TEMP);
_LP7 = _LP7 + (   -2.52330444030422 * _TEMP);
_LP8 = _LP8 + (   -3.15313225277894 * _TEMP);
_LP9 = _LP9 + (    3.23889200724307 * _TEMP);
_LP10 = _LP10 + (     1.9423955002688 * _TEMP);

***  Effect: TextCluster9_SVD4 ;
_TEMP = TextCluster9_SVD4 ;
_LP0 = _LP0 + (   -0.36594438768475 * _TEMP);
_LP1 = _LP1 + (    7.35793290681544 * _TEMP);
_LP2 = _LP2 + (    3.08777626348203 * _TEMP);
_LP3 = _LP3 + (   -1.85237854130509 * _TEMP);
_LP4 = _LP4 + (   -4.66473722858281 * _TEMP);
_LP5 = _LP5 + (    3.80557371884779 * _TEMP);
_LP6 = _LP6 + (    5.32107536712932 * _TEMP);
_LP7 = _LP7 + (    5.15974666843309 * _TEMP);
_LP8 = _LP8 + (    4.47742602233015 * _TEMP);
_LP9 = _LP9 + (    5.91240164473605 * _TEMP);
_LP10 = _LP10 + (    10.2382664899151 * _TEMP);

***  Effect: TextCluster9_SVD5 ;
_TEMP = TextCluster9_SVD5 ;
_LP0 = _LP0 + (    10.1834907989725 * _TEMP);
_LP1 = _LP1 + (    1.22200620139744 * _TEMP);
_LP2 = _LP2 + (    0.73774502900957 * _TEMP);
_LP3 = _LP3 + (    7.34033103838007 * _TEMP);
_LP4 = _LP4 + (    5.92134445871702 * _TEMP);
_LP5 = _LP5 + (    1.35907626572142 * _TEMP);
_LP6 = _LP6 + (   -1.70549291030178 * _TEMP);
_LP7 = _LP7 + (    10.3310190652847 * _TEMP);
_LP8 = _LP8 + (    16.7195262863808 * _TEMP);
_LP9 = _LP9 + (    1.05673154460004 * _TEMP);
_LP10 = _LP10 + (     2.1846648094344 * _TEMP);

***  Effect: TextCluster9_SVD7 ;
_TEMP = TextCluster9_SVD7 ;
_LP0 = _LP0 + (    -5.4496655099182 * _TEMP);
_LP1 = _LP1 + (   -9.26811950986579 * _TEMP);
_LP2 = _LP2 + (   -0.30059286861991 * _TEMP);
_LP3 = _LP3 + (    1.22396990796701 * _TEMP);
_LP4 = _LP4 + (   -5.11552568052819 * _TEMP);
_LP5 = _LP5 + (    4.02879869368398 * _TEMP);
_LP6 = _LP6 + (   -2.91263907009391 * _TEMP);
_LP7 = _LP7 + (    1.08167320551904 * _TEMP);
_LP8 = _LP8 + (   -15.3826806310192 * _TEMP);
_LP9 = _LP9 + (    2.72106157182556 * _TEMP);
_LP10 = _LP10 + (   -0.34073562276023 * _TEMP);

***  Effect: TextCluster9_SVD8 ;
_TEMP = TextCluster9_SVD8 ;
_LP0 = _LP0 + (   -18.6968553339082 * _TEMP);
_LP1 = _LP1 + (   -3.82635398084178 * _TEMP);
_LP2 = _LP2 + (   -1.38066093181785 * _TEMP);
_LP3 = _LP3 + (   -8.46496717580283 * _TEMP);
_LP4 = _LP4 + (    7.36530277655011 * _TEMP);
_LP5 = _LP5 + (   -13.4087304331395 * _TEMP);
_LP6 = _LP6 + (    10.1287718406201 * _TEMP);
_LP7 = _LP7 + (   -8.73839084076386 * _TEMP);
_LP8 = _LP8 + (    8.19151362733475 * _TEMP);
_LP9 = _LP9 + (   -4.93760206647973 * _TEMP);
_LP10 = _LP10 + (   -2.38734714822273 * _TEMP);

***  Effect: TextCluster9_SVD9 ;
_TEMP = TextCluster9_SVD9 ;
_LP0 = _LP0 + (   -0.00115729155334 * _TEMP);
_LP1 = _LP1 + (   -4.68312574399967 * _TEMP);
_LP2 = _LP2 + (   -6.03997121484456 * _TEMP);
_LP3 = _LP3 + (   -1.70700387020847 * _TEMP);
_LP4 = _LP4 + (    2.88921921470689 * _TEMP);
_LP5 = _LP5 + (     3.2287027710848 * _TEMP);
_LP6 = _LP6 + (   -3.61783852230449 * _TEMP);
_LP7 = _LP7 + (    4.39754718158641 * _TEMP);
_LP8 = _LP8 + (   -12.3615778411817 * _TEMP);
_LP9 = _LP9 + (   -1.72841907132893 * _TEMP);
_LP10 = _LP10 + (   -8.89799750352293 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _P10 _P11;
drop _LPMAX;
_LPMAX= 0;
_LP0 =    -4.89605963028977 + _LP0;
if _LPMAX < _LP0 then _LPMAX = _LP0;
_LP1 =    -2.07755408989195 + _LP1;
if _LPMAX < _LP1 then _LPMAX = _LP1;
_LP2 =     0.22620922529945 + _LP2;
if _LPMAX < _LP2 then _LPMAX = _LP2;
_LP3 =    -0.92638758094282 + _LP3;
if _LPMAX < _LP3 then _LPMAX = _LP3;
_LP4 =    -4.06004781606761 + _LP4;
if _LPMAX < _LP4 then _LPMAX = _LP4;
_LP5 =    -1.01052313801076 + _LP5;
if _LPMAX < _LP5 then _LPMAX = _LP5;
_LP6 =    -2.49543926284715 + _LP6;
if _LPMAX < _LP6 then _LPMAX = _LP6;
_LP7 =    -1.23343424873908 + _LP7;
if _LPMAX < _LP7 then _LPMAX = _LP7;
_LP8 =    -2.73347973686326 + _LP8;
if _LPMAX < _LP8 then _LPMAX = _LP8;
_LP9 =    -0.85550717622197 + _LP9;
if _LPMAX < _LP9 then _LPMAX = _LP9;
_LP10 =    -1.59450565922607 + _LP10;
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

REG9DR1:


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
I_Category = REG9DRF[_IY];
U_Category = REG9DRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
