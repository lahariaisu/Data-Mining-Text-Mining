*------------------------------------------------------------*;
* Reg6: Create decision matrix;
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
data EM_DMREG / view=EM_DMREG;
set EMWS3.TextCluster6_TRAIN(keep=
Category TextCluster6_SVD1 TextCluster6_SVD10 TextCluster6_SVD11
TextCluster6_SVD12 TextCluster6_SVD13 TextCluster6_SVD14 TextCluster6_SVD15
TextCluster6_SVD16 TextCluster6_SVD17 TextCluster6_SVD18 TextCluster6_SVD19
TextCluster6_SVD2 TextCluster6_SVD20 TextCluster6_SVD21 TextCluster6_SVD22
TextCluster6_SVD23 TextCluster6_SVD24 TextCluster6_SVD25 TextCluster6_SVD26
TextCluster6_SVD27 TextCluster6_SVD28 TextCluster6_SVD29 TextCluster6_SVD3
TextCluster6_SVD30 TextCluster6_SVD31 TextCluster6_SVD32 TextCluster6_SVD33
TextCluster6_SVD34 TextCluster6_SVD35 TextCluster6_SVD36 TextCluster6_SVD37
TextCluster6_SVD38 TextCluster6_SVD39 TextCluster6_SVD4 TextCluster6_SVD40
TextCluster6_SVD41 TextCluster6_SVD42 TextCluster6_SVD43 TextCluster6_SVD44
TextCluster6_SVD5 TextCluster6_SVD6 TextCluster6_SVD7 TextCluster6_SVD8
TextCluster6_SVD9 );
run;
*------------------------------------------------------------* ;
* Reg6: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg6: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster6_SVD1 TextCluster6_SVD10 TextCluster6_SVD11 TextCluster6_SVD12
   TextCluster6_SVD13 TextCluster6_SVD14 TextCluster6_SVD15 TextCluster6_SVD16
   TextCluster6_SVD17 TextCluster6_SVD18 TextCluster6_SVD19 TextCluster6_SVD2
   TextCluster6_SVD20 TextCluster6_SVD21 TextCluster6_SVD22 TextCluster6_SVD23
   TextCluster6_SVD24 TextCluster6_SVD25 TextCluster6_SVD26 TextCluster6_SVD27
   TextCluster6_SVD28 TextCluster6_SVD29 TextCluster6_SVD3 TextCluster6_SVD30
   TextCluster6_SVD31 TextCluster6_SVD32 TextCluster6_SVD33 TextCluster6_SVD34
   TextCluster6_SVD35 TextCluster6_SVD36 TextCluster6_SVD37 TextCluster6_SVD38
   TextCluster6_SVD39 TextCluster6_SVD4 TextCluster6_SVD40 TextCluster6_SVD41
   TextCluster6_SVD42 TextCluster6_SVD43 TextCluster6_SVD44 TextCluster6_SVD5
   TextCluster6_SVD6 TextCluster6_SVD7 TextCluster6_SVD8 TextCluster6_SVD9
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg6: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg6_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
Category
;
run;
quit;
*------------------------------------------------------------*;
* Reg6: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg6_DMDB
validata = EMWS3.TextCluster6_VALIDATE
outest = EMWS3.Reg6_EMESTIMATE
outterms = EMWS3.Reg6_OUTTERMS
outmap= EMWS3.Reg6_MAPDS namelen=200
;
class
Category
;
model Category =
TextCluster6_SVD1
TextCluster6_SVD10
TextCluster6_SVD11
TextCluster6_SVD12
TextCluster6_SVD13
TextCluster6_SVD14
TextCluster6_SVD15
TextCluster6_SVD16
TextCluster6_SVD17
TextCluster6_SVD18
TextCluster6_SVD19
TextCluster6_SVD2
TextCluster6_SVD20
TextCluster6_SVD21
TextCluster6_SVD22
TextCluster6_SVD23
TextCluster6_SVD24
TextCluster6_SVD25
TextCluster6_SVD26
TextCluster6_SVD27
TextCluster6_SVD28
TextCluster6_SVD29
TextCluster6_SVD3
TextCluster6_SVD30
TextCluster6_SVD31
TextCluster6_SVD32
TextCluster6_SVD33
TextCluster6_SVD34
TextCluster6_SVD35
TextCluster6_SVD36
TextCluster6_SVD37
TextCluster6_SVD38
TextCluster6_SVD39
TextCluster6_SVD4
TextCluster6_SVD40
TextCluster6_SVD41
TextCluster6_SVD42
TextCluster6_SVD43
TextCluster6_SVD44
TextCluster6_SVD5
TextCluster6_SVD6
TextCluster6_SVD7
TextCluster6_SVD8
TextCluster6_SVD9
/level=nominal
coding=DEVIATION
nodesignprint
selection=STEPWISE choose=VERROR
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS3.TextCluster6_TEST
out=_null_
outfit=EMWS3.Reg6_FITTEST
role = TEST
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg6\EMPUBLISHSCORE.sas"
group=Reg6
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg6\EMFLOWSCORE.sas"
group=Reg6
residual
;
run;
quit;
