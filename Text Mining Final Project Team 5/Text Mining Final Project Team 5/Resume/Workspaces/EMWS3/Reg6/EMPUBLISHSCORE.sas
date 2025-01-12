*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Category $ 22;
label I_Category = 'Into: Category' ;
*** Target Values;
array REG6DRF [12] $22 _temporary_ ('TEACHER' 'SALES' 'OTHER' 
'INFORMATION-TECHNOLOGY' 'HR' 'HEALTHCARE' 'FITNESS' 'DIGITAL-MEDIA' 
'DESIGNER' 'CONSULTANT' 'BUSINESS-DEVELOPMENT' 'ADVOCATE' );
label U_Category = 'Unnormalized Into: Category' ;
format U_Category $22.;
length U_Category $ 22;
*** Unnormalized target values;
array REG6DRU[12] $ 22 _temporary_ ('TEACHER               '  
'SALES                 '  'OTHER                 '  'INFORMATION-TECHNOLOGY'  
'HR                    '  'HEALTHCARE            '  'FITNESS               '  
'DIGITAL-MEDIA         '  'DESIGNER              '  'CONSULTANT            '  
'BUSINESS-DEVELOPMENT  '  'ADVOCATE              ' );

drop _DM_BAD;
_DM_BAD=0;

*** Check TextCluster6_SVD10 for missing values ;
if missing( TextCluster6_SVD10 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster6_SVD11 for missing values ;
if missing( TextCluster6_SVD11 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster6_SVD14 for missing values ;
if missing( TextCluster6_SVD14 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster6_SVD2 for missing values ;
if missing( TextCluster6_SVD2 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster6_SVD24 for missing values ;
if missing( TextCluster6_SVD24 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster6_SVD3 for missing values ;
if missing( TextCluster6_SVD3 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster6_SVD4 for missing values ;
if missing( TextCluster6_SVD4 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster6_SVD5 for missing values ;
if missing( TextCluster6_SVD5 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster6_SVD7 for missing values ;
if missing( TextCluster6_SVD7 ) then do;
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
   goto REG6DR1;
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

***  Effect: TextCluster6_SVD10 ;
_TEMP = TextCluster6_SVD10 ;
_LP0 = _LP0 + (   -3.15288164987417 * _TEMP);
_LP1 = _LP1 + (     6.2464286400432 * _TEMP);
_LP2 = _LP2 + (    5.41891151764689 * _TEMP);
_LP3 = _LP3 + (   -0.48190477653011 * _TEMP);
_LP4 = _LP4 + (     10.627843706314 * _TEMP);
_LP5 = _LP5 + (   -7.82572434107538 * _TEMP);
_LP6 = _LP6 + (    8.26650037195583 * _TEMP);
_LP7 = _LP7 + (   -5.05487691032196 * _TEMP);
_LP8 = _LP8 + (    13.1574157141517 * _TEMP);
_LP9 = _LP9 + (   -0.12816494672018 * _TEMP);
_LP10 = _LP10 + (    2.27858879944187 * _TEMP);

***  Effect: TextCluster6_SVD11 ;
_TEMP = TextCluster6_SVD11 ;
_LP0 = _LP0 + (   -20.2054748390676 * _TEMP);
_LP1 = _LP1 + (   -1.40802039853491 * _TEMP);
_LP2 = _LP2 + (   -1.15284427427902 * _TEMP);
_LP3 = _LP3 + (    -6.4282820762665 * _TEMP);
_LP4 = _LP4 + (     6.0828831674703 * _TEMP);
_LP5 = _LP5 + (   -7.81313826297202 * _TEMP);
_LP6 = _LP6 + (    7.94621692702998 * _TEMP);
_LP7 = _LP7 + (   -7.05399612360725 * _TEMP);
_LP8 = _LP8 + (   -3.54507697372618 * _TEMP);
_LP9 = _LP9 + (    -0.8463621919723 * _TEMP);
_LP10 = _LP10 + (   -0.01321634750603 * _TEMP);

***  Effect: TextCluster6_SVD14 ;
_TEMP = TextCluster6_SVD14 ;
_LP0 = _LP0 + (    11.7909586832438 * _TEMP);
_LP1 = _LP1 + (    5.41917003146718 * _TEMP);
_LP2 = _LP2 + (    2.37430974927625 * _TEMP);
_LP3 = _LP3 + (    5.25729377520619 * _TEMP);
_LP4 = _LP4 + (     1.0252127531997 * _TEMP);
_LP5 = _LP5 + (    2.75726135258941 * _TEMP);
_LP6 = _LP6 + (    8.38481500038597 * _TEMP);
_LP7 = _LP7 + (    2.12814716633597 * _TEMP);
_LP8 = _LP8 + (    2.18458618319615 * _TEMP);
_LP9 = _LP9 + (    8.91646088227079 * _TEMP);
_LP10 = _LP10 + (    6.91423972133323 * _TEMP);

***  Effect: TextCluster6_SVD2 ;
_TEMP = TextCluster6_SVD2 ;
_LP0 = _LP0 + (   -13.4032439454364 * _TEMP);
_LP1 = _LP1 + (    1.57540653061373 * _TEMP);
_LP2 = _LP2 + (    3.89827609902169 * _TEMP);
_LP3 = _LP3 + (    11.3859701007486 * _TEMP);
_LP4 = _LP4 + (   -5.20695203035401 * _TEMP);
_LP5 = _LP5 + (    3.24245359916426 * _TEMP);
_LP6 = _LP6 + (   -10.7080448087161 * _TEMP);
_LP7 = _LP7 + (    6.48103592263634 * _TEMP);
_LP8 = _LP8 + (    7.13254450342713 * _TEMP);
_LP9 = _LP9 + (     6.9698107139104 * _TEMP);
_LP10 = _LP10 + (    1.91367892531209 * _TEMP);

***  Effect: TextCluster6_SVD24 ;
_TEMP = TextCluster6_SVD24 ;
_LP0 = _LP0 + (   -6.39686390149851 * _TEMP);
_LP1 = _LP1 + (    3.71474819850159 * _TEMP);
_LP2 = _LP2 + (   -7.19256387897423 * _TEMP);
_LP3 = _LP3 + (    6.81752938292866 * _TEMP);
_LP4 = _LP4 + (   -3.77291331104376 * _TEMP);
_LP5 = _LP5 + (    0.54890590207835 * _TEMP);
_LP6 = _LP6 + (    6.87587835207906 * _TEMP);
_LP7 = _LP7 + (   -4.19117974873319 * _TEMP);
_LP8 = _LP8 + (   -3.84750382891526 * _TEMP);
_LP9 = _LP9 + (   -0.39561984955212 * _TEMP);
_LP10 = _LP10 + (    2.25865363848882 * _TEMP);

***  Effect: TextCluster6_SVD3 ;
_TEMP = TextCluster6_SVD3 ;
_LP0 = _LP0 + (    6.71415490688003 * _TEMP);
_LP1 = _LP1 + (    4.77631457675727 * _TEMP);
_LP2 = _LP2 + (    2.70588982386837 * _TEMP);
_LP3 = _LP3 + (    0.99741913227482 * _TEMP);
_LP4 = _LP4 + (    1.85165484556041 * _TEMP);
_LP5 = _LP5 + (     2.5052202882517 * _TEMP);
_LP6 = _LP6 + (    5.14326104391184 * _TEMP);
_LP7 = _LP7 + (    6.36201146433873 * _TEMP);
_LP8 = _LP8 + (    6.38329367514204 * _TEMP);
_LP9 = _LP9 + (    3.17040064974571 * _TEMP);
_LP10 = _LP10 + (    8.52318280818672 * _TEMP);

***  Effect: TextCluster6_SVD4 ;
_TEMP = TextCluster6_SVD4 ;
_LP0 = _LP0 + (    10.2140486876128 * _TEMP);
_LP1 = _LP1 + (    4.57497974556998 * _TEMP);
_LP2 = _LP2 + (    0.84695259257832 * _TEMP);
_LP3 = _LP3 + (    1.21244574614036 * _TEMP);
_LP4 = _LP4 + (   -9.15568401239841 * _TEMP);
_LP5 = _LP5 + (    0.43989551529582 * _TEMP);
_LP6 = _LP6 + (    2.77608065215035 * _TEMP);
_LP7 = _LP7 + (    8.03537971639999 * _TEMP);
_LP8 = _LP8 + (    4.58466125306915 * _TEMP);
_LP9 = _LP9 + (    3.28566064180473 * _TEMP);
_LP10 = _LP10 + (    1.13341421978851 * _TEMP);

***  Effect: TextCluster6_SVD5 ;
_TEMP = TextCluster6_SVD5 ;
_LP0 = _LP0 + (   -4.75320797595689 * _TEMP);
_LP1 = _LP1 + (    10.5553342834562 * _TEMP);
_LP2 = _LP2 + (    2.27843472941622 * _TEMP);
_LP3 = _LP3 + (   -4.55699402806639 * _TEMP);
_LP4 = _LP4 + (   -3.43253221541463 * _TEMP);
_LP5 = _LP5 + (    2.73019993820176 * _TEMP);
_LP6 = _LP6 + (    4.16910828517594 * _TEMP);
_LP7 = _LP7 + (    2.67558466615309 * _TEMP);
_LP8 = _LP8 + (    1.46417105006092 * _TEMP);
_LP9 = _LP9 + (    2.46553934936971 * _TEMP);
_LP10 = _LP10 + (    5.34062422165285 * _TEMP);

***  Effect: TextCluster6_SVD7 ;
_TEMP = TextCluster6_SVD7 ;
_LP0 = _LP0 + (    12.1577034746256 * _TEMP);
_LP1 = _LP1 + (    5.14039668263191 * _TEMP);
_LP2 = _LP2 + (     0.3915488328876 * _TEMP);
_LP3 = _LP3 + (    4.05598257480812 * _TEMP);
_LP4 = _LP4 + (    8.29715540969567 * _TEMP);
_LP5 = _LP5 + (   -2.13025594239674 * _TEMP);
_LP6 = _LP6 + (   -1.30073063597875 * _TEMP);
_LP7 = _LP7 + (    12.2134411901702 * _TEMP);
_LP8 = _LP8 + (    15.7118670375141 * _TEMP);
_LP9 = _LP9 + (   -0.12030326849084 * _TEMP);
_LP10 = _LP10 + (    0.42320900091094 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _P10 _P11;
drop _LPMAX;
_LPMAX= 0;
_LP0 =    -5.01239054684387 + _LP0;
if _LPMAX < _LP0 then _LPMAX = _LP0;
_LP1 =    -1.09100744026184 + _LP1;
if _LPMAX < _LP1 then _LPMAX = _LP1;
_LP2 =     0.69769120383375 + _LP2;
if _LPMAX < _LP2 then _LPMAX = _LP2;
_LP3 =    -0.92863823716527 + _LP3;
if _LPMAX < _LP3 then _LPMAX = _LP3;
_LP4 =    -3.49385326989381 + _LP4;
if _LPMAX < _LP4 then _LPMAX = _LP4;
_LP5 =    -0.16095650136989 + _LP5;
if _LPMAX < _LP5 then _LPMAX = _LP5;
_LP6 =    -2.82069630159163 + _LP6;
if _LPMAX < _LP6 then _LPMAX = _LP6;
_LP7 =    -1.01528381925635 + _LP7;
if _LPMAX < _LP7 then _LPMAX = _LP7;
_LP8 =    -1.74643294079294 + _LP8;
if _LPMAX < _LP8 then _LPMAX = _LP8;
_LP9 =     0.59870080396568 + _LP9;
if _LPMAX < _LP9 then _LPMAX = _LP9;
_LP10 =    -0.16476252083837 + _LP10;
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

REG6DR1:


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
I_Category = REG6DRF[_IY];
U_Category = REG6DRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
