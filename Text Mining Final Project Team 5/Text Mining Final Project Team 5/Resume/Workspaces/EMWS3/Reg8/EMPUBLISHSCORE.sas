*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Category $ 22;
label I_Category = 'Into: Category' ;
*** Target Values;
array REG8DRF [12] $22 _temporary_ ('TEACHER' 'SALES' 'OTHER' 
'INFORMATION-TECHNOLOGY' 'HR' 'HEALTHCARE' 'FITNESS' 'DIGITAL-MEDIA' 
'DESIGNER' 'CONSULTANT' 'BUSINESS-DEVELOPMENT' 'ADVOCATE' );
label U_Category = 'Unnormalized Into: Category' ;
format U_Category $22.;
length U_Category $ 22;
*** Unnormalized target values;
array REG8DRU[12] $ 22 _temporary_ ('TEACHER               '  
'SALES                 '  'OTHER                 '  'INFORMATION-TECHNOLOGY'  
'HR                    '  'HEALTHCARE            '  'FITNESS               '  
'DIGITAL-MEDIA         '  'DESIGNER              '  'CONSULTANT            '  
'BUSINESS-DEVELOPMENT  '  'ADVOCATE              ' );

drop _DM_BAD;
_DM_BAD=0;

*** Check TextCluster12_SVD17 for missing values ;
if missing( TextCluster12_SVD17 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster12_SVD2 for missing values ;
if missing( TextCluster12_SVD2 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster12_SVD22 for missing values ;
if missing( TextCluster12_SVD22 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster12_SVD3 for missing values ;
if missing( TextCluster12_SVD3 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster12_SVD4 for missing values ;
if missing( TextCluster12_SVD4 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster12_SVD5 for missing values ;
if missing( TextCluster12_SVD5 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster12_SVD7 for missing values ;
if missing( TextCluster12_SVD7 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster12_SVD8 for missing values ;
if missing( TextCluster12_SVD8 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster12_SVD9 for missing values ;
if missing( TextCluster12_SVD9 ) then do;
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
   goto REG8DR1;
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

***  Effect: TextCluster12_SVD17 ;
_TEMP = TextCluster12_SVD17 ;
_LP0 = _LP0 + (    36.5864089506013 * _TEMP);
_LP1 = _LP1 + (    16.2656735908116 * _TEMP);
_LP2 = _LP2 + (    11.5016269367173 * _TEMP);
_LP3 = _LP3 + (    6.69237948064248 * _TEMP);
_LP4 = _LP4 + (    16.3892783698534 * _TEMP);
_LP5 = _LP5 + (    0.52774947732695 * _TEMP);
_LP6 = _LP6 + (    12.5422818609888 * _TEMP);
_LP7 = _LP7 + (    10.9327035405546 * _TEMP);
_LP8 = _LP8 + (    5.07745840030624 * _TEMP);
_LP9 = _LP9 + (     17.436348816668 * _TEMP);
_LP10 = _LP10 + (     19.932334864413 * _TEMP);

***  Effect: TextCluster12_SVD2 ;
_TEMP = TextCluster12_SVD2 ;
_LP0 = _LP0 + (   -9.61535094620232 * _TEMP);
_LP1 = _LP1 + (    2.77931245528603 * _TEMP);
_LP2 = _LP2 + (    2.43174594413047 * _TEMP);
_LP3 = _LP3 + (    9.68139051348058 * _TEMP);
_LP4 = _LP4 + (    -7.8010150505573 * _TEMP);
_LP5 = _LP5 + (    4.14867593939735 * _TEMP);
_LP6 = _LP6 + (   -9.03893499340021 * _TEMP);
_LP7 = _LP7 + (    6.29850922812419 * _TEMP);
_LP8 = _LP8 + (    6.52585987429897 * _TEMP);
_LP9 = _LP9 + (    8.88741739438556 * _TEMP);
_LP10 = _LP10 + (   -2.81432343652254 * _TEMP);

***  Effect: TextCluster12_SVD22 ;
_TEMP = TextCluster12_SVD22 ;
_LP0 = _LP0 + (    13.5040750903965 * _TEMP);
_LP1 = _LP1 + (   -0.26577840540263 * _TEMP);
_LP2 = _LP2 + (    9.58612986834964 * _TEMP);
_LP3 = _LP3 + (   -7.09848391959565 * _TEMP);
_LP4 = _LP4 + (    1.97099782404229 * _TEMP);
_LP5 = _LP5 + (    6.62193291720522 * _TEMP);
_LP6 = _LP6 + (   -1.34486181378023 * _TEMP);
_LP7 = _LP7 + (    2.66149641734101 * _TEMP);
_LP8 = _LP8 + (    5.96790198124734 * _TEMP);
_LP9 = _LP9 + (    22.5073289902322 * _TEMP);
_LP10 = _LP10 + (   -2.83351874796088 * _TEMP);

***  Effect: TextCluster12_SVD3 ;
_TEMP = TextCluster12_SVD3 ;
_LP0 = _LP0 + (   -9.64161481810996 * _TEMP);
_LP1 = _LP1 + (   -3.73778852594176 * _TEMP);
_LP2 = _LP2 + (   -0.02591585547289 * _TEMP);
_LP3 = _LP3 + (    0.75741640477524 * _TEMP);
_LP4 = _LP4 + (    5.80615982985816 * _TEMP);
_LP5 = _LP5 + (    3.21099615562043 * _TEMP);
_LP6 = _LP6 + (   -0.54212897320755 * _TEMP);
_LP7 = _LP7 + (   -1.96881718529403 * _TEMP);
_LP8 = _LP8 + (   -3.81934102653376 * _TEMP);
_LP9 = _LP9 + (    6.27589695748072 * _TEMP);
_LP10 = _LP10 + (    3.16226485516095 * _TEMP);

***  Effect: TextCluster12_SVD4 ;
_TEMP = TextCluster12_SVD4 ;
_LP0 = _LP0 + (   -5.71658034706713 * _TEMP);
_LP1 = _LP1 + (    8.68343354654231 * _TEMP);
_LP2 = _LP2 + (    3.46737309327803 * _TEMP);
_LP3 = _LP3 + (   -3.03115387752392 * _TEMP);
_LP4 = _LP4 + (   -5.54744352907606 * _TEMP);
_LP5 = _LP5 + (    4.80814476191165 * _TEMP);
_LP6 = _LP6 + (    6.30801042939065 * _TEMP);
_LP7 = _LP7 + (    5.64186055249071 * _TEMP);
_LP8 = _LP8 + (    5.56093157100163 * _TEMP);
_LP9 = _LP9 + (    7.51306035470932 * _TEMP);
_LP10 = _LP10 + (    11.7360926073543 * _TEMP);

***  Effect: TextCluster12_SVD5 ;
_TEMP = TextCluster12_SVD5 ;
_LP0 = _LP0 + (    13.9005283320278 * _TEMP);
_LP1 = _LP1 + (    3.06476836689897 * _TEMP);
_LP2 = _LP2 + (    2.26140446965324 * _TEMP);
_LP3 = _LP3 + (    9.30829256846234 * _TEMP);
_LP4 = _LP4 + (    8.60312962822009 * _TEMP);
_LP5 = _LP5 + (     1.3707918106188 * _TEMP);
_LP6 = _LP6 + (   -1.04908477070841 * _TEMP);
_LP7 = _LP7 + (     14.162909507736 * _TEMP);
_LP8 = _LP8 + (    20.9623714370418 * _TEMP);
_LP9 = _LP9 + (    2.72475132319769 * _TEMP);
_LP10 = _LP10 + (    4.04126801111546 * _TEMP);

***  Effect: TextCluster12_SVD7 ;
_TEMP = TextCluster12_SVD7 ;
_LP0 = _LP0 + (   -9.02612225279064 * _TEMP);
_LP1 = _LP1 + (   -11.9052388484517 * _TEMP);
_LP2 = _LP2 + (   -0.69369009226628 * _TEMP);
_LP3 = _LP3 + (    1.64151100364662 * _TEMP);
_LP4 = _LP4 + (    -6.0244210740085 * _TEMP);
_LP5 = _LP5 + (    4.35745107447185 * _TEMP);
_LP6 = _LP6 + (   -3.96324290077084 * _TEMP);
_LP7 = _LP7 + (    1.02697322926684 * _TEMP);
_LP8 = _LP8 + (   -18.0389028661613 * _TEMP);
_LP9 = _LP9 + (    3.87571848345975 * _TEMP);
_LP10 = _LP10 + (   -0.56728205292241 * _TEMP);

***  Effect: TextCluster12_SVD8 ;
_TEMP = TextCluster12_SVD8 ;
_LP0 = _LP0 + (   -30.4817244754488 * _TEMP);
_LP1 = _LP1 + (   -8.10927580481277 * _TEMP);
_LP2 = _LP2 + (   -3.37130010755257 * _TEMP);
_LP3 = _LP3 + (   -10.0321033599388 * _TEMP);
_LP4 = _LP4 + (    7.75693549971811 * _TEMP);
_LP5 = _LP5 + (   -14.6441946909503 * _TEMP);
_LP6 = _LP6 + (    11.5023193505314 * _TEMP);
_LP7 = _LP7 + (     -11.42200789589 * _TEMP);
_LP8 = _LP8 + (    8.69887680774276 * _TEMP);
_LP9 = _LP9 + (   -10.3955263916738 * _TEMP);
_LP10 = _LP10 + (   -5.26515017852095 * _TEMP);

***  Effect: TextCluster12_SVD9 ;
_TEMP = TextCluster12_SVD9 ;
_LP0 = _LP0 + (   -3.72169493389449 * _TEMP);
_LP1 = _LP1 + (   -7.72147231072213 * _TEMP);
_LP2 = _LP2 + (   -7.58984091495965 * _TEMP);
_LP3 = _LP3 + (   -2.58925452637172 * _TEMP);
_LP4 = _LP4 + (    4.32588137370851 * _TEMP);
_LP5 = _LP5 + (     4.0698409952488 * _TEMP);
_LP6 = _LP6 + (   -5.49410815113793 * _TEMP);
_LP7 = _LP7 + (    4.69597000506902 * _TEMP);
_LP8 = _LP8 + (   -14.2806350222989 * _TEMP);
_LP9 = _LP9 + (   -2.26685821165022 * _TEMP);
_LP10 = _LP10 + (   -12.1794734810496 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _P10 _P11;
drop _LPMAX;
_LPMAX= 0;
_LP0 =    -6.78843726065937 + _LP0;
if _LPMAX < _LP0 then _LPMAX = _LP0;
_LP1 =    -2.16320652910508 + _LP1;
if _LPMAX < _LP1 then _LPMAX = _LP1;
_LP2 =     0.48687129612518 + _LP2;
if _LPMAX < _LP2 then _LPMAX = _LP2;
_LP3 =    -0.74326647384372 + _LP3;
if _LPMAX < _LP3 then _LPMAX = _LP3;
_LP4 =    -3.12755499040989 + _LP4;
if _LPMAX < _LP4 then _LPMAX = _LP4;
_LP5 =    -0.91891966243163 + _LP5;
if _LPMAX < _LP5 then _LPMAX = _LP5;
_LP6 =    -2.58305752280877 + _LP6;
if _LPMAX < _LP6 then _LPMAX = _LP6;
_LP7 =     -0.8754481518415 + _LP7;
if _LPMAX < _LP7 then _LPMAX = _LP7;
_LP8 =    -2.22183139543321 + _LP8;
if _LPMAX < _LP8 then _LPMAX = _LP8;
_LP9 =    -1.18437644016314 + _LP9;
if _LPMAX < _LP9 then _LPMAX = _LP9;
_LP10 =    -1.58071618403934 + _LP10;
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

REG8DR1:


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
I_Category = REG8DRF[_IY];
U_Category = REG8DRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
