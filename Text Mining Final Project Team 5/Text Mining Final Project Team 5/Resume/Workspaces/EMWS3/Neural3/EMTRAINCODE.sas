*------------------------------------------------------------*;
* Neural3: Create decision matrix;
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
Category="TEACHER"; COUNT=50; DATAPRIOR=0.07418397626112; TRAINPRIOR=0.07418397626112; DECPRIOR=.; DECISION1=1; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="SALES"; COUNT=58; DATAPRIOR=0.0860534124629; TRAINPRIOR=0.0860534124629; DECPRIOR=.; DECISION1=0; DECISION2=1; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="OTHER"; COUNT=63; DATAPRIOR=0.09347181008902; TRAINPRIOR=0.09347181008902; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=1; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="INFORMATION-TECHNOLOGY"; COUNT=59; DATAPRIOR=0.08753709198813; TRAINPRIOR=0.08753709198813; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=1; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="HR"; COUNT=55; DATAPRIOR=0.08160237388724; TRAINPRIOR=0.08160237388724; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=1; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="HEALTHCARE"; COUNT=57; DATAPRIOR=0.08456973293768; TRAINPRIOR=0.08456973293768; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=1; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="FITNESS"; COUNT=58; DATAPRIOR=0.0860534124629; TRAINPRIOR=0.0860534124629; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=1; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="DIGITAL-MEDIA"; COUNT=47; DATAPRIOR=0.06973293768545; TRAINPRIOR=0.06973293768545; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=1; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="DESIGNER"; COUNT=53; DATAPRIOR=0.07863501483679; TRAINPRIOR=0.07863501483679; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=1; DECISION10=0; DECISION11=0; DECISION12=0;
output;
Category="CONSULTANT"; COUNT=57; DATAPRIOR=0.08456973293768; TRAINPRIOR=0.08456973293768; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=1; DECISION11=0; DECISION12=0;
output;
Category="BUSINESS-DEVELOPMENT"; COUNT=60; DATAPRIOR=0.08902077151335; TRAINPRIOR=0.08902077151335; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=1; DECISION12=0;
output;
Category="ADVOCATE"; COUNT=57; DATAPRIOR=0.08456973293768; TRAINPRIOR=0.08456973293768; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=1;
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
data EM_Neural3;
set EMWS3.TextCluster10_TRAIN(keep=
Category TextCluster10_SVD1 TextCluster10_SVD10 TextCluster10_SVD11
TextCluster10_SVD12 TextCluster10_SVD13 TextCluster10_SVD14 TextCluster10_SVD15
TextCluster10_SVD16 TextCluster10_SVD17 TextCluster10_SVD18 TextCluster10_SVD19
TextCluster10_SVD2 TextCluster10_SVD20 TextCluster10_SVD21 TextCluster10_SVD22
TextCluster10_SVD23 TextCluster10_SVD24 TextCluster10_SVD25 TextCluster10_SVD26
TextCluster10_SVD27 TextCluster10_SVD28 TextCluster10_SVD29 TextCluster10_SVD3
TextCluster10_SVD30 TextCluster10_SVD31 TextCluster10_SVD32 TextCluster10_SVD33
TextCluster10_SVD34 TextCluster10_SVD35 TextCluster10_SVD36 TextCluster10_SVD37
TextCluster10_SVD38 TextCluster10_SVD39 TextCluster10_SVD4 TextCluster10_SVD40
TextCluster10_SVD41 TextCluster10_SVD42 TextCluster10_SVD5 TextCluster10_SVD6
TextCluster10_SVD7 TextCluster10_SVD8 TextCluster10_SVD9 );
run;
*------------------------------------------------------------* ;
* Neural3: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Neural3: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster10_SVD1 TextCluster10_SVD10 TextCluster10_SVD11 TextCluster10_SVD12
   TextCluster10_SVD13 TextCluster10_SVD14 TextCluster10_SVD15 TextCluster10_SVD16
   TextCluster10_SVD17 TextCluster10_SVD18 TextCluster10_SVD19 TextCluster10_SVD2
   TextCluster10_SVD20 TextCluster10_SVD21 TextCluster10_SVD22 TextCluster10_SVD23
   TextCluster10_SVD24 TextCluster10_SVD25 TextCluster10_SVD26 TextCluster10_SVD27
   TextCluster10_SVD28 TextCluster10_SVD29 TextCluster10_SVD3 TextCluster10_SVD30
   TextCluster10_SVD31 TextCluster10_SVD32 TextCluster10_SVD33 TextCluster10_SVD34
   TextCluster10_SVD35 TextCluster10_SVD36 TextCluster10_SVD37 TextCluster10_SVD38
   TextCluster10_SVD39 TextCluster10_SVD4 TextCluster10_SVD40 TextCluster10_SVD41
   TextCluster10_SVD42 TextCluster10_SVD5 TextCluster10_SVD6 TextCluster10_SVD7
   TextCluster10_SVD8 TextCluster10_SVD9
