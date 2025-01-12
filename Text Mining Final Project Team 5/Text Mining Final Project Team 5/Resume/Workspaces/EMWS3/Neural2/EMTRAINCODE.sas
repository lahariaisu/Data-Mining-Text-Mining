*------------------------------------------------------------*;
* Neural2: Create decision matrix;
*------------------------------------------------------------*;
data WORK.Category;
  length   Category                         $  32
           COUNT                                8
           DATAPRIOR                            8
           TRAINPRIOR                           8
           DECPRIOR                             8
           DECISION1                            8
           DECISION2                            8
           DECISION3                            8
           DECISION4                            8
           DECISION5                            8
           DECISION6                            8
           DECISION7                            8
           DECISION8                            8
           DECISION9                            8
           DECISION10                           8
           DECISION11                           8
           DECISION12                           8
           ;

  label    COUNT="Level Counts"
           DATAPRIOR="Data Proportions"
           TRAINPRIOR="Training Proportions"
           DECPRIOR="Decision Priors"
           DECISION1="TEACHER"
           DECISION2="SALES"
           DECISION3="OTHER"
           DECISION4="INFORMATION-TECHNOLOGY"
           DECISION5="HR"
           DECISION6="HEALTHCARE"
           DECISION7="FITNESS"
           DECISION8="DIGITAL-MEDIA"
           DECISION9="DESIGNER"
           DECISION10="CONSULTANT"
           DECISION11="BUSINESS-DEVELOPMENT"
           DECISION12="ADVOCATE"
           ;
  format   COUNT 10.
           ;
