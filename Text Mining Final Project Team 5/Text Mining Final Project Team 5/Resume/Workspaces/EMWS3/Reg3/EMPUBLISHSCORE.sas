*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Category $ 22;
label I_Category = 'Into: Category' ;
*** Target Values;
array REG3DRF [12] $22 _temporary_ ('TEACHER' 'SALES' 'OTHER' 
'INFORMATION-TECHNOLOGY' 'HR' 'HEALTHCARE' 'FITNESS' 'DIGITAL-MEDIA' 
'DESIGNER' 'CONSULTANT' 'BUSINESS-DEVELOPMENT' 'ADVOCATE' );
label U_Category = 'Unnormalized Into: Category' ;
format U_Category $22.;
length U_Category $ 22;
*** Unnormalized target values;
array REG3DRU[12] $ 22 _temporary_ ('TEACHER               '  
'SALES                 '  'OTHER                 '  'INFORMATION-TECHNOLOGY'  
'HR                    '  'HEALTHCARE            '  'FITNESS               '  
'DIGITAL-MEDIA         '  'DESIGNER              '  'CONSULTANT            '  
'BUSINESS-DEVELOPMENT  '  'ADVOCATE              ' );

drop _DM_BAD;
_DM_BAD=0;

*** Check TextCluster10_SVD10 for missing values ;
if missing( TextCluster10_SVD10 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster10_SVD12 for missing values ;
if missing( TextCluster10_SVD12 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster10_SVD15 for missing values ;
if missing( TextCluster10_SVD15 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster10_SVD2 for missing values ;
if missing( TextCluster10_SVD2 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster10_SVD25 for missing values ;
if missing( TextCluster10_SVD25 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster10_SVD3 for missing values ;
if missing( TextCluster10_SVD3 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster10_SVD4 for missing values ;
if missing( TextCluster10_SVD4 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster10_SVD5 for missing values ;
if missing( TextCluster10_SVD5 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster10_SVD6 for missing values ;
if missing( TextCluster10_SVD6 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster10_SVD7 for missing values ;
if missing( TextCluster10_SVD7 ) then do;
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
   goto REG3DR1;
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

***  Effect: TextCluster10_SVD10 ;
_TEMP = TextCluster10_SVD10 ;
_LP0 = _LP0 + (    -2.2192488782683 * _TEMP);
_LP1 = _LP1 + (     8.0321471175688 * _TEMP);
_LP2 = _LP2 + (    6.76003697162767 * _TEMP);
_LP3 = _LP3 + (    3.27016412210152 * _TEMP);
_LP4 = _LP4 + (    12.3674588370135 * _TEMP);
_LP5 = _LP5 + (   -7.65514275875956 * _TEMP);
_LP6 = _LP6 + (    7.99690407316075 * _TEMP);
_LP7 = _LP7 + (   -4.39599568459486 * _TEMP);
_LP8 = _LP8 + (    15.9996850648652 * _TEMP);
_LP9 = _LP9 + (    0.60136023443232 * _TEMP);
_LP10 = _LP10 + (    3.47210086815724 * _TEMP);

***  Effect: TextCluster10_SVD12 ;
_TEMP = TextCluster10_SVD12 ;
_LP0 = _LP0 + (    13.2808842540001 * _TEMP);
_LP1 = _LP1 + (    2.84345757302074 * _TEMP);
_LP2 = _LP2 + (    0.61240734730789 * _TEMP);
_LP3 = _LP3 + (    8.17282884337739 * _TEMP);
_LP4 = _LP4 + (     2.4582273827264 * _TEMP);
_LP5 = _LP5 + (    8.62228098631465 * _TEMP);
_LP6 = _LP6 + (    -8.7351362587013 * _TEMP);
_LP7 = _LP7 + (    8.99508053610472 * _TEMP);
_LP8 = _LP8 + (   -7.33236170090397 * _TEMP);
_LP9 = _LP9 + (    5.91077293670469 * _TEMP);
_LP10 = _LP10 + (    1.49784409828333 * _TEMP);

***  Effect: TextCluster10_SVD15 ;
_TEMP = TextCluster10_SVD15 ;
_LP0 = _LP0 + (   -9.40976402482033 * _TEMP);
_LP1 = _LP1 + (   -5.47629419755988 * _TEMP);
_LP2 = _LP2 + (    -1.0794725110966 * _TEMP);
_LP3 = _LP3 + (   -0.50454529642066 * _TEMP);
_LP4 = _LP4 + (    5.03089411796848 * _TEMP);
_LP5 = _LP5 + (   -1.54804417853858 * _TEMP);
_LP6 = _LP6 + (   -6.75029473123323 * _TEMP);
_LP7 = _LP7 + (    1.82862717072413 * _TEMP);
_LP8 = _LP8 + (    0.37729452581305 * _TEMP);
_LP9 = _LP9 + (   -6.55780873847021 * _TEMP);
_LP10 = _LP10 + (   -8.09869704717253 * _TEMP);

***  Effect: TextCluster10_SVD2 ;
_TEMP = TextCluster10_SVD2 ;
_LP0 = _LP0 + (   -0.49354886606029 * _TEMP);
_LP1 = _LP1 + (    3.10419287439258 * _TEMP);
_LP2 = _LP2 + (    4.48778362742302 * _TEMP);
_LP3 = _LP3 + (    12.3409505570593 * _TEMP);
_LP4 = _LP4 + (   -9.15894623698437 * _TEMP);
_LP5 = _LP5 + (    4.24118747051455 * _TEMP);
_LP6 = _LP6 + (    -6.6885485534755 * _TEMP);
_LP7 = _LP7 + (    8.07900751210309 * _TEMP);
_LP8 = _LP8 + (    4.93441313302805 * _TEMP);
_LP9 = _LP9 + (    7.94850166553427 * _TEMP);
_LP10 = _LP10 + (    3.76750439433414 * _TEMP);

***  Effect: TextCluster10_SVD25 ;
_TEMP = TextCluster10_SVD25 ;
_LP0 = _LP0 + (    5.72942138551368 * _TEMP);
_LP1 = _LP1 + (   -4.10242786910976 * _TEMP);
_LP2 = _LP2 + (    4.74628753676796 * _TEMP);
_LP3 = _LP3 + (   -7.70877782851914 * _TEMP);
_LP4 = _LP4 + (    0.83774414534047 * _TEMP);
_LP5 = _LP5 + (   -3.48091166391878 * _TEMP);
_LP6 = _LP6 + (   -4.13204951912282 * _TEMP);
_LP7 = _LP7 + (    4.95144833016805 * _TEMP);
_LP8 = _LP8 + (    3.18258741636592 * _TEMP);
_LP9 = _LP9 + (   -0.56032709898446 * _TEMP);
_LP10 = _LP10 + (   -4.82802180637986 * _TEMP);

***  Effect: TextCluster10_SVD3 ;
_TEMP = TextCluster10_SVD3 ;
_LP0 = _LP0 + (    1.45934188458304 * _TEMP);
_LP1 = _LP1 + (    4.34721529038165 * _TEMP);
_LP2 = _LP2 + (     3.3659962872392 * _TEMP);
_LP3 = _LP3 + (    0.64950077591949 * _TEMP);
_LP4 = _LP4 + (    2.19015125936236 * _TEMP);
_LP5 = _LP5 + (    2.99115922762757 * _TEMP);
_LP6 = _LP6 + (    2.94742311904096 * _TEMP);
_LP7 = _LP7 + (    7.03070982878074 * _TEMP);
_LP8 = _LP8 + (    6.56667963858529 * _TEMP);
_LP9 = _LP9 + (    3.83061025120572 * _TEMP);
_LP10 = _LP10 + (    7.93026943467639 * _TEMP);

***  Effect: TextCluster10_SVD4 ;
_TEMP = TextCluster10_SVD4 ;
_LP0 = _LP0 + (    7.18305591198172 * _TEMP);
_LP1 = _LP1 + (       4.38174612689 * _TEMP);
_LP2 = _LP2 + (    1.53064659541943 * _TEMP);
_LP3 = _LP3 + (   -0.56021177487989 * _TEMP);
_LP4 = _LP4 + (     -8.974839792217 * _TEMP);
_LP5 = _LP5 + (   -0.81395192538836 * _TEMP);
_LP6 = _LP6 + (    4.01331974699845 * _TEMP);
_LP7 = _LP7 + (    6.15975759105852 * _TEMP);
_LP8 = _LP8 + (    4.50331428493589 * _TEMP);
_LP9 = _LP9 + (     1.8840501902408 * _TEMP);
_LP10 = _LP10 + (    0.86279801515624 * _TEMP);

***  Effect: TextCluster10_SVD5 ;
_TEMP = TextCluster10_SVD5 ;
_LP0 = _LP0 + (   -4.49101062948319 * _TEMP);
_LP1 = _LP1 + (    10.6052457243419 * _TEMP);
_LP2 = _LP2 + (    3.47085683322808 * _TEMP);
_LP3 = _LP3 + (   -3.61484088254948 * _TEMP);
_LP4 = _LP4 + (   -2.90033324877599 * _TEMP);
_LP5 = _LP5 + (    3.66948494851969 * _TEMP);
_LP6 = _LP6 + (     3.2995236638243 * _TEMP);
_LP7 = _LP7 + (    2.97770813261311 * _TEMP);
_LP8 = _LP8 + (    4.24544798328689 * _TEMP);
_LP9 = _LP9 + (    3.34210167334282 * _TEMP);
_LP10 = _LP10 + (    5.47546264387897 * _TEMP);

***  Effect: TextCluster10_SVD6 ;
_TEMP = TextCluster10_SVD6 ;
_LP0 = _LP0 + (   -6.90188588119628 * _TEMP);
_LP1 = _LP1 + (   -5.52866641218842 * _TEMP);
_LP2 = _LP2 + (    -7.5019625333076 * _TEMP);
_LP3 = _LP3 + (   -7.24882755738118 * _TEMP);
_LP4 = _LP4 + (   -12.0697492525245 * _TEMP);
_LP5 = _LP5 + (   -2.31440701001235 * _TEMP);
_LP6 = _LP6 + (    3.48059152172759 * _TEMP);
_LP7 = _LP7 + (   -11.3602588566133 * _TEMP);
_LP8 = _LP8 + (   -18.2998565658297 * _TEMP);
_LP9 = _LP9 + (   -6.16521343843119 * _TEMP);
_LP10 = _LP10 + (   -3.18047624020232 * _TEMP);

***  Effect: TextCluster10_SVD7 ;
_TEMP = TextCluster10_SVD7 ;
_LP0 = _LP0 + (    10.4805298704347 * _TEMP);
_LP1 = _LP1 + (    5.30073887705507 * _TEMP);
_LP2 = _LP2 + (   -3.51720427235049 * _TEMP);
_LP3 = _LP3 + (    1.22917775058197 * _TEMP);
_LP4 = _LP4 + (    6.05745384840792 * _TEMP);
_LP5 = _LP5 + (   -4.26031242413997 * _TEMP);
_LP6 = _LP6 + (    1.02202248813729 * _TEMP);
_LP7 = _LP7 + (    8.67166884228178 * _TEMP);
_LP8 = _LP8 + (    3.32385100422498 * _TEMP);
_LP9 = _LP9 + (   -2.42522729648372 * _TEMP);
_LP10 = _LP10 + (    0.23301254855872 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _P10 _P11;
drop _LPMAX;
_LPMAX= 0;
_LP0 =     -3.2262954417354 + _LP0;
if _LPMAX < _LP0 then _LPMAX = _LP0;
_LP1 =    -1.06171884700871 + _LP1;
if _LPMAX < _LP1 then _LPMAX = _LP1;
_LP2 =     0.58354045877788 + _LP2;
if _LPMAX < _LP2 then _LPMAX = _LP2;
_LP3 =    -1.04668359580478 + _LP3;
if _LPMAX < _LP3 then _LPMAX = _LP3;
_LP4 =    -4.14059757254852 + _LP4;
if _LPMAX < _LP4 then _LPMAX = _LP4;
_LP5 =    -0.19517401019331 + _LP5;
if _LPMAX < _LP5 then _LPMAX = _LP5;
_LP6 =    -2.15497883885206 + _LP6;
if _LPMAX < _LP6 then _LPMAX = _LP6;
_LP7 =    -1.11878092435159 + _LP7;
if _LPMAX < _LP7 then _LPMAX = _LP7;
_LP8 =    -2.48965205097074 + _LP8;
if _LPMAX < _LP8 then _LPMAX = _LP8;
_LP9 =     0.63071040195386 + _LP9;
if _LPMAX < _LP9 then _LPMAX = _LP9;
_LP10 =    -0.00797101181587 + _LP10;
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

REG3DR1:


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
I_Category = REG3DRF[_IY];
U_Category = REG3DRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
