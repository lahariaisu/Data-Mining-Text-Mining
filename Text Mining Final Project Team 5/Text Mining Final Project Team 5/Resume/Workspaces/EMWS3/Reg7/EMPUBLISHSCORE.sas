*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Category $ 22;
label I_Category = 'Into: Category' ;
*** Target Values;
array REG7DRF [12] $22 _temporary_ ('TEACHER' 'SALES' 'OTHER' 
'INFORMATION-TECHNOLOGY' 'HR' 'HEALTHCARE' 'FITNESS' 'DIGITAL-MEDIA' 
'DESIGNER' 'CONSULTANT' 'BUSINESS-DEVELOPMENT' 'ADVOCATE' );
label U_Category = 'Unnormalized Into: Category' ;
format U_Category $22.;
length U_Category $ 22;
*** Unnormalized target values;
array REG7DRU[12] $ 22 _temporary_ ('TEACHER               '  
'SALES                 '  'OTHER                 '  'INFORMATION-TECHNOLOGY'  
'HR                    '  'HEALTHCARE            '  'FITNESS               '  
'DIGITAL-MEDIA         '  'DESIGNER              '  'CONSULTANT            '  
'BUSINESS-DEVELOPMENT  '  'ADVOCATE              ' );

drop _DM_BAD;
_DM_BAD=0;