Category="TEACHER"; COUNT=50; DATAPRIOR=0.0741839763; TRAINPRIOR=0.07418397626112; DECPRIOR=.; DECISION1=1; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="SALES"; COUNT=58; DATAPRIOR=0.0860534125; TRAINPRIOR=0.0860534124629; DECPRIOR=.; DECISION1=0; DECISION2=1; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="OTHER"; COUNT=63; DATAPRIOR=0.0934718101; TRAINPRIOR=0.09347181008902; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=1; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="INFORMATION-TECHNOLOGY"; COUNT=59; DATAPRIOR=0.087537092; TRAINPRIOR=0.08753709198813; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=1; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="HR"; COUNT=55; DATAPRIOR=0.0816023739; TRAINPRIOR=0.08160237388724; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=1; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="HEALTHCARE"; COUNT=57; DATAPRIOR=0.0845697329; TRAINPRIOR=0.08456973293768; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=1; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="FITNESS"; COUNT=58; DATAPRIOR=0.0860534125; TRAINPRIOR=0.0860534124629; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=1; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="DIGITAL-MEDIA"; COUNT=47; DATAPRIOR=0.0697329377; TRAINPRIOR=0.06973293768545; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=1; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="DESIGNER"; COUNT=53; DATAPRIOR=0.0786350148; TRAINPRIOR=0.07863501483679; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=1; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="CONSULTANT"; COUNT=57; DATAPRIOR=0.0845697329; TRAINPRIOR=0.08456973293768; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=1; DECISION11=0; DECISION12=0;
output;
Category="BUSINESS-DEVELOPMENT"; COUNT=60; DATAPRIOR=0.0890207715; TRAINPRIOR=0.08902077151335; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=1; DECISION12=0;
output;
Category="ADVOCATE"; COUNT=57; DATAPRIOR=0.0845697329; TRAINPRIOR=0.08456973293768; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=1;
output;
;
run;
proc datasets lib=work nolist;
modify Category(type=PROFIT label=Category);
label DECISION1= 'TEACHER';
label DECISION2= 'SALES';
label DECISION3= 'OTHER';
label DECISION4= 'INFORMATION-TECHNOLOGY';
label DECISION5= 'HR';
label DECISION6= 'HEALTHCARE';
label DECISION7= 'FITNESS';
label DECISION8= 'DIGITAL-MEDIA';
label DECISION9= 'DESIGNER';
label DECISION10= 'CONSULTANT';
label DECISION11= 'BUSINESS-DEVELOPMENT';
label DECISION12= 'ADVOCATE';
run;
quit;
data EM_Neural2;
set EMWS3.TextCluster5_TRAIN(keep=
Category TextCluster5_SVD1 TextCluster5_SVD10 TextCluster5_SVD100
TextCluster5_SVD11 TextCluster5_SVD12 TextCluster5_SVD13 TextCluster5_SVD14
TextCluster5_SVD15 TextCluster5_SVD16 TextCluster5_SVD17 TextCluster5_SVD18
TextCluster5_SVD19 TextCluster5_SVD2 TextCluster5_SVD20 TextCluster5_SVD21
TextCluster5_SVD22 TextCluster5_SVD23 TextCluster5_SVD24 TextCluster5_SVD25
TextCluster5_SVD26 TextCluster5_SVD27 TextCluster5_SVD28 TextCluster5_SVD29
TextCluster5_SVD3 TextCluster5_SVD30 TextCluster5_SVD31 TextCluster5_SVD32
TextCluster5_SVD33 TextCluster5_SVD34 TextCluster5_SVD35 TextCluster5_SVD36
TextCluster5_SVD37 TextCluster5_SVD38 TextCluster5_SVD39 TextCluster5_SVD4
TextCluster5_SVD40 TextCluster5_SVD41 TextCluster5_SVD42 TextCluster5_SVD43
TextCluster5_SVD44 TextCluster5_SVD45 TextCluster5_SVD46 TextCluster5_SVD47
TextCluster5_SVD48 TextCluster5_SVD49 TextCluster5_SVD5 TextCluster5_SVD50
TextCluster5_SVD51 TextCluster5_SVD52 TextCluster5_SVD53 TextCluster5_SVD54
TextCluster5_SVD55 TextCluster5_SVD56 TextCluster5_SVD57 TextCluster5_SVD58
TextCluster5_SVD59 TextCluster5_SVD6 TextCluster5_SVD60 TextCluster5_SVD61
TextCluster5_SVD62 TextCluster5_SVD63 TextCluster5_SVD64 TextCluster5_SVD65
TextCluster5_SVD66 TextCluster5_SVD67 TextCluster5_SVD68 TextCluster5_SVD69
TextCluster5_SVD7 TextCluster5_SVD70 TextCluster5_SVD71 TextCluster5_SVD72
TextCluster5_SVD73 TextCluster5_SVD74 TextCluster5_SVD75 TextCluster5_SVD76
TextCluster5_SVD77 TextCluster5_SVD78 TextCluster5_SVD79 TextCluster5_SVD8
TextCluster5_SVD80 TextCluster5_SVD81 TextCluster5_SVD82 TextCluster5_SVD83
TextCluster5_SVD84 TextCluster5_SVD85 TextCluster5_SVD86 TextCluster5_SVD87
TextCluster5_SVD88 TextCluster5_SVD89 TextCluster5_SVD9 TextCluster5_SVD90
TextCluster5_SVD91 TextCluster5_SVD92 TextCluster5_SVD93 TextCluster5_SVD94
TextCluster5_SVD95 TextCluster5_SVD96 TextCluster5_SVD97 TextCluster5_SVD98
TextCluster5_SVD99 );
run;
*------------------------------------------------------------* ;
* Neural2: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Neural2: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster5_SVD1 TextCluster5_SVD10 TextCluster5_SVD100 TextCluster5_SVD11
   TextCluster5_SVD12 TextCluster5_SVD13 TextCluster5_SVD14 TextCluster5_SVD15
   TextCluster5_SVD16 TextCluster5_SVD17 TextCluster5_SVD18 TextCluster5_SVD19
   TextCluster5_SVD2 TextCluster5_SVD20 TextCluster5_SVD21 TextCluster5_SVD22
   TextCluster5_SVD23 TextCluster5_SVD24 TextCluster5_SVD25 TextCluster5_SVD26
   TextCluster5_SVD27 TextCluster5_SVD28 TextCluster5_SVD29 TextCluster5_SVD3
   TextCluster5_SVD30 TextCluster5_SVD31 TextCluster5_SVD32 TextCluster5_SVD33
   TextCluster5_SVD34 TextCluster5_SVD35 TextCluster5_SVD36 TextCluster5_SVD37
   TextCluster5_SVD38 TextCluster5_SVD39 TextCluster5_SVD4 TextCluster5_SVD40
   TextCluster5_SVD41 TextCluster5_SVD42 TextCluster5_SVD43 TextCluster5_SVD44
   TextCluster5_SVD45 TextCluster5_SVD46 TextCluster5_SVD47 TextCluster5_SVD48
   TextCluster5_SVD49 TextCluster5_SVD5 TextCluster5_SVD50 TextCluster5_SVD51
   TextCluster5_SVD52 TextCluster5_SVD53 TextCluster5_SVD54 TextCluster5_SVD55
   TextCluster5_SVD56 TextCluster5_SVD57 TextCluster5_SVD58 TextCluster5_SVD59
   TextCluster5_SVD6 TextCluster5_SVD60 TextCluster5_SVD61 TextCluster5_SVD62
   TextCluster5_SVD63 TextCluster5_SVD64 TextCluster5_SVD65 TextCluster5_SVD66
   TextCluster5_SVD67 TextCluster5_SVD68 TextCluster5_SVD69 TextCluster5_SVD7
   TextCluster5_SVD70 TextCluster5_SVD71 TextCluster5_SVD72 TextCluster5_SVD73
   TextCluster5_SVD74 TextCluster5_SVD75 TextCluster5_SVD76 TextCluster5_SVD77
   TextCluster5_SVD78 TextCluster5_SVD79 TextCluster5_SVD8 TextCluster5_SVD80
   TextCluster5_SVD81 TextCluster5_SVD82 TextCluster5_SVD83 TextCluster5_SVD84
   TextCluster5_SVD85 TextCluster5_SVD86 TextCluster5_SVD87 TextCluster5_SVD88
   TextCluster5_SVD89 TextCluster5_SVD9 TextCluster5_SVD90 TextCluster5_SVD91
   TextCluster5_SVD92 TextCluster5_SVD93 TextCluster5_SVD94 TextCluster5_SVD95
   TextCluster5_SVD96 TextCluster5_SVD97 TextCluster5_SVD98 TextCluster5_SVD99