%mend DMDBVar;
*------------------------------------------------------------*;
* Neural3: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_Neural3
dmdbcat=WORK.Neural3_DMDB
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
* Neural3: Interval Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;
    TextCluster10_SVD1 TextCluster10_SVD10 TextCluster10_SVD11 TextCluster10_SVD12
   TextCluster10_SVD13 TextCluster10_SVD14 TextCluster10_SVD15 TextCluster10_SVD16
   TextCluster10_SVD17 TextCluster10_SVD18 TextCluster10_SVD19 TextCluster10_SVD2
   TextCluster10_SVD20 TextCluster10_SVD21 TextCluster10_SVD22 TextCluster10_SVD23
   TextCluster10_SVD24 TextCluster10_SVD25 TextCluster10_SVD26 TextCluster10_SVD27
   TextCluster10_SVD28 TextCluster10_SVD29 TextCluster10_SVD3 TextCluster10_SVD30
   TextCluster10_SVD31 TextCluster10_SVD32 TextCluster10_SVD33 TextCluster10_SVD34
   TextCluster10_SVD35 TextCluster10_SVD36 TextCluster10_SVD37 TextCluster10_SVD38
   TextCluster10_SVD39 TextCluster10_SVD4 TextCluster10_SVD40 TextCluster10_SVD41
   TextCluster10_SVD42 TextCluster10_SVD5 TextCluster10_SVD6 TextCluster10_SVD7
   TextCluster10_SVD8 TextCluster10_SVD9
%mend INTINPUTS;
*------------------------------------------------------------* ;
* Neural3: Binary Inputs Macro ;
*------------------------------------------------------------* ;
%macro BININPUTS;

%mend BININPUTS;
*------------------------------------------------------------* ;
* Neural3: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;

%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Neural3: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;

%mend ORDINPUTS;
*------------------------------------------------------------*;
* Neural Network Training;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural3 dmdbcat=WORK.Neural3_DMDB
validdata = EMWS3.TextCluster10_VALIDATE
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
Outest=EMWS3.Neural3_PRELIM_OUTEST
;
save network=EMWS3.Neural3_NETWORK.dm_neural;
train Maxiter=50
maxtime=14400
Outest=EMWS3.Neural3_outest estiter=1
Outfit=EMWS3.Neural3_OUTFIT
;
run;
quit;
proc sort data=EMWS3.Neural3_OUTFIT(where=(_iter_ ne . and _NAME_="OVERALL")) out=fit_Neural3;
by _VAVERR_;
run;
%GLOBAL ITER;
data _null_;
set fit_Neural3(obs=1);
call symput('ITER',put(_ITER_, 6.));
run;
data EMWS3.Neural3_INITIAL;
set EMWS3.Neural3_outest(where=(_ITER_ eq &ITER and _OBJ_ ne .));
run;
*------------------------------------------------------------*;
* Neural Network Model Selection;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural3 dmdbcat=WORK.Neural3_DMDB
validdata = EMWS3.TextCluster10_VALIDATE
network = EMWS3.Neural3_NETWORK.dm_neural
random=12345
;
nloptions noprint;
performance alldetails noutilfile;
initial inest=EMWS3.Neural3_INITIAL;
train tech=NONE;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Neural3\SCORECODE.sas"
group=Neural3
;
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Neural3\RESIDUALSCORECODE.sas"
group=Neural3
residual
;
;
score data=EMWS3.TextCluster10_TRAIN out=_NULL_
outfit=WORK.FIT1
role=TRAIN
outkey=EMWS3.Neural3_OUTKEY;
score data=EMWS3.TextCluster10_VALIDATE out=_NULL_
outfit=WORK.FIT2
role=VALID
outkey=EMWS3.Neural3_OUTKEY;
score data=EMWS3.TextCluster10_TEST out=_NULL_
outfit=WORK.FIT3
role=TEST
outkey=EMWS3.Neural3_OUTKEY;
run;
quit;
data EMWS3.Neural3_OUTFIT;
merge WORK.FIT1 WORK.FIT2 WORK.FIT3;
run;
data EMWS3.Neural3_EMESTIMATE;
set EMWS3.Neural3_outest;
if _type_ ^in('HESSIAN' 'GRAD');
run;
proc datasets lib=work nolist;
delete EM_Neural3;
run;
quit;
