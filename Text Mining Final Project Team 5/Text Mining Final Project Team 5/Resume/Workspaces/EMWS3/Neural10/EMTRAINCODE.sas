*------------------------------------------------------------*;
* Neural10: Create decision matrix;
*------------------------------------------------------------*;
data WORK.Category(label="Category");
  length   Category                         $  32
           COUNT                                8
           DATAPRIOR                            8
           TRAINPRIOR                           8
           DECPRIOR                             8
           DECISION1                            8
           DECISION2                            8
           DECISION3                            8
           ;

  label    COUNT="Level Counts"
           DATAPRIOR="Data Proportions"
           TRAINPRIOR="Training Proportions"
           DECPRIOR="Decision Priors"
           DECISION1="INFORMATION-TECHNOLOGY"
           DECISION2="HR"
           DECISION3="DESIGNER"
           ;
Category="INFORMATION-TECHNOLOGY"; COUNT=3; DATAPRIOR=0.27272727272727; TRAINPRIOR=0.27272727272727; DECPRIOR=.; DECISION1=1; DECISION2=0; DECISION3=0;
output;
Category="HR"; COUNT=4; DATAPRIOR=0.36363636363636; TRAINPRIOR=0.36363636363636; DECPRIOR=.; DECISION1=0; DECISION2=1; DECISION3=0;
output;
Category="DESIGNER"; COUNT=4; DATAPRIOR=0.36363636363636; TRAINPRIOR=0.36363636363636; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=1;
output;
;
run;
proc datasets lib=work nolist;
modify Category(type=PROFIT label=Category);
label DECISION1= 'INFORMATION-TECHNOLOGY';
label DECISION2= 'HR';
label DECISION3= 'DESIGNER';
run;
quit;
data EM_Neural10;
set EMWS3.TextTopic2_TRAIN(keep=
Category TextCluster_SVD1 TextCluster_SVD10 TextCluster_SVD2 TextCluster_SVD3
TextCluster_SVD4 TextCluster_SVD5 TextCluster_SVD6 TextCluster_SVD7
TextCluster_SVD8 TextCluster_SVD9 TextTopic2_raw1 TextTopic2_raw2
TextTopic2_raw3 );
run;
*------------------------------------------------------------* ;
* Neural10: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Neural10: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster_SVD1 TextCluster_SVD10 TextCluster_SVD2 TextCluster_SVD3
   TextCluster_SVD4 TextCluster_SVD5 TextCluster_SVD6 TextCluster_SVD7
   TextCluster_SVD8 TextCluster_SVD9 TextTopic2_raw1 TextTopic2_raw2
   TextTopic2_raw3
%mend DMDBVar;
*------------------------------------------------------------*;
* Neural10: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_Neural10
dmdbcat=WORK.Neural10_DMDB
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
* Neural10: Interval Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;
    TextCluster_SVD1 TextCluster_SVD10 TextCluster_SVD2 TextCluster_SVD3
   TextCluster_SVD4 TextCluster_SVD5 TextCluster_SVD6 TextCluster_SVD7
   TextCluster_SVD8 TextCluster_SVD9 TextTopic2_raw1 TextTopic2_raw2
   TextTopic2_raw3
%mend INTINPUTS;
*------------------------------------------------------------* ;
* Neural10: Binary Inputs Macro ;
*------------------------------------------------------------* ;
%macro BININPUTS;

%mend BININPUTS;
*------------------------------------------------------------* ;
* Neural10: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;

%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Neural10: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;

%mend ORDINPUTS;
*------------------------------------------------------------*;
* Neural Network Training;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural10 dmdbcat=WORK.Neural10_DMDB
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
Outest=EMWS3.Neural10_PRELIM_OUTEST
;
save network=EMWS3.Neural10_NETWORK.dm_neural;
train Maxiter=50
maxtime=14400
Outest=EMWS3.Neural10_outest estiter=1
Outfit=EMWS3.Neural10_OUTFIT
;
run;
quit;
proc sort data=EMWS3.Neural10_OUTFIT(where=(_iter_ ne . and _NAME_="OVERALL")) out=fit_Neural10;
by _AVERR_;
run;
%GLOBAL ITER;
data _null_;
set fit_Neural10(obs=1);
call symput('ITER',put(_ITER_, 6.));
run;
data EMWS3.Neural10_INITIAL;
set EMWS3.Neural10_outest(where=(_ITER_ eq &ITER and _OBJ_ ne .));
run;
*------------------------------------------------------------*;
* Neural Network Model Selection;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural10 dmdbcat=WORK.Neural10_DMDB
network = EMWS3.Neural10_NETWORK.dm_neural
random=12345
;
nloptions noprint;
performance alldetails noutilfile;
initial inest=EMWS3.Neural10_INITIAL;
train tech=NONE;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Neural10\SCORECODE.sas"
group=Neural10
;
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Neural10\RESIDUALSCORECODE.sas"
group=Neural10
residual
;
;
score data=EMWS3.TextTopic2_TRAIN out=_NULL_
outfit=WORK.FIT1
role=TRAIN
outkey=EMWS3.Neural10_OUTKEY;
run;
quit;
data EMWS3.Neural10_OUTFIT;
merge WORK.FIT1;
run;
data EMWS3.Neural10_EMESTIMATE;
set EMWS3.Neural10_outest;
if _type_ ^in('HESSIAN' 'GRAD');
run;
proc datasets lib=work nolist;
delete EM_Neural10;
run;
quit;