%mend DMDBVar;
*------------------------------------------------------------*;
* Neural2: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_Neural2
dmdbcat=WORK.Neural2_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
Category
;
run;
quit;
*------------------------------------------------------------* ;
* Neural2: Interval Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;
    TextCluster5_SVD1 TextCluster5_SVD10 TextCluster5_SVD100 TextCluster5_SVD11
   TextCluster5_SVD12 TextCluster5_SVD13 TextCluster5_SVD14 TextCluster5_SVD15
   TextCluster5_SVD16 TextCluster5_SVD17 TextCluster5_SVD18 TextCluster5_SVD19
   TextCluster5_SVD2 TextCluster5_SVD20 TextCluster5_SVD21 TextCluster5_SVD22
   TextCluster5_SVD23 TextCluster5_SVD24 TextCluster5_SVD25 TextCluster5_SVD26
   TextCluster5_SVD27 TextCluster5_SVD28 TextCluster5_SVD29 TextCluster5_SVD3
   TextCluster5_SVD30 TextCluster5_SVD31 TextCluster5_SVD32 TextCluster5_SVD33
   TextCluster5_SVD34 TextCluster5_SVD35 TextCluster5_SVD36 TextCluster5_SVD37
   TextCluster5_SVD38 TextCluster5_SVD39 TextCluster5_SVD4 TextCluster5_SVD40
   TextCluster5_SVD41 TextCluster5_SVD42 TextCluster5_SVD43 TextCluster5_SVD44
   TextCluster5_SVD45 TextCluster5_SVD46 TextCluster5_SVD47 TextCluster5_SVD48
   TextCluster5_SVD49 TextCluster5_SVD5 TextCluster5_SVD50 TextCluster5_SVD51
   TextCluster5_SVD52 TextCluster5_SVD53 TextCluster5_SVD54 TextCluster5_SVD55
   TextCluster5_SVD56 TextCluster5_SVD57 TextCluster5_SVD58 TextCluster5_SVD59
   TextCluster5_SVD6 TextCluster5_SVD60 TextCluster5_SVD61 TextCluster5_SVD62
   TextCluster5_SVD63 TextCluster5_SVD64 TextCluster5_SVD65 TextCluster5_SVD66
   TextCluster5_SVD67 TextCluster5_SVD68 TextCluster5_SVD69 TextCluster5_SVD7
   TextCluster5_SVD70 TextCluster5_SVD71 TextCluster5_SVD72 TextCluster5_SVD73
   TextCluster5_SVD74 TextCluster5_SVD75 TextCluster5_SVD76 TextCluster5_SVD77
   TextCluster5_SVD78 TextCluster5_SVD79 TextCluster5_SVD8 TextCluster5_SVD80
   TextCluster5_SVD81 TextCluster5_SVD82 TextCluster5_SVD83 TextCluster5_SVD84
   TextCluster5_SVD85 TextCluster5_SVD86 TextCluster5_SVD87 TextCluster5_SVD88
   TextCluster5_SVD89 TextCluster5_SVD9 TextCluster5_SVD90 TextCluster5_SVD91
   TextCluster5_SVD92 TextCluster5_SVD93 TextCluster5_SVD94 TextCluster5_SVD95
   TextCluster5_SVD96 TextCluster5_SVD97 TextCluster5_SVD98 TextCluster5_SVD99
