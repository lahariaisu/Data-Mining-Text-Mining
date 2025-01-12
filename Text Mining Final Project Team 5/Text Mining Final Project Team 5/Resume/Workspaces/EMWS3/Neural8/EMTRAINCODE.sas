*------------------------------------------------------------*;
* Neural8: Create decision matrix;
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
data EM_Neural8;
set EMWS3.TextCluster9_TRAIN(keep=
Category TextCluster9_SVD1 TextCluster9_SVD10 TextCluster9_SVD11
TextCluster9_SVD12 TextCluster9_SVD13 TextCluster9_SVD14 TextCluster9_SVD15
TextCluster9_SVD16 TextCluster9_SVD17 TextCluster9_SVD18 TextCluster9_SVD19
TextCluster9_SVD2 TextCluster9_SVD20 TextCluster9_SVD21 TextCluster9_SVD22
TextCluster9_SVD23 TextCluster9_SVD24 TextCluster9_SVD25 TextCluster9_SVD26
TextCluster9_SVD27 TextCluster9_SVD28 TextCluster9_SVD29 TextCluster9_SVD3
TextCluster9_SVD30 TextCluster9_SVD31 TextCluster9_SVD32 TextCluster9_SVD33
TextCluster9_SVD4 TextCluster9_SVD5 TextCluster9_SVD6 TextCluster9_SVD7
TextCluster9_SVD8 TextCluster9_SVD9 );
run;
*------------------------------------------------------------* ;
* Neural8: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Neural8: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster9_SVD1 TextCluster9_SVD10 TextCluster9_SVD11 TextCluster9_SVD12
   TextCluster9_SVD13 TextCluster9_SVD14 TextCluster9_SVD15 TextCluster9_SVD16
   TextCluster9_SVD17 TextCluster9_SVD18 TextCluster9_SVD19 TextCluster9_SVD2
   TextCluster9_SVD20 TextCluster9_SVD21 TextCluster9_SVD22 TextCluster9_SVD23
   TextCluster9_SVD24 TextCluster9_SVD25 TextCluster9_SVD26 TextCluster9_SVD27
   TextCluster9_SVD28 TextCluster9_SVD29 TextCluster9_SVD3 TextCluster9_SVD30
   TextCluster9_SVD31 TextCluster9_SVD32 TextCluster9_SVD33 TextCluster9_SVD4
   TextCluster9_SVD5 TextCluster9_SVD6 TextCluster9_SVD7 TextCluster9_SVD8
   TextCluster9_SVD9
%mend DMDBVar;
*------------------------------------------------------------*;
* Neural8: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_Neural8
dmdbcat=WORK.Neural8_DMDB
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
* Neural8: Interval Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;
    TextCluster9_SVD1 TextCluster9_SVD10 TextCluster9_SVD11 TextCluster9_SVD12
   TextCluster9_SVD13 TextCluster9_SVD14 TextCluster9_SVD15 TextCluster9_SVD16
   TextCluster9_SVD17 TextCluster9_SVD18 TextCluster9_SVD19 TextCluster9_SVD2
   TextCluster9_SVD20 TextCluster9_SVD21 TextCluster9_SVD22 TextCluster9_SVD23
   TextCluster9_SVD24 TextCluster9_SVD25 TextCluster9_SVD26 TextCluster9_SVD27
   TextCluster9_SVD28 TextCluster9_SVD29 TextCluster9_SVD3 TextCluster9_SVD30
   TextCluster9_SVD31 TextCluster9_SVD32 TextCluster9_SVD33 TextCluster9_SVD4
   TextCluster9_SVD5 TextCluster9_SVD6 TextCluster9_SVD7 TextCluster9_SVD8
   TextCluster9_SVD9
%mend INTINPUTS;
*------------------------------------------------------------* ;
* Neural8: Binary Inputs Macro ;
*------------------------------------------------------------* ;
%macro BININPUTS;

%mend BININPUTS;
*------------------------------------------------------------* ;
* Neural8: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;

%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Neural8: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;

%mend ORDINPUTS;
*------------------------------------------------------------*;
* Neural Network Training;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural8 dmdbcat=WORK.Neural8_DMDB
validdata = EMWS3.TextCluster9_VALIDATE
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
Outest=EMWS3.Neural8_PRELIM_OUTEST
;
save network=EMWS3.Neural8_NETWORK.dm_neural;
train Maxiter=50
maxtime=14400
Outest=EMWS3.Neural8_outest estiter=1
Outfit=EMWS3.Neural8_OUTFIT
;
run;
quit;
proc sort data=EMWS3.Neural8_OUTFIT(where=(_iter_ ne . and _NAME_="OVERALL")) out=fit_Neural8;
by _VAVERR_;
run;
%GLOBAL ITER;
data _null_;
set fit_Neural8(obs=1);
call symput('ITER',put(_ITER_, 6.));
run;
data EMWS3.Neural8_INITIAL;
set EMWS3.Neural8_outest(where=(_ITER_ eq &ITER and _OBJ_ ne .));
run;
*------------------------------------------------------------*;
* Neural Network Model Selection;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural8 dmdbcat=WORK.Neural8_DMDB
validdata = EMWS3.TextCluster9_VALIDATE
network = EMWS3.Neural8_NETWORK.dm_neural
random=12345
;
nloptions noprint;
performance alldetails noutilfile;
initial inest=EMWS3.Neural8_INITIAL;
train tech=NONE;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Neural8\SCORECODE.sas"
group=Neural8
;
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Neural8\RESIDUALSCORECODE.sas"
group=Neural8
residual
;
;
score data=EMWS3.TextCluster9_TRAIN out=_NULL_
outfit=WORK.FIT1
role=TRAIN
outkey=EMWS3.Neural8_OUTKEY;
score data=EMWS3.TextCluster9_VALIDATE out=_NULL_
outfit=WORK.FIT2
role=VALID
outkey=EMWS3.Neural8_OUTKEY;
score data=EMWS3.TextCluster9_TEST out=_NULL_
outfit=WORK.FIT3
role=TEST
outkey=EMWS3.Neural8_OUTKEY;
run;
quit;
data EMWS3.Neural8_OUTFIT;
merge WORK.FIT1 WORK.FIT2 WORK.FIT3;
run;
data EMWS3.Neural8_EMESTIMATE;
set EMWS3.Neural8_outest;
if _type_ ^in('HESSIAN' 'GRAD');
run;
proc datasets lib=work nolist;
delete EM_Neural8;
run;
quit;
