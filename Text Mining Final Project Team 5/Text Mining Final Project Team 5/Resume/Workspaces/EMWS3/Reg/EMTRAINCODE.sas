*------------------------------------------------------------*;
* Reg: Create decision matrix;
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
set EMWS3.TextCluster4_TRAIN(keep=
Category TextCluster4_SVD1 TextCluster4_SVD10 TextCluster4_SVD11
TextCluster4_SVD12 TextCluster4_SVD13 TextCluster4_SVD14 TextCluster4_SVD15
TextCluster4_SVD16 TextCluster4_SVD17 TextCluster4_SVD18 TextCluster4_SVD19
TextCluster4_SVD2 TextCluster4_SVD20 TextCluster4_SVD21 TextCluster4_SVD22
TextCluster4_SVD23 TextCluster4_SVD24 TextCluster4_SVD25 TextCluster4_SVD26
TextCluster4_SVD27 TextCluster4_SVD28 TextCluster4_SVD29 TextCluster4_SVD3
TextCluster4_SVD30 TextCluster4_SVD31 TextCluster4_SVD32 TextCluster4_SVD33
TextCluster4_SVD34 TextCluster4_SVD35 TextCluster4_SVD36 TextCluster4_SVD37
TextCluster4_SVD38 TextCluster4_SVD39 TextCluster4_SVD4 TextCluster4_SVD40
TextCluster4_SVD41 TextCluster4_SVD42 TextCluster4_SVD43 TextCluster4_SVD44
TextCluster4_SVD45 TextCluster4_SVD46 TextCluster4_SVD47 TextCluster4_SVD48
TextCluster4_SVD49 TextCluster4_SVD5 TextCluster4_SVD50 TextCluster4_SVD51
TextCluster4_SVD52 TextCluster4_SVD53 TextCluster4_SVD54 TextCluster4_SVD55
TextCluster4_SVD56 TextCluster4_SVD57 TextCluster4_SVD58 TextCluster4_SVD59
TextCluster4_SVD6 TextCluster4_SVD60 TextCluster4_SVD61 TextCluster4_SVD62
TextCluster4_SVD63 TextCluster4_SVD64 TextCluster4_SVD65 TextCluster4_SVD66
TextCluster4_SVD67 TextCluster4_SVD68 TextCluster4_SVD7 TextCluster4_SVD8
TextCluster4_SVD9 );
run;
*------------------------------------------------------------* ;
* Reg: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster4_SVD1 TextCluster4_SVD10 TextCluster4_SVD11 TextCluster4_SVD12
   TextCluster4_SVD13 TextCluster4_SVD14 TextCluster4_SVD15 TextCluster4_SVD16
   TextCluster4_SVD17 TextCluster4_SVD18 TextCluster4_SVD19 TextCluster4_SVD2
   TextCluster4_SVD20 TextCluster4_SVD21 TextCluster4_SVD22 TextCluster4_SVD23
   TextCluster4_SVD24 TextCluster4_SVD25 TextCluster4_SVD26 TextCluster4_SVD27
   TextCluster4_SVD28 TextCluster4_SVD29 TextCluster4_SVD3 TextCluster4_SVD30
   TextCluster4_SVD31 TextCluster4_SVD32 TextCluster4_SVD33 TextCluster4_SVD34
   TextCluster4_SVD35 TextCluster4_SVD36 TextCluster4_SVD37 TextCluster4_SVD38
   TextCluster4_SVD39 TextCluster4_SVD4 TextCluster4_SVD40 TextCluster4_SVD41
   TextCluster4_SVD42 TextCluster4_SVD43 TextCluster4_SVD44 TextCluster4_SVD45
   TextCluster4_SVD46 TextCluster4_SVD47 TextCluster4_SVD48 TextCluster4_SVD49
   TextCluster4_SVD5 TextCluster4_SVD50 TextCluster4_SVD51 TextCluster4_SVD52
   TextCluster4_SVD53 TextCluster4_SVD54 TextCluster4_SVD55 TextCluster4_SVD56
   TextCluster4_SVD57 TextCluster4_SVD58 TextCluster4_SVD59 TextCluster4_SVD6
   TextCluster4_SVD60 TextCluster4_SVD61 TextCluster4_SVD62 TextCluster4_SVD63
   TextCluster4_SVD64 TextCluster4_SVD65 TextCluster4_SVD66 TextCluster4_SVD67
   TextCluster4_SVD68 TextCluster4_SVD7 TextCluster4_SVD8 TextCluster4_SVD9
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg_DMDB
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
* Reg: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg_DMDB
validata = EMWS3.TextCluster4_VALIDATE
outest = EMWS3.Reg_EMESTIMATE
outterms = EMWS3.Reg_OUTTERMS
outmap= EMWS3.Reg_MAPDS namelen=200
;
class
Category
;
model Category =
TextCluster4_SVD1
TextCluster4_SVD10
TextCluster4_SVD11
TextCluster4_SVD12
TextCluster4_SVD13
TextCluster4_SVD14
TextCluster4_SVD15
TextCluster4_SVD16
TextCluster4_SVD17
TextCluster4_SVD18
TextCluster4_SVD19
TextCluster4_SVD2
TextCluster4_SVD20
TextCluster4_SVD21
TextCluster4_SVD22
TextCluster4_SVD23
TextCluster4_SVD24
TextCluster4_SVD25
TextCluster4_SVD26
TextCluster4_SVD27
TextCluster4_SVD28
TextCluster4_SVD29
TextCluster4_SVD3
TextCluster4_SVD30
TextCluster4_SVD31
TextCluster4_SVD32
TextCluster4_SVD33
TextCluster4_SVD34
TextCluster4_SVD35
TextCluster4_SVD36
TextCluster4_SVD37
TextCluster4_SVD38
TextCluster4_SVD39
TextCluster4_SVD4
TextCluster4_SVD40
TextCluster4_SVD41
TextCluster4_SVD42
TextCluster4_SVD43
TextCluster4_SVD44
TextCluster4_SVD45
TextCluster4_SVD46
TextCluster4_SVD47
TextCluster4_SVD48
TextCluster4_SVD49
TextCluster4_SVD5
TextCluster4_SVD50
TextCluster4_SVD51
TextCluster4_SVD52
TextCluster4_SVD53
TextCluster4_SVD54
TextCluster4_SVD55
TextCluster4_SVD56
TextCluster4_SVD57
TextCluster4_SVD58
TextCluster4_SVD59
TextCluster4_SVD6
TextCluster4_SVD60
TextCluster4_SVD61
TextCluster4_SVD62
TextCluster4_SVD63
TextCluster4_SVD64
TextCluster4_SVD65
TextCluster4_SVD66
TextCluster4_SVD67
TextCluster4_SVD68
TextCluster4_SVD7
TextCluster4_SVD8
TextCluster4_SVD9
/level=nominal
coding=DEVIATION
nodesignprint
selection=STEPWISE choose=VERROR
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS3.TextCluster4_TEST
out=_null_
outfit=EMWS3.Reg_FITTEST
role = TEST
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg\EMPUBLISHSCORE.sas"
group=Reg
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg\EMFLOWSCORE.sas"
group=Reg
residual
;
run;
quit;