%mend INTINPUTS;
*------------------------------------------------------------* ;
* Neural2: Binary Inputs Macro ;
*------------------------------------------------------------* ;
%macro BININPUTS;

%mend BININPUTS;
*------------------------------------------------------------* ;
* Neural2: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;

%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Neural2: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;

%mend ORDINPUTS;
*------------------------------------------------------------*;
* Neural Network Training;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural2 dmdbcat=WORK.Neural2_DMDB
validdata = EMWS3.TextCluster5_VALIDATE
random=12345
;
nloptions
;
performance alldetails noutilfile;
netopts
decay=0;
input %INTINPUTS / level=interval id=intvl
;
target Category / level=NOMINAL id=Category
bias
;
arch MLP
Hidden=3
;
Prelim 5 preiter=10
pretime=3600
Outest=EMWS3.Neural2_PRELIM_OUTEST
;
save network=EMWS3.Neural2_NETWORK.dm_neural;
train Maxiter=50
maxtime=14400
Outest=EMWS3.Neural2_outest estiter=1
Outfit=EMWS3.Neural2_OUTFIT
;
run;
quit;
proc sort data=EMWS3.Neural2_OUTFIT(where=(_iter_ ne . and _NAME_="OVERALL")) out=fit_Neural2;
by _VAVERR_;
run;
%GLOBAL ITER;
data _null_;
set fit_Neural2(obs=1);
call symput('ITER',put(_ITER_, 6.));
run;
data EMWS3.Neural2_INITIAL;
set EMWS3.Neural2_outest(where=(_ITER_ eq &ITER and _OBJ_ ne .));
run;
*------------------------------------------------------------*;
* Neural Network Model Selection;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural2 dmdbcat=WORK.Neural2_DMDB
validdata = EMWS3.TextCluster5_VALIDATE
network = EMWS3.Neural2_NETWORK.dm_neural
random=12345
;
nloptions noprint;
performance alldetails noutilfile;
initial inest=EMWS3.Neural2_INITIAL;
train tech=NONE;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Neural2\SCORECODE.sas"
group=Neural2
;
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Neural2\RESIDUALSCORECODE.sas"
group=Neural2
residual
;
;
score data=EMWS3.TextCluster5_TRAIN out=_NULL_
outfit=WORK.FIT1
role=TRAIN
outkey=EMWS3.Neural2_OUTKEY;
score data=EMWS3.TextCluster5_VALIDATE out=_NULL_
outfit=WORK.FIT2
role=VALID
outkey=EMWS3.Neural2_OUTKEY;
score data=EMWS3.TextCluster5_TEST out=_NULL_
outfit=WORK.FIT3
role=TEST
outkey=EMWS3.Neural2_OUTKEY;
run;
quit;
data EMWS3.Neural2_OUTFIT;
merge WORK.FIT1 WORK.FIT2 WORK.FIT3;
run;
data EMWS3.Neural2_EMESTIMATE;
set EMWS3.Neural2_outest;
if _type_ ^in('HESSIAN' 'GRAD');
run;
proc datasets lib=work nolist;
delete EM_Neural2;
run;
quit;
