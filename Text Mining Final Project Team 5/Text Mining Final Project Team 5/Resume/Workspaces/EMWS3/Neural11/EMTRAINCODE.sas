*------------------------------------------------------------*;
* Neural11: Create decision matrix;
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
data EM_Neural11;
set EMWS3.Meta_TRAIN(keep=
Category TextCluster13_SVD1 TextCluster13_SVD10 TextCluster13_SVD100
TextCluster13_SVD11 TextCluster13_SVD12 TextCluster13_SVD13 TextCluster13_SVD14
TextCluster13_SVD15 TextCluster13_SVD16 TextCluster13_SVD17 TextCluster13_SVD18
TextCluster13_SVD19 TextCluster13_SVD2 TextCluster13_SVD20 TextCluster13_SVD21
TextCluster13_SVD22 TextCluster13_SVD23 TextCluster13_SVD24 TextCluster13_SVD25
TextCluster13_SVD26 TextCluster13_SVD27 TextCluster13_SVD28 TextCluster13_SVD29
TextCluster13_SVD3 TextCluster13_SVD30 TextCluster13_SVD31 TextCluster13_SVD32
TextCluster13_SVD33 TextCluster13_SVD34 TextCluster13_SVD35 TextCluster13_SVD36
TextCluster13_SVD37 TextCluster13_SVD38 TextCluster13_SVD39 TextCluster13_SVD4
TextCluster13_SVD40 TextCluster13_SVD41 TextCluster13_SVD42 TextCluster13_SVD43
TextCluster13_SVD44 TextCluster13_SVD45 TextCluster13_SVD46 TextCluster13_SVD47
TextCluster13_SVD48 TextCluster13_SVD49 TextCluster13_SVD5 TextCluster13_SVD50
TextCluster13_SVD51 TextCluster13_SVD52 TextCluster13_SVD53 TextCluster13_SVD54
TextCluster13_SVD55 TextCluster13_SVD56 TextCluster13_SVD57 TextCluster13_SVD58
TextCluster13_SVD59 TextCluster13_SVD6 TextCluster13_SVD60 TextCluster13_SVD61
TextCluster13_SVD62 TextCluster13_SVD63 TextCluster13_SVD64 TextCluster13_SVD65
TextCluster13_SVD66 TextCluster13_SVD67 TextCluster13_SVD68 TextCluster13_SVD69
TextCluster13_SVD7 TextCluster13_SVD70 TextCluster13_SVD71 TextCluster13_SVD72
TextCluster13_SVD73 TextCluster13_SVD74 TextCluster13_SVD75 TextCluster13_SVD76
TextCluster13_SVD77 TextCluster13_SVD78 TextCluster13_SVD79 TextCluster13_SVD8
TextCluster13_SVD80 TextCluster13_SVD81 TextCluster13_SVD82 TextCluster13_SVD83
TextCluster13_SVD84 TextCluster13_SVD85 TextCluster13_SVD86 TextCluster13_SVD87
TextCluster13_SVD88 TextCluster13_SVD89 TextCluster13_SVD9 TextCluster13_SVD90
TextCluster13_SVD91 TextCluster13_SVD92 TextCluster13_SVD93 TextCluster13_SVD94
TextCluster13_SVD95 TextCluster13_SVD96 TextCluster13_SVD97 TextCluster13_SVD98
TextCluster13_SVD99 TextTopic_raw1 TextTopic_raw10 TextTopic_raw11
TextTopic_raw12 TextTopic_raw2 TextTopic_raw3 TextTopic_raw4 TextTopic_raw5
TextTopic_raw6 TextTopic_raw7 TextTopic_raw8 TextTopic_raw9 );
run;
*------------------------------------------------------------* ;
* Neural11: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Neural11: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster13_SVD1 TextCluster13_SVD10 TextCluster13_SVD100
   TextCluster13_SVD11 TextCluster13_SVD12 TextCluster13_SVD13 TextCluster13_SVD14
   TextCluster13_SVD15 TextCluster13_SVD16 TextCluster13_SVD17 TextCluster13_SVD18
   TextCluster13_SVD19 TextCluster13_SVD2 TextCluster13_SVD20 TextCluster13_SVD21
   TextCluster13_SVD22 TextCluster13_SVD23 TextCluster13_SVD24 TextCluster13_SVD25
   TextCluster13_SVD26 TextCluster13_SVD27 TextCluster13_SVD28 TextCluster13_SVD29
   TextCluster13_SVD3 TextCluster13_SVD30 TextCluster13_SVD31 TextCluster13_SVD32
   TextCluster13_SVD33 TextCluster13_SVD34 TextCluster13_SVD35 TextCluster13_SVD36
   TextCluster13_SVD37 TextCluster13_SVD38 TextCluster13_SVD39 TextCluster13_SVD4
   TextCluster13_SVD40 TextCluster13_SVD41 TextCluster13_SVD42 TextCluster13_SVD43
   TextCluster13_SVD44 TextCluster13_SVD45 TextCluster13_SVD46 TextCluster13_SVD47
   TextCluster13_SVD48 TextCluster13_SVD49 TextCluster13_SVD5 TextCluster13_SVD50
   TextCluster13_SVD51 TextCluster13_SVD52 TextCluster13_SVD53 TextCluster13_SVD54
   TextCluster13_SVD55 TextCluster13_SVD56 TextCluster13_SVD57 TextCluster13_SVD58
   TextCluster13_SVD59 TextCluster13_SVD6 TextCluster13_SVD60 TextCluster13_SVD61
   TextCluster13_SVD62 TextCluster13_SVD63 TextCluster13_SVD64 TextCluster13_SVD65
   TextCluster13_SVD66 TextCluster13_SVD67 TextCluster13_SVD68 TextCluster13_SVD69
   TextCluster13_SVD7 TextCluster13_SVD70 TextCluster13_SVD71 TextCluster13_SVD72
   TextCluster13_SVD73 TextCluster13_SVD74 TextCluster13_SVD75 TextCluster13_SVD76
   TextCluster13_SVD77 TextCluster13_SVD78 TextCluster13_SVD79 TextCluster13_SVD8
   TextCluster13_SVD80 TextCluster13_SVD81 TextCluster13_SVD82 TextCluster13_SVD83
   TextCluster13_SVD84 TextCluster13_SVD85 TextCluster13_SVD86 TextCluster13_SVD87
   TextCluster13_SVD88 TextCluster13_SVD89 TextCluster13_SVD9 TextCluster13_SVD90
   TextCluster13_SVD91 TextCluster13_SVD92 TextCluster13_SVD93 TextCluster13_SVD94
   TextCluster13_SVD95 TextCluster13_SVD96 TextCluster13_SVD97 TextCluster13_SVD98
   TextCluster13_SVD99 TextTopic_raw1 TextTopic_raw10 TextTopic_raw11
   TextTopic_raw12 TextTopic_raw2 TextTopic_raw3 TextTopic_raw4 TextTopic_raw5
   TextTopic_raw6 TextTopic_raw7 TextTopic_raw8 TextTopic_raw9
