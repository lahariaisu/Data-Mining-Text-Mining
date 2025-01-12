*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Category $ 22;
label I_Category = 'Into: Category' ;
*** Target Values;
array REGDRF [12] $22 _temporary_ ('TEACHER' 'SALES' 'OTHER' 
'INFORMATION-TECHNOLOGY' 'HR' 'HEALTHCARE' 'FITNESS' 'DIGITAL-MEDIA' 
'DESIGNER' 'CONSULTANT' 'BUSINESS-DEVELOPMENT' 'ADVOCATE' );
label U_Category = 'Unnormalized Into: Category' ;
format U_Category $22.;
length U_Category $ 22;
*** Unnormalized target values;
array REGDRU[12] $ 22 _temporary_ ('TEACHER               '  
'SALES                 '  'OTHER                 '  'INFORMATION-TECHNOLOGY'  
'HR                    '  'HEALTHCARE            '  'FITNESS               '  
'DIGITAL-MEDIA         '  'DESIGNER              '  'CONSULTANT            '  
'BUSINESS-DEVELOPMENT  '  'ADVOCATE              ' );

drop _DM_BAD;
_DM_BAD=0;

*** Check TextCluster4_SVD10 for missing values ;
if missing( TextCluster4_SVD10 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster4_SVD12 for missing values ;
if missing( TextCluster4_SVD12 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster4_SVD15 for missing values ;
if missing( TextCluster4_SVD15 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster4_SVD2 for missing values ;
if missing( TextCluster4_SVD2 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster4_SVD25 for missing values ;
if missing( TextCluster4_SVD25 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster4_SVD3 for missing values ;
if missing( TextCluster4_SVD3 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster4_SVD4 for missing values ;
if missing( TextCluster4_SVD4 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster4_SVD5 for missing values ;
if missing( TextCluster4_SVD5 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster4_SVD6 for missing values ;
if missing( TextCluster4_SVD6 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster4_SVD7 for missing values ;
if missing( TextCluster4_SVD7 ) then do;
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
   goto REGDR1;
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

***  Effect: TextCluster4_SVD10 ;
_TEMP = TextCluster4_SVD10 ;
_LP0 = _LP0 + (   -1.92562198558663 * _TEMP);
_LP1 = _LP1 + (    8.97521814719127 * _TEMP);
_LP2 = _LP2 + (    7.49644454334019 * _TEMP);
_LP3 = _LP3 + (     3.6389340792321 * _TEMP);
_LP4 = _LP4 + (    12.4411579120836 * _TEMP);
_LP5 = _LP5 + (   -8.17726425354098 * _TEMP);
_LP6 = _LP6 + (    9.11753114099816 * _TEMP);
_LP7 = _LP7 + (   -4.77046769826488 * _TEMP);
_LP8 = _LP8 + (    17.4193983985149 * _TEMP);
_LP9 = _LP9 + (    0.73414153062623 * _TEMP);
_LP10 = _LP10 + (    3.92372621573055 * _TEMP);

***  Effect: TextCluster4_SVD12 ;
_TEMP = TextCluster4_SVD12 ;
_LP0 = _LP0 + (    15.0041212093609 * _TEMP);
_LP1 = _LP1 + (    3.39419394864449 * _TEMP);
_LP2 = _LP2 + (    1.10542342318784 * _TEMP);
_LP3 = _LP3 + (    9.02052770405401 * _TEMP);
_LP4 = _LP4 + (    3.70634889096551 * _TEMP);
_LP5 = _LP5 + (    9.63073977852952 * _TEMP);
_LP6 = _LP6 + (   -9.22080520433038 * _TEMP);
_LP7 = _LP7 + (    10.0856231847079 * _TEMP);
_LP8 = _LP8 + (   -7.34273172329543 * _TEMP);
_LP9 = _LP9 + (    6.83325798780376 * _TEMP);
_LP10 = _LP10 + (    1.85792808883165 * _TEMP);

***  Effect: TextCluster4_SVD15 ;
_TEMP = TextCluster4_SVD15 ;
_LP0 = _LP0 + (   -10.4731071517013 * _TEMP);
_LP1 = _LP1 + (   -6.07051725007959 * _TEMP);
_LP2 = _LP2 + (   -1.26674023928732 * _TEMP);
_LP3 = _LP3 + (   -0.22419949796261 * _TEMP);
_LP4 = _LP4 + (    4.38963925702369 * _TEMP);
_LP5 = _LP5 + (   -1.76338637125769 * _TEMP);
_LP6 = _LP6 + (   -7.67055433886132 * _TEMP);
_LP7 = _LP7 + (    2.06134587656442 * _TEMP);
_LP8 = _LP8 + (    0.20137783034283 * _TEMP);
_LP9 = _LP9 + (   -7.25703248128538 * _TEMP);
_LP10 = _LP10 + (   -9.10478959614494 * _TEMP);

***  Effect: TextCluster4_SVD2 ;
_TEMP = TextCluster4_SVD2 ;
_LP0 = _LP0 + (   -0.55409243572511 * _TEMP);
_LP1 = _LP1 + (    3.43498984254633 * _TEMP);
_LP2 = _LP2 + (    5.10053847189959 * _TEMP);
_LP3 = _LP3 + (    13.5671044870588 * _TEMP);
_LP4 = _LP4 + (   -6.69420902379966 * _TEMP);
_LP5 = _LP5 + (    4.72551469195341 * _TEMP);
_LP6 = _LP6 + (   -8.08130230261724 * _TEMP);
_LP7 = _LP7 + (     8.9446209494606 * _TEMP);
_LP8 = _LP8 + (    5.41704113354884 * _TEMP);
_LP9 = _LP9 + (    8.89048817976953 * _TEMP);
_LP10 = _LP10 + (    4.25492487593984 * _TEMP);

***  Effect: TextCluster4_SVD25 ;
_TEMP = TextCluster4_SVD25 ;
_LP0 = _LP0 + (    5.94266203154461 * _TEMP);
_LP1 = _LP1 + (   -4.35474631549225 * _TEMP);
_LP2 = _LP2 + (    5.46720382234745 * _TEMP);
_LP3 = _LP3 + (   -8.45859584815606 * _TEMP);
_LP4 = _LP4 + (    1.97443530126241 * _TEMP);
_LP5 = _LP5 + (   -3.67587459690037 * _TEMP);
_LP6 = _LP6 + (   -4.63756473412461 * _TEMP);
_LP7 = _LP7 + (    5.98936638796458 * _TEMP);
_LP8 = _LP8 + (    3.79851896154803 * _TEMP);
_LP9 = _LP9 + (   -0.37575017083235 * _TEMP);
_LP10 = _LP10 + (   -4.90140002738863 * _TEMP);

***  Effect: TextCluster4_SVD3 ;
_TEMP = TextCluster4_SVD3 ;
_LP0 = _LP0 + (    1.85135751769838 * _TEMP);
_LP1 = _LP1 + (    4.77541865861808 * _TEMP);
_LP2 = _LP2 + (    3.57702660411811 * _TEMP);
_LP3 = _LP3 + (     0.7752213431268 * _TEMP);
_LP4 = _LP4 + (     2.0071025959854 * _TEMP);
_LP5 = _LP5 + (    3.33576228103342 * _TEMP);
_LP6 = _LP6 + (    3.17728761503727 * _TEMP);
_LP7 = _LP7 + (    7.62056160424414 * _TEMP);
_LP8 = _LP8 + (    7.17386270064329 * _TEMP);
_LP9 = _LP9 + (    4.20313054149228 * _TEMP);
_LP10 = _LP10 + (    8.70143159795217 * _TEMP);

***  Effect: TextCluster4_SVD4 ;
_TEMP = TextCluster4_SVD4 ;
_LP0 = _LP0 + (    7.90724860493611 * _TEMP);
_LP1 = _LP1 + (    4.56367126684997 * _TEMP);
_LP2 = _LP2 + (    1.64927275162492 * _TEMP);
_LP3 = _LP3 + (   -0.80211276564358 * _TEMP);
_LP4 = _LP4 + (   -9.13646261665733 * _TEMP);
_LP5 = _LP5 + (   -0.93254374816865 * _TEMP);
_LP6 = _LP6 + (      4.265151803013 * _TEMP);
_LP7 = _LP7 + (    6.77392096491577 * _TEMP);
_LP8 = _LP8 + (    4.63964282465482 * _TEMP);
_LP9 = _LP9 + (    1.96436771995918 * _TEMP);
_LP10 = _LP10 + (     0.7313911031882 * _TEMP);

***  Effect: TextCluster4_SVD5 ;
_TEMP = TextCluster4_SVD5 ;
_LP0 = _LP0 + (   -5.03092313521495 * _TEMP);
_LP1 = _LP1 + (    11.7430796483218 * _TEMP);
_LP2 = _LP2 + (    3.82836901398878 * _TEMP);
_LP3 = _LP3 + (   -3.55256080548348 * _TEMP);
_LP4 = _LP4 + (   -2.75202542212529 * _TEMP);
_LP5 = _LP5 + (    4.11641170029323 * _TEMP);
_LP6 = _LP6 + (    3.50769371587802 * _TEMP);
_LP7 = _LP7 + (    3.25196449065228 * _TEMP);
_LP8 = _LP8 + (    4.29121429601716 * _TEMP);
_LP9 = _LP9 + (    3.81340678987525 * _TEMP);
_LP10 = _LP10 + (    6.16707068962271 * _TEMP);

***  Effect: TextCluster4_SVD6 ;
_TEMP = TextCluster4_SVD6 ;
_LP0 = _LP0 + (   -8.14428833655983 * _TEMP);
_LP1 = _LP1 + (   -6.15844206278228 * _TEMP);
_LP2 = _LP2 + (   -8.12510969457371 * _TEMP);
_LP3 = _LP3 + (   -8.13646022988068 * _TEMP);
_LP4 = _LP4 + (   -11.7828426425361 * _TEMP);
_LP5 = _LP5 + (   -2.55629620272486 * _TEMP);
_LP6 = _LP6 + (    3.91733070026965 * _TEMP);
_LP7 = _LP7 + (   -12.4606601187947 * _TEMP);
_LP8 = _LP8 + (   -19.8470859163558 * _TEMP);
_LP9 = _LP9 + (   -6.78127919477234 * _TEMP);
_LP10 = _LP10 + (   -3.53957400307321 * _TEMP);

***  Effect: TextCluster4_SVD7 ;
_TEMP = TextCluster4_SVD7 ;
_LP0 = _LP0 + (    11.6662398247234 * _TEMP);
_LP1 = _LP1 + (     5.6600819183554 * _TEMP);
_LP2 = _LP2 + (   -3.81400404140423 * _TEMP);
_LP3 = _LP3 + (    1.04935687430995 * _TEMP);
_LP4 = _LP4 + (    6.98588656484927 * _TEMP);
_LP5 = _LP5 + (   -4.66353294329309 * _TEMP);
_LP6 = _LP6 + (      1.207093270564 * _TEMP);
_LP7 = _LP7 + (    9.01976729967213 * _TEMP);
_LP8 = _LP8 + (    3.40274915942426 * _TEMP);
_LP9 = _LP9 + (    -2.9291284595325 * _TEMP);
_LP10 = _LP10 + (   -0.05573429536443 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _P10 _P11;
drop _LPMAX;
_LPMAX= 0;
_LP0 =    -3.24933944323321 + _LP0;
if _LPMAX < _LP0 then _LPMAX = _LP0;
_LP1 =    -1.04464640549211 + _LP1;
if _LPMAX < _LP1 then _LPMAX = _LP1;
_LP2 =     0.61841034878818 + _LP2;
if _LPMAX < _LP2 then _LPMAX = _LP2;
_LP3 =    -0.97755902951243 + _LP3;
if _LPMAX < _LP3 then _LPMAX = _LP3;
_LP4 =    -3.35780892831446 + _LP4;
if _LPMAX < _LP4 then _LPMAX = _LP4;
_LP5 =    -0.15651718057256 + _LP5;
if _LPMAX < _LP5 then _LPMAX = _LP5;
_LP6 =    -2.28263770464265 + _LP6;
if _LPMAX < _LP6 then _LPMAX = _LP6;
_LP7 =    -1.07099400325231 + _LP7;
if _LPMAX < _LP7 then _LPMAX = _LP7;
_LP8 =    -2.31880374963772 + _LP8;
if _LPMAX < _LP8 then _LPMAX = _LP8;
_LP9 =     0.63131937545568 + _LP9;
if _LPMAX < _LP9 then _LPMAX = _LP9;
_LP10 =     0.00039363060752 + _LP10;
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

REGDR1:


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
I_Category = REGDRF[_IY];
U_Category = REGDRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
