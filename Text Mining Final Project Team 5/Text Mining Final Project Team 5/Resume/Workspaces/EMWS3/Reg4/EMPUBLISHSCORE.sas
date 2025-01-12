*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Category $ 22;
label I_Category = 'Into: Category' ;
*** Target Values;
array REG4DRF [12] $22 _temporary_ ('TEACHER' 'SALES' 'OTHER' 
'INFORMATION-TECHNOLOGY' 'HR' 'HEALTHCARE' 'FITNESS' 'DIGITAL-MEDIA' 
'DESIGNER' 'CONSULTANT' 'BUSINESS-DEVELOPMENT' 'ADVOCATE' );
label U_Category = 'Unnormalized Into: Category' ;
format U_Category $22.;
length U_Category $ 22;
*** Unnormalized target values;
array REG4DRU[12] $ 22 _temporary_ ('TEACHER               '  
'SALES                 '  'OTHER                 '  'INFORMATION-TECHNOLOGY'  
'HR                    '  'HEALTHCARE            '  'FITNESS               '  
'DIGITAL-MEDIA         '  'DESIGNER              '  'CONSULTANT            '  
'BUSINESS-DEVELOPMENT  '  'ADVOCATE              ' );

drop _DM_BAD;
_DM_BAD=0;

*** Check TextCluster7_SVD10 for missing values ;
if missing( TextCluster7_SVD10 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster7_SVD11 for missing values ;
if missing( TextCluster7_SVD11 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster7_SVD14 for missing values ;
if missing( TextCluster7_SVD14 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster7_SVD2 for missing values ;
if missing( TextCluster7_SVD2 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster7_SVD24 for missing values ;
if missing( TextCluster7_SVD24 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster7_SVD3 for missing values ;
if missing( TextCluster7_SVD3 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster7_SVD4 for missing values ;
if missing( TextCluster7_SVD4 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster7_SVD5 for missing values ;
if missing( TextCluster7_SVD5 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster7_SVD7 for missing values ;
if missing( TextCluster7_SVD7 ) then do;
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
   goto REG4DR1;
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

***  Effect: TextCluster7_SVD10 ;
_TEMP = TextCluster7_SVD10 ;
_LP0 = _LP0 + (   -2.83288502986903 * _TEMP);
_LP1 = _LP1 + (    6.96606689825053 * _TEMP);
_LP2 = _LP2 + (     5.9080693598478 * _TEMP);
_LP3 = _LP3 + (   -0.72272110339319 * _TEMP);
_LP4 = _LP4 + (    11.2534225610906 * _TEMP);
_LP5 = _LP5 + (   -8.39614226813852 * _TEMP);
_LP6 = _LP6 + (    9.18429169032084 * _TEMP);
_LP7 = _LP7 + (   -5.71699290873658 * _TEMP);
_LP8 = _LP8 + (    14.3396284961983 * _TEMP);
_LP9 = _LP9 + (   -0.27774231775491 * _TEMP);
_LP10 = _LP10 + (    2.47760865940157 * _TEMP);

***  Effect: TextCluster7_SVD11 ;
_TEMP = TextCluster7_SVD11 ;
_LP0 = _LP0 + (   -22.2797327831265 * _TEMP);
_LP1 = _LP1 + (   -1.37388889381922 * _TEMP);
_LP2 = _LP2 + (   -0.95081161224279 * _TEMP);
_LP3 = _LP3 + (   -6.64623565795664 * _TEMP);
_LP4 = _LP4 + (    6.74107424127736 * _TEMP);
_LP5 = _LP5 + (   -8.59417908291536 * _TEMP);
_LP6 = _LP6 + (    8.65073598397256 * _TEMP);
_LP7 = _LP7 + (   -7.69139195216056 * _TEMP);
_LP8 = _LP8 + (    -3.8410839076432 * _TEMP);
_LP9 = _LP9 + (   -0.60180393026812 * _TEMP);
_LP10 = _LP10 + (    0.14653312473017 * _TEMP);

***  Effect: TextCluster7_SVD14 ;
_TEMP = TextCluster7_SVD14 ;
_LP0 = _LP0 + (    13.0197929346303 * _TEMP);
_LP1 = _LP1 + (     6.1667685074073 * _TEMP);
_LP2 = _LP2 + (    2.82088387303015 * _TEMP);
_LP3 = _LP3 + (    5.55821937552656 * _TEMP);
_LP4 = _LP4 + (    1.29753132661254 * _TEMP);
_LP5 = _LP5 + (    3.14231016466097 * _TEMP);
_LP6 = _LP6 + (     9.3288773782865 * _TEMP);
_LP7 = _LP7 + (    2.11647596451525 * _TEMP);
_LP8 = _LP8 + (    2.49612537636479 * _TEMP);
_LP9 = _LP9 + (    10.0826277899127 * _TEMP);
_LP10 = _LP10 + (    7.88404302170316 * _TEMP);

***  Effect: TextCluster7_SVD2 ;
_TEMP = TextCluster7_SVD2 ;
_LP0 = _LP0 + (   -14.3382496431321 * _TEMP);
_LP1 = _LP1 + (    1.76893696462243 * _TEMP);
_LP2 = _LP2 + (    4.40649784115368 * _TEMP);
_LP3 = _LP3 + (    12.5628516172402 * _TEMP);
_LP4 = _LP4 + (   -4.06875389829397 * _TEMP);
_LP5 = _LP5 + (     3.6297992269664 * _TEMP);
_LP6 = _LP6 + (    -12.000765702544 * _TEMP);
_LP7 = _LP7 + (    7.40734959337784 * _TEMP);
_LP8 = _LP8 + (    7.89593710553552 * _TEMP);
_LP9 = _LP9 + (    7.85487989257911 * _TEMP);
_LP10 = _LP10 + (    2.28097444107609 * _TEMP);

***  Effect: TextCluster7_SVD24 ;
_TEMP = TextCluster7_SVD24 ;
_LP0 = _LP0 + (   -5.90556502028838 * _TEMP);
_LP1 = _LP1 + (    4.12108338608652 * _TEMP);
_LP2 = _LP2 + (   -7.94750820646271 * _TEMP);
_LP3 = _LP3 + (    7.77948799682905 * _TEMP);
_LP4 = _LP4 + (   -5.46406902326117 * _TEMP);
_LP5 = _LP5 + (    0.45902969410191 * _TEMP);
_LP6 = _LP6 + (    7.43434868919188 * _TEMP);
_LP7 = _LP7 + (   -5.08054232957876 * _TEMP);
_LP8 = _LP8 + (   -4.61389198067194 * _TEMP);
_LP9 = _LP9 + (   -0.41979255100025 * _TEMP);
_LP10 = _LP10 + (    2.27602958297037 * _TEMP);

***  Effect: TextCluster7_SVD3 ;
_TEMP = TextCluster7_SVD3 ;
_LP0 = _LP0 + (    7.56854576071901 * _TEMP);
_LP1 = _LP1 + (    5.30719398237818 * _TEMP);
_LP2 = _LP2 + (    2.89217074711821 * _TEMP);
_LP3 = _LP3 + (    1.27620189599757 * _TEMP);
_LP4 = _LP4 + (    2.31841742404124 * _TEMP);
_LP5 = _LP5 + (    2.85416528423646 * _TEMP);
_LP6 = _LP6 + (    5.62411307055149 * _TEMP);
_LP7 = _LP7 + (    6.99095243310051 * _TEMP);
_LP8 = _LP8 + (    7.00118607827405 * _TEMP);
_LP9 = _LP9 + (    3.47297776443226 * _TEMP);
_LP10 = _LP10 + (    9.39226831926884 * _TEMP);

***  Effect: TextCluster7_SVD4 ;
_TEMP = TextCluster7_SVD4 ;
_LP0 = _LP0 + (    11.1355701113087 * _TEMP);
_LP1 = _LP1 + (    4.95289808980868 * _TEMP);
_LP2 = _LP2 + (    0.99138268700357 * _TEMP);
_LP3 = _LP3 + (    1.17959574284266 * _TEMP);
_LP4 = _LP4 + (   -9.61299687844938 * _TEMP);
_LP5 = _LP5 + (    0.50443636771653 * _TEMP);
_LP6 = _LP6 + (    3.16688054831414 * _TEMP);
_LP7 = _LP7 + (    8.82252036629523 * _TEMP);
_LP8 = _LP8 + (    4.86731288883811 * _TEMP);
_LP9 = _LP9 + (    3.57280117495348 * _TEMP);
_LP10 = _LP10 + (    1.13857350338763 * _TEMP);

***  Effect: TextCluster7_SVD5 ;
_TEMP = TextCluster7_SVD5 ;
_LP0 = _LP0 + (   -5.36385118292321 * _TEMP);
_LP1 = _LP1 + (    11.6623914683065 * _TEMP);
_LP2 = _LP2 + (    2.54210503985199 * _TEMP);
_LP3 = _LP3 + (   -4.65192085164756 * _TEMP);
_LP4 = _LP4 + (   -3.72567469244997 * _TEMP);
_LP5 = _LP5 + (    3.09956946298066 * _TEMP);
_LP6 = _LP6 + (     4.5094652189602 * _TEMP);
_LP7 = _LP7 + (    2.89049144236532 * _TEMP);
_LP8 = _LP8 + (    1.43864961421354 * _TEMP);
_LP9 = _LP9 + (    2.76897771977289 * _TEMP);
_LP10 = _LP10 + (     5.9314237054016 * _TEMP);

***  Effect: TextCluster7_SVD7 ;
_TEMP = TextCluster7_SVD7 ;
_LP0 = _LP0 + (    13.7266298087009 * _TEMP);
_LP1 = _LP1 + (    5.58872791536941 * _TEMP);
_LP2 = _LP2 + (    0.39380195545519 * _TEMP);
_LP3 = _LP3 + (    4.27400659740237 * _TEMP);
_LP4 = _LP4 + (    9.35056707110948 * _TEMP);
_LP5 = _LP5 + (   -2.32841871112888 * _TEMP);
_LP6 = _LP6 + (   -1.32153655347595 * _TEMP);
_LP7 = _LP7 + (    13.2671455010133 * _TEMP);
_LP8 = _LP8 + (    16.9575095991443 * _TEMP);
_LP9 = _LP9 + (   -0.38551390327173 * _TEMP);
_LP10 = _LP10 + (    0.32266083605599 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _P10 _P11;
drop _LPMAX;
_LPMAX= 0;
_LP0 =    -4.90538909146773 + _LP0;
if _LPMAX < _LP0 then _LPMAX = _LP0;
_LP1 =    -1.09030300645923 + _LP1;
if _LPMAX < _LP1 then _LPMAX = _LP1;
_LP2 =     0.72365364630155 + _LP2;
if _LPMAX < _LP2 then _LPMAX = _LP2;
_LP3 =    -0.85410182666166 + _LP3;
if _LPMAX < _LP3 then _LPMAX = _LP3;
_LP4 =    -3.12712089292294 + _LP4;
if _LPMAX < _LP4 then _LPMAX = _LP4;
_LP5 =    -0.12188369326237 + _LP5;
if _LPMAX < _LP5 then _LPMAX = _LP5;
_LP6 =    -2.84932525958907 + _LP6;
if _LPMAX < _LP6 then _LPMAX = _LP6;
_LP7 =    -0.98513565171748 + _LP7;
if _LPMAX < _LP7 then _LPMAX = _LP7;
_LP8 =     -1.6422680594311 + _LP8;
if _LPMAX < _LP8 then _LPMAX = _LP8;
_LP9 =     0.59812222063913 + _LP9;
if _LPMAX < _LP9 then _LPMAX = _LP9;
_LP10 =    -0.15265393783162 + _LP10;
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

REG4DR1:


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
I_Category = REG4DRF[_IY];
U_Category = REG4DRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