%mend DMDBVar;
*------------------------------------------------------------*;
* Neural11: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_Neural11
dmdbcat=WORK.Neural11_DMDB
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
* Neural11: Interval Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;
    TextCluster13_SVD1 TextCluster13_SVD10 TextCluster13_SVD100
   TextCluster13_SVD11 TextCluster13_SVD12 TextCluster13_SVD13 TextCluster13_SVD14
   TextCluster13_SVD15 TextCluster13_SVD16 TextCluster13_SVD17 TextCluster13_SVD18
   TextCluster13_SVD19 TextCluster13_SVD2 TextCluster13_SVD20 TextCluster13_SVD21
   TextCluster13_SVD22 TextCluster13_SVD23 TextCluster13_SVD24 TextCluster13_SVD25
   TextCluster13_SVD26 TextCluster13_SVD27 TextCluster13_SVD28 TextCluster13_SVD29
   TextCluster13_SVD3 TextCluster13_SVD30 TextCluster13_SVD31 TextCluster13_SVD32
   TextCluster13_SVD33 TextCluster13_SVD34 TextCluster13_SVD35 TextCluster13_SVD36
   TextCluster13_SVD37 TextCluster13_SVD38 TextCluster13_SVD39 TextCluster13_SVD4
   TextCluster13_SVD40 TextCluster13_SVD41 TextCluster13_SVD42 TextCluster13_SVD43
   TextCluster13_SVD44 TextCluster13_SVD45 TextCluster13_SVD46 TextCluster13_SVD47
   TextCluster13_SVD48 TextCluster13_SVD49 TextCluster13_SVD5 TextCluster13_SVD50
   TextCluster13_SVD51 TextCluster13_SVD52 TextCluster13_SVD53 TextCluster13_SVD54
   TextCluster13_SVD55 TextCluster13_SVD56 TextCluster13_SVD57 TextCluster13_SVD58
   TextCluster13_SVD59 TextCluster13_SVD6 TextCluster13_SVD60 TextCluster13_SVD61
   TextCluster13_SVD62 TextCluster13_SVD63 TextCluster13_SVD64 TextCluster13_SVD65
   TextCluster13_SVD66 TextCluster13_SVD67 TextCluster13_SVD68 TextCluster13_SVD69
   TextCluster13_SVD7 TextCluster13_SVD70 TextCluster13_SVD71 TextCluster13_SVD72
   TextCluster13_SVD73 TextCluster13_SVD74 TextCluster13_SVD75 TextCluster13_SVD76
   TextCluster13_SVD77 TextCluster13_SVD78 TextCluster13_SVD79 TextCluster13_SVD8
   TextCluster13_SVD80 TextCluster13_SVD81 TextCluster13_SVD82 TextCluster13_SVD83
   TextCluster13_SVD84 TextCluster13_SVD85 TextCluster13_SVD86 TextCluster13_SVD87
   TextCluster13_SVD88 TextCluster13_SVD89 TextCluster13_SVD9 TextCluster13_SVD90
   TextCluster13_SVD91 TextCluster13_SVD92 TextCluster13_SVD93 TextCluster13_SVD94
   TextCluster13_SVD95 TextCluster13_SVD96 TextCluster13_SVD97 TextCluster13_SVD98
   TextCluster13_SVD99 TextTopic_raw1 TextTopic_raw10 TextTopic_raw11
   TextTopic_raw12 TextTopic_raw2 TextTopic_raw3 TextTopic_raw4 TextTopic_raw5
   TextTopic_raw6 TextTopic_raw7 TextTopic_raw8 TextTopic_raw9