*** Check TextCluster11_SVD2 for missing values ;
if missing( TextCluster11_SVD2 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster11_SVD22 for missing values ;
if missing( TextCluster11_SVD22 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster11_SVD3 for missing values ;
if missing( TextCluster11_SVD3 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster11_SVD4 for missing values ;
if missing( TextCluster11_SVD4 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster11_SVD5 for missing values ;
if missing( TextCluster11_SVD5 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster11_SVD7 for missing values ;
if missing( TextCluster11_SVD7 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster11_SVD8 for missing values ;
if missing( TextCluster11_SVD8 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster11_SVD9 for missing values ;
if missing( TextCluster11_SVD9 ) then do;
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
   goto REG7DR1;
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

***  Effect: TextCluster11_SVD2 ;
_TEMP = TextCluster11_SVD2 ;
_LP0 = _LP0 + (   -3.48564901230302 * _TEMP);
_LP1 = _LP1 + (    4.17135222174856 * _TEMP);
_LP2 = _LP2 + (    2.86829482720336 * _TEMP);
_LP3 = _LP3 + (    9.16501097772072 * _TEMP);
_LP4 = _LP4 + (   -5.25834433411434 * _TEMP);
_LP5 = _LP5 + (    4.14338228970414 * _TEMP);
_LP6 = _LP6 + (   -6.65697668068723 * _TEMP);
_LP7 = _LP7 + (    6.37322523062586 * _TEMP);
_LP8 = _LP8 + (    6.92665161153194 * _TEMP);
_LP9 = _LP9 + (    7.89017726667285 * _TEMP);
_LP10 = _LP10 + (   -1.72142665138442 * _TEMP);

***  Effect: TextCluster11_SVD22 ;
_TEMP = TextCluster11_SVD22 ;
_LP0 = _LP0 + (    13.5387182493878 * _TEMP);
_LP1 = _LP1 + (    3.06766319420806 * _TEMP);
_LP2 = _LP2 + (    9.71751743861958 * _TEMP);
_LP3 = _LP3 + (   -3.84638691084645 * _TEMP);
_LP4 = _LP4 + (    0.97580915184831 * _TEMP);
_LP5 = _LP5 + (    7.02518843021451 * _TEMP);
_LP6 = _LP6 + (    0.39451656573835 * _TEMP);
_LP7 = _LP7 + (    3.31689498825133 * _TEMP);
_LP8 = _LP8 + (    3.27415134333991 * _TEMP);
_LP9 = _LP9 + (    19.2099685260161 * _TEMP);
_LP10 = _LP10 + (   -0.00205732308532 * _TEMP);

***  Effect: TextCluster11_SVD3 ;
_TEMP = TextCluster11_SVD3 ;
_LP0 = _LP0 + (   -9.02005959929286 * _TEMP);
_LP1 = _LP1 + (   -3.75374783035447 * _TEMP);
_LP2 = _LP2 + (   -0.56165553934166 * _TEMP);
_LP3 = _LP3 + (    0.18796049430534 * _TEMP);
_LP4 = _LP4 + (    5.33123828133993 * _TEMP);
_LP5 = _LP5 + (    3.09132182196653 * _TEMP);
_LP6 = _LP6 + (   -0.71930534259258 * _TEMP);
_LP7 = _LP7 + (   -2.56720801638389 * _TEMP);
_LP8 = _LP8 + (   -3.59110419055714 * _TEMP);
_LP9 = _LP9 + (    3.59788265305037 * _TEMP);
_LP10 = _LP10 + (    2.06378322676375 * _TEMP);

***  Effect: TextCluster11_SVD4 ;
_TEMP = TextCluster11_SVD4 ;
_LP0 = _LP0 + (    0.19032445905042 * _TEMP);
_LP1 = _LP1 + (    8.49602829504696 * _TEMP);
_LP2 = _LP2 + (    3.70464318199515 * _TEMP);
_LP3 = _LP3 + (   -1.34867185391179 * _TEMP);
_LP4 = _LP4 + (     -4.831872376198 * _TEMP);
_LP5 = _LP5 + (    4.46480799973584 * _TEMP);
_LP6 = _LP6 + (    6.31162377352574 * _TEMP);
_LP7 = _LP7 + (    5.77773776296637 * _TEMP);
_LP8 = _LP8 + (    5.24003343310791 * _TEMP);
_LP9 = _LP9 + (      7.091801067635 * _TEMP);
_LP10 = _LP10 + (    11.7958272238754 * _TEMP);

***  Effect: TextCluster11_SVD5 ;
_TEMP = TextCluster11_SVD5 ;
_LP0 = _LP0 + (    11.1710042220582 * _TEMP);
_LP1 = _LP1 + (    1.47884351426345 * _TEMP);
_LP2 = _LP2 + (     1.1647792913866 * _TEMP);
_LP3 = _LP3 + (    8.09866197014332 * _TEMP);
_LP4 = _LP4 + (    6.78835508938604 * _TEMP);
_LP5 = _LP5 + (    1.82129368567173 * _TEMP);
_LP6 = _LP6 + (    -1.8528933350438 * _TEMP);
_LP7 = _LP7 + (    11.5891370390989 * _TEMP);
_LP8 = _LP8 + (    18.3783321770879 * _TEMP);
_LP9 = _LP9 + (    1.23227108798358 * _TEMP);
_LP10 = _LP10 + (    2.53770167727777 * _TEMP);

***  Effect: TextCluster11_SVD7 ;
_TEMP = TextCluster11_SVD7 ;
_LP0 = _LP0 + (   -5.59650455857948 * _TEMP);
_LP1 = _LP1 + (    -10.108788587016 * _TEMP);
_LP2 = _LP2 + (   -0.30085530476839 * _TEMP);
_LP3 = _LP3 + (    1.79792005415073 * _TEMP);
_LP4 = _LP4 + (   -5.34867227597052 * _TEMP);
_LP5 = _LP5 + (     4.3792651742805 * _TEMP);
_LP6 = _LP6 + (   -3.24626653158944 * _TEMP);
_LP7 = _LP7 + (    1.25681153246538 * _TEMP);
_LP8 = _LP8 + (   -16.5270064480234 * _TEMP);
_LP9 = _LP9 + (    3.14490502901809 * _TEMP);
_LP10 = _LP10 + (    -0.1102242347051 * _TEMP);

***  Effect: TextCluster11_SVD8 ;
_TEMP = TextCluster11_SVD8 ;
_LP0 = _LP0 + (   -19.3501318116491 * _TEMP);
_LP1 = _LP1 + (   -4.73759924488774 * _TEMP);
_LP2 = _LP2 + (   -1.94148546385263 * _TEMP);
_LP3 = _LP3 + (   -8.04208827668709 * _TEMP);
_LP4 = _LP4 + (     7.8822840235493 * _TEMP);
_LP5 = _LP5 + (    -15.572604478546 * _TEMP);
_LP6 = _LP6 + (    11.1545660494865 * _TEMP);
_LP7 = _LP7 + (   -9.31263367604148 * _TEMP);
_LP8 = _LP8 + (    8.87199097266835 * _TEMP);
_LP9 = _LP9 + (   -6.21153713555268 * _TEMP);
_LP10 = _LP10 + (   -2.74765539137496 * _TEMP);

***  Effect: TextCluster11_SVD9 ;
_TEMP = TextCluster11_SVD9 ;
_LP0 = _LP0 + (   -0.47310859920348 * _TEMP);
_LP1 = _LP1 + (   -5.21371157233572 * _TEMP);
_LP2 = _LP2 + (   -6.24556412918739 * _TEMP);
_LP3 = _LP3 + (   -1.72524637521118 * _TEMP);
_LP4 = _LP4 + (    3.09975460890536 * _TEMP);
_LP5 = _LP5 + (    3.75391545829753 * _TEMP);
_LP6 = _LP6 + (   -4.04630194236204 * _TEMP);
_LP7 = _LP7 + (    4.83299413883765 * _TEMP);
_LP8 = _LP8 + (     -13.40943852594 * _TEMP);
_LP9 = _LP9 + (   -1.60028463807709 * _TEMP);
_LP10 = _LP10 + (   -9.81103804136841 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _P10 _P11;
drop _LPMAX;
_LPMAX= 0;
_LP0 =    -4.46978854594893 + _LP0;
if _LPMAX < _LP0 then _LPMAX = _LP0;
_LP1 =    -2.05368208490862 + _LP1;
if _LPMAX < _LP1 then _LPMAX = _LP1;
_LP2 =     0.31649954178167 + _LP2;
if _LPMAX < _LP2 then _LPMAX = _LP2;
_LP3 =    -0.76426130192568 + _LP3;
if _LPMAX < _LP3 then _LPMAX = _LP3;
_LP4 =    -3.18335713078455 + _LP4;
if _LPMAX < _LP4 then _LPMAX = _LP4;
_LP5 =    -0.96452131087889 + _LP5;
if _LPMAX < _LP5 then _LPMAX = _LP5;
_LP6 =    -2.63715847311455 + _LP6;
if _LPMAX < _LP6 then _LPMAX = _LP6;
_LP7 =    -1.05791463693582 + _LP7;
if _LPMAX < _LP7 then _LPMAX = _LP7;
_LP8 =    -2.59377863629165 + _LP8;
if _LPMAX < _LP8 then _LPMAX = _LP8;
_LP9 =    -0.91479863659716 + _LP9;
if _LPMAX < _LP9 then _LPMAX = _LP9;
_LP10 =    -1.59166916268598 + _LP10;
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

REG7DR1:


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
I_Category = REG7DRF[_IY];
U_Category = REG7DRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
