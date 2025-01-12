*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;

length I_Category $ 22;
label I_Category = 'Into: Category' ;
*** Target Values;
array REG5DRF [12] $22 _temporary_ ('TEACHER' 'SALES' 'OTHER' 
'INFORMATION-TECHNOLOGY' 'HR' 'HEALTHCARE' 'FITNESS' 'DIGITAL-MEDIA' 
'DESIGNER' 'CONSULTANT' 'BUSINESS-DEVELOPMENT' 'ADVOCATE' );
label U_Category = 'Unnormalized Into: Category' ;
format U_Category $22.;
length U_Category $ 22;
*** Unnormalized target values;
array REG5DRU[12] $ 22 _temporary_ ('TEACHER               '  
'SALES                 '  'OTHER                 '  'INFORMATION-TECHNOLOGY'  
'HR                    '  'HEALTHCARE            '  'FITNESS               '  
'DIGITAL-MEDIA         '  'DESIGNER              '  'CONSULTANT            '  
'BUSINESS-DEVELOPMENT  '  'ADVOCATE              ' );

drop _DM_BAD;
_DM_BAD=0;

*** Check TextCluster8_SVD10 for missing values ;
if missing( TextCluster8_SVD10 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster8_SVD11 for missing values ;
if missing( TextCluster8_SVD11 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster8_SVD14 for missing values ;
if missing( TextCluster8_SVD14 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster8_SVD2 for missing values ;
if missing( TextCluster8_SVD2 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster8_SVD24 for missing values ;
if missing( TextCluster8_SVD24 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster8_SVD3 for missing values ;
if missing( TextCluster8_SVD3 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster8_SVD4 for missing values ;
if missing( TextCluster8_SVD4 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster8_SVD5 for missing values ;
if missing( TextCluster8_SVD5 ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check TextCluster8_SVD7 for missing values ;
if missing( TextCluster8_SVD7 ) then do;
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
   goto REG5DR1;
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

***  Effect: TextCluster8_SVD10 ;
_TEMP = TextCluster8_SVD10 ;
_LP0 = _LP0 + (   -2.97778608314473 * _TEMP);
_LP1 = _LP1 + (    7.67275417242972 * _TEMP);
_LP2 = _LP2 + (    6.53638035766893 * _TEMP);
_LP3 = _LP3 + (   -1.16939801315849 * _TEMP);
_LP4 = _LP4 + (    12.8737627776247 * _TEMP);
_LP5 = _LP5 + (   -8.99275101151806 * _TEMP);
_LP6 = _LP6 + (    10.1610237889387 * _TEMP);
_LP7 = _LP7 + (   -6.33610406324361 * _TEMP);
_LP8 = _LP8 + (    15.3333180590904 * _TEMP);
_LP9 = _LP9 + (   -0.11376561464967 * _TEMP);
_LP10 = _LP10 + (    2.77358384276577 * _TEMP);

***  Effect: TextCluster8_SVD11 ;
_TEMP = TextCluster8_SVD11 ;
_LP0 = _LP0 + (   -23.2612889567455 * _TEMP);
_LP1 = _LP1 + (   -1.53657849194446 * _TEMP);
_LP2 = _LP2 + (   -0.98005182179674 * _TEMP);
_LP3 = _LP3 + (   -7.36374962794216 * _TEMP);
_LP4 = _LP4 + (    7.79013154344374 * _TEMP);
_LP5 = _LP5 + (   -9.50733510042013 * _TEMP);
_LP6 = _LP6 + (    9.46078049480722 * _TEMP);
_LP7 = _LP7 + (   -8.57732004472052 * _TEMP);
_LP8 = _LP8 + (   -4.36985832246844 * _TEMP);
_LP9 = _LP9 + (    -0.5201842623953 * _TEMP);
_LP10 = _LP10 + (    0.18483354628644 * _TEMP);

***  Effect: TextCluster8_SVD14 ;
_TEMP = TextCluster8_SVD14 ;
_LP0 = _LP0 + (    13.3972419431961 * _TEMP);
_LP1 = _LP1 + (    6.76553573522296 * _TEMP);
_LP2 = _LP2 + (    3.13133653881102 * _TEMP);
_LP3 = _LP3 + (    5.86139027948472 * _TEMP);
_LP4 = _LP4 + (    1.35449282623098 * _TEMP);
_LP5 = _LP5 + (    3.34330691776063 * _TEMP);
_LP6 = _LP6 + (    9.98996071870854 * _TEMP);
_LP7 = _LP7 + (    2.08881150763854 * _TEMP);
_LP8 = _LP8 + (    2.57580580799082 * _TEMP);
_LP9 = _LP9 + (    11.3811758668183 * _TEMP);
_LP10 = _LP10 + (    8.76218210271255 * _TEMP);

***  Effect: TextCluster8_SVD2 ;
_TEMP = TextCluster8_SVD2 ;
_LP0 = _LP0 + (   -13.7793940062092 * _TEMP);
_LP1 = _LP1 + (    2.16037251700424 * _TEMP);
_LP2 = _LP2 + (    5.07224709011298 * _TEMP);
_LP3 = _LP3 + (    14.0693169668158 * _TEMP);
_LP4 = _LP4 + (   -3.37880801079442 * _TEMP);
_LP5 = _LP5 + (     4.1660866532688 * _TEMP);
_LP6 = _LP6 + (   -12.6771870365772 * _TEMP);
_LP7 = _LP7 + (    8.62751294602851 * _TEMP);
_LP8 = _LP8 + (    8.92487947425411 * _TEMP);
_LP9 = _LP9 + (    9.02063966658212 * _TEMP);
_LP10 = _LP10 + (     2.8106719525634 * _TEMP);

***  Effect: TextCluster8_SVD24 ;
_TEMP = TextCluster8_SVD24 ;
_LP0 = _LP0 + (   -5.64786380659474 * _TEMP);
_LP1 = _LP1 + (    4.77066744236432 * _TEMP);
_LP2 = _LP2 + (   -8.88651401005823 * _TEMP);
_LP3 = _LP3 + (    8.71821950360819 * _TEMP);
_LP4 = _LP4 + (   -7.37704120926281 * _TEMP);
_LP5 = _LP5 + (    0.54132954213999 * _TEMP);
_LP6 = _LP6 + (    8.30321212136226 * _TEMP);
_LP7 = _LP7 + (   -5.66554326217921 * _TEMP);
_LP8 = _LP8 + (   -5.37094280060579 * _TEMP);
_LP9 = _LP9 + (   -0.32940630629705 * _TEMP);
_LP10 = _LP10 + (    2.24195681764915 * _TEMP);

***  Effect: TextCluster8_SVD3 ;
_TEMP = TextCluster8_SVD3 ;
_LP0 = _LP0 + (    7.89518979148351 * _TEMP);
_LP1 = _LP1 + (    5.85353718631394 * _TEMP);
_LP2 = _LP2 + (    3.01625793269466 * _TEMP);
_LP3 = _LP3 + (    1.45616814657623 * _TEMP);
_LP4 = _LP4 + (    2.40864356895056 * _TEMP);
_LP5 = _LP5 + (     3.1566193197684 * _TEMP);
_LP6 = _LP6 + (    6.04965053099181 * _TEMP);
_LP7 = _LP7 + (    7.70511850259015 * _TEMP);
_LP8 = _LP8 + (     7.5446464653687 * _TEMP);
_LP9 = _LP9 + (    3.71952066193297 * _TEMP);
_LP10 = _LP10 + (     10.270156472954 * _TEMP);

***  Effect: TextCluster8_SVD4 ;
_TEMP = TextCluster8_SVD4 ;
_LP0 = _LP0 + (    11.8404641021669 * _TEMP);
_LP1 = _LP1 + (       5.47688001204 * _TEMP);
_LP2 = _LP2 + (    1.14427001373242 * _TEMP);
_LP3 = _LP3 + (    1.28599300812791 * _TEMP);
_LP4 = _LP4 + (   -10.7928918149932 * _TEMP);
_LP5 = _LP5 + (    0.51057709531809 * _TEMP);
_LP6 = _LP6 + (    3.43344696250716 * _TEMP);
_LP7 = _LP7 + (    9.55070170471433 * _TEMP);
_LP8 = _LP8 + (    5.24859066252309 * _TEMP);
_LP9 = _LP9 + (    3.89135365939027 * _TEMP);
_LP10 = _LP10 + (    1.06385066623048 * _TEMP);

***  Effect: TextCluster8_SVD5 ;
_TEMP = TextCluster8_SVD5 ;
_LP0 = _LP0 + (   -5.35244914528064 * _TEMP);
_LP1 = _LP1 + (    12.9448779301817 * _TEMP);
_LP2 = _LP2 + (    2.79878616861785 * _TEMP);
_LP3 = _LP3 + (   -4.92541041847031 * _TEMP);
_LP4 = _LP4 + (   -4.01195912673848 * _TEMP);
_LP5 = _LP5 + (    3.44442098992248 * _TEMP);
_LP6 = _LP6 + (    4.87848365036612 * _TEMP);
_LP7 = _LP7 + (    3.25933385525559 * _TEMP);
_LP8 = _LP8 + (    1.44128314557483 * _TEMP);
_LP9 = _LP9 + (    3.25347008139595 * _TEMP);
_LP10 = _LP10 + (    6.65045805943715 * _TEMP);

***  Effect: TextCluster8_SVD7 ;
_TEMP = TextCluster8_SVD7 ;
_LP0 = _LP0 + (    14.5555011840152 * _TEMP);
_LP1 = _LP1 + (    6.12123531812143 * _TEMP);
_LP2 = _LP2 + (    0.49527154914591 * _TEMP);
_LP3 = _LP3 + (    5.07536030100824 * _TEMP);
_LP4 = _LP4 + (     10.601942323909 * _TEMP);
_LP5 = _LP5 + (    -2.4764483630136 * _TEMP);
_LP6 = _LP6 + (   -1.31915910536489 * _TEMP);
_LP7 = _LP7 + (    14.6895087557451 * _TEMP);
_LP8 = _LP8 + (    18.3747224271015 * _TEMP);
_LP9 = _LP9 + (   -0.31423753721963 * _TEMP);
_LP10 = _LP10 + (    0.37233543013687 * _TEMP);

*** Naive Posterior Probabilities;
drop _MAXP _IY _P0 _P1 _P2 _P3 _P4 _P5 _P6 _P7 _P8 _P9 _P10 _P11;
drop _LPMAX;
_LPMAX= 0;
_LP0 =    -4.45700347573848 + _LP0;
if _LPMAX < _LP0 then _LPMAX = _LP0;
_LP1 =    -1.08397822300592 + _LP1;
if _LPMAX < _LP1 then _LPMAX = _LP1;
_LP2 =       0.755098358388 + _LP2;
if _LPMAX < _LP2 then _LPMAX = _LP2;
_LP3 =    -0.78216509400431 + _LP3;
if _LPMAX < _LP3 then _LPMAX = _LP3;
_LP4 =    -3.06641548031426 + _LP4;
if _LPMAX < _LP4 then _LPMAX = _LP4;
_LP5 =    -0.08607861888923 + _LP5;
if _LPMAX < _LP5 then _LPMAX = _LP5;
_LP6 =    -2.74188707566502 + _LP6;
if _LPMAX < _LP6 then _LPMAX = _LP6;
_LP7 =    -0.94245702930738 + _LP7;
if _LPMAX < _LP7 then _LPMAX = _LP7;
_LP8 =    -1.50313267575995 + _LP8;
if _LPMAX < _LP8 then _LPMAX = _LP8;
_LP9 =     0.61121121772268 + _LP9;
if _LPMAX < _LP9 then _LPMAX = _LP9;
_LP10 =    -0.11802168199271 + _LP10;
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

REG5DR1:


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
I_Category = REG5DRF[_IY];
U_Category = REG5DRU[_IY];

*************************************;
***** end scoring code for regression;
*************************************;