%mend INTINPUTS;
*------------------------------------------------------------* ;
* Neural11: Binary Inputs Macro ;
*------------------------------------------------------------* ;
%macro BININPUTS;

%mend BININPUTS;
*------------------------------------------------------------* ;
* Neural11: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;

%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Neural11: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;

%mend ORDINPUTS;
*------------------------------------------------------------*;
* Neural Network Training;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural11 dmdbcat=WORK.Neural11_DMDB
validdata = EMWS3.Meta_VALIDATE
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
Outest=EMWS3.Neural11_PRELIM_OUTEST
;
save network=EMWS3.Neural11_NETWORK.dm_neural;
train Maxiter=50
maxtime=14400
Outest=EMWS3.Neural11_outest estiter=1
Outfit=EMWS3.Neural11_OUTFIT
;
run;
quit;
proc sort data=EMWS3.Neural11_OUTFIT(where=(_iter_ ne . and _NAME_="OVERALL")) out=fit_Neural11;
by _VAVERR_;
run;
%GLOBAL ITER;
data _null_;
set fit_Neural11(obs=1);
call symput('ITER',put(_ITER_, 6.));
run;
data EMWS3.Neural11_INITIAL;
set EMWS3.Neural11_outest(where=(_ITER_ eq &ITER and _OBJ_ ne .));
run;
*------------------------------------------------------------*;
* Neural Network Model Selection;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural11 dmdbcat=WORK.Neural11_DMDB
validdata = EMWS3.Meta_VALIDATE
network = EMWS3.Neural11_NETWORK.dm_neural
random=12345
;
nloptions noprint;
performance alldetails noutilfile;
initial inest=EMWS3.Neural11_INITIAL;
train tech=NONE;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Neural11\SCORECODE.sas"
group=Neural11
;
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Neural11\RESIDUALSCORECODE.sas"
group=Neural11
residual
;
;
score data=EMWS3.Meta_TRAIN out=_NULL_
outfit=WORK.FIT1
role=TRAIN
outkey=EMWS3.Neural11_OUTKEY;
score data=EMWS3.Meta_VALIDATE out=_NULL_
outfit=WORK.FIT2
role=VALID
outkey=EMWS3.Neural11_OUTKEY;
score data=EMWS3.Meta_TEST out=_NULL_
outfit=WORK.FIT3
role=TEST
outkey=EMWS3.Neural11_OUTKEY;
run;
quit;
data EMWS3.Neural11_OUTFIT;
merge WORK.FIT1 WORK.FIT2 WORK.FIT3;
run;
data EMWS3.Neural11_EMESTIMATE;
set EMWS3.Neural11_outest;
if _type_ ^in('HESSIAN' 'GRAD');
run;
proc datasets lib=work nolist;
delete EM_Neural11;
run;
quit;
