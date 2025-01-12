*------------------------------------------------------------*;
* Part: Retrieving stratification variable(s) levels;
*------------------------------------------------------------*;
proc freq data=EMWS3.FIMPORT_train noprint;
format
Category $22.
;
table
Category
/out=WORK.Part_FREQ(drop=percent);
run;
proc sort data=WORK.Part_FREQ;
by descending count;
run;
* Part: Retrieving levels that meet minimum requirement;
data WORK.Part_FREQ2(keep = count);
set WORK.Part_FREQ;
where (.01 * 50 * count) >= 3;
run;
*------------------------------------------------------------*;
* Part: Create stratified partitioning;
*------------------------------------------------------------*;
data
EMWS3.Part_TRAIN(label="")
EMWS3.Part_VALIDATE(label="")
EMWS3.Part_TEST(label="")
;
retain _seed_ 12345;
drop _seed_ _genvalue_;
call ranuni(_seed_, _genvalue_);
label _dataobs_ = "%sysfunc(sasmsg(sashelp.dmine, sample_dataobs_vlabel, NOQUOTE))";
_dataobs_ = _N_;
drop _c00:;
set EMWS3.FIMPORT_train;
length _Pformat1 $72;
drop _Pformat1;
_Pformat1 = strip(put(Category, $22.));
if
_Pformat1 = 'OTHER'
then do;
if (128+1-_C000004)*_genvalue_ <= (64 - _C000001) then do;
_C000001 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (128+1-_C000004)*_genvalue_ <= (64 - _C000001 + 38 - _C000002) then do;
_C000002 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C000003 + 1;
output EMWS3.Part_TEST;
end;
end;
_C000004+1;
end;
else if
_Pformat1 = 'BUSINESS-DEVELOPMENT'
then do;
if (119+1-_C000008)*_genvalue_ <= (60 - _C000005) then do;
_C000005 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (119+1-_C000008)*_genvalue_ <= (60 - _C000005 + 36 - _C000006) then do;
_C000006 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C000007 + 1;
output EMWS3.Part_TEST;
end;
end;
_C000008+1;
end;
else if
_Pformat1 = 'INFORMATION-TECHNOLOGY'
then do;
if (119+1-_C0000012)*_genvalue_ <= (60 - _C000009) then do;
_C000009 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (119+1-_C0000012)*_genvalue_ <= (60 - _C000009 + 36 - _C0000010) then do;
_C0000010 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C0000011 + 1;
output EMWS3.Part_TEST;
end;
end;
_C0000012+1;
end;
else if
_Pformat1 = 'FITNESS'
then do;
if (117+1-_C0000016)*_genvalue_ <= (59 - _C0000013) then do;
_C0000013 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (117+1-_C0000016)*_genvalue_ <= (59 - _C0000013 + 35 - _C0000014) then do;
_C0000014 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C0000015 + 1;
output EMWS3.Part_TEST;
end;
end;
_C0000016+1;
end;
else if
_Pformat1 = 'ADVOCATE'
then do;
if (115+1-_C0000020)*_genvalue_ <= (58 - _C0000017) then do;
_C0000017 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (115+1-_C0000020)*_genvalue_ <= (58 - _C0000017 + 35 - _C0000018) then do;
_C0000018 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C0000019 + 1;
output EMWS3.Part_TEST;
end;
end;
_C0000020+1;
end;
else if
_Pformat1 = 'CONSULTANT'
then do;
if (115+1-_C0000024)*_genvalue_ <= (58 - _C0000021) then do;
_C0000021 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (115+1-_C0000024)*_genvalue_ <= (58 - _C0000021 + 35 - _C0000022) then do;
_C0000022 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C0000023 + 1;
output EMWS3.Part_TEST;
end;
end;
_C0000024+1;
end;
else if
_Pformat1 = 'SALES'
then do;
if (115+1-_C0000028)*_genvalue_ <= (58 - _C0000025) then do;
_C0000025 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (115+1-_C0000028)*_genvalue_ <= (58 - _C0000025 + 35 - _C0000026) then do;
_C0000026 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C0000027 + 1;
output EMWS3.Part_TEST;
end;
end;
_C0000028+1;
end;
else if
_Pformat1 = 'HEALTHCARE'
then do;
if (113+1-_C0000032)*_genvalue_ <= (57 - _C0000029) then do;
_C0000029 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (113+1-_C0000032)*_genvalue_ <= (57 - _C0000029 + 34 - _C0000030) then do;
_C0000030 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C0000031 + 1;
output EMWS3.Part_TEST;
end;
end;
_C0000032+1;
end;
else if
_Pformat1 = 'HR'
then do;
if (109+1-_C0000036)*_genvalue_ <= (55 - _C0000033) then do;
_C0000033 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (109+1-_C0000036)*_genvalue_ <= (55 - _C0000033 + 33 - _C0000034) then do;
_C0000034 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C0000035 + 1;
output EMWS3.Part_TEST;
end;
end;
_C0000036+1;
end;
else if
_Pformat1 = 'DESIGNER'
then do;
if (106+1-_C0000040)*_genvalue_ <= (53 - _C0000037) then do;
_C0000037 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (106+1-_C0000040)*_genvalue_ <= (53 - _C0000037 + 32 - _C0000038) then do;
_C0000038 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C0000039 + 1;
output EMWS3.Part_TEST;
end;
end;
_C0000040+1;
end;
else if
_Pformat1 = 'TEACHER'
then do;
if (102+1-_C0000044)*_genvalue_ <= (51 - _C0000041) then do;
_C0000041 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (102+1-_C0000044)*_genvalue_ <= (51 - _C0000041 + 31 - _C0000042) then do;
_C0000042 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C0000043 + 1;
output EMWS3.Part_TEST;
end;
end;
_C0000044+1;
end;
else if
_Pformat1 = 'DIGITAL-MEDIA'
then do;
if (95+1-_C0000048)*_genvalue_ <= (48 - _C0000045) then do;
_C0000045 + 1;
output EMWS3.Part_TRAIN;
end;
else do;
if (95+1-_C0000048)*_genvalue_ <= (48 - _C0000045 + 29 - _C0000046) then do;
_C0000046 + 1;
output EMWS3.Part_VALIDATE;
end;
else do;
_C0000047 + 1;
output EMWS3.Part_TEST;
end;
end;
_C0000048+1;
end;
run;
