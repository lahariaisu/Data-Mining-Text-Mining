*------------------------------------------------------------*;
* Reg2: Create decision matrix;
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
* Reg2: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg2: DMDBVar Macro ;
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
* Reg2: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg2_DMDB
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
* Reg2: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg2_DMDB
validata = EMWS3.TextCluster5_VALIDATE
outest = EMWS3.Reg2_EMESTIMATE
outterms = EMWS3.Reg2_OUTTERMS
outmap= EMWS3.Reg2_MAPDS namelen=200
;
class
Category
;
model Category =
TextCluster5_SVD1
TextCluster5_SVD10
TextCluster5_SVD100
TextCluster5_SVD11
TextCluster5_SVD12
TextCluster5_SVD13
TextCluster5_SVD14
TextCluster5_SVD15
TextCluster5_SVD16
TextCluster5_SVD17
TextCluster5_SVD18
TextCluster5_SVD19
TextCluster5_SVD2
TextCluster5_SVD20
TextCluster5_SVD21
TextCluster5_SVD22
TextCluster5_SVD23
TextCluster5_SVD24
TextCluster5_SVD25
TextCluster5_SVD26
TextCluster5_SVD27
TextCluster5_SVD28
TextCluster5_SVD29
TextCluster5_SVD3
TextCluster5_SVD30
TextCluster5_SVD31
TextCluster5_SVD32
TextCluster5_SVD33
TextCluster5_SVD34
TextCluster5_SVD35
TextCluster5_SVD36
TextCluster5_SVD37
TextCluster5_SVD38
TextCluster5_SVD39
TextCluster5_SVD4
TextCluster5_SVD40
TextCluster5_SVD41
TextCluster5_SVD42
TextCluster5_SVD43
TextCluster5_SVD44
TextCluster5_SVD45
TextCluster5_SVD46
TextCluster5_SVD47
TextCluster5_SVD48
TextCluster5_SVD49
TextCluster5_SVD5
TextCluster5_SVD50
TextCluster5_SVD51
TextCluster5_SVD52
TextCluster5_SVD53
TextCluster5_SVD54
TextCluster5_SVD55
TextCluster5_SVD56
TextCluster5_SVD57
TextCluster5_SVD58
TextCluster5_SVD59
TextCluster5_SVD6
TextCluster5_SVD60
TextCluster5_SVD61
TextCluster5_SVD62
TextCluster5_SVD63
TextCluster5_SVD64
TextCluster5_SVD65
TextCluster5_SVD66
TextCluster5_SVD67
TextCluster5_SVD68
TextCluster5_SVD69
TextCluster5_SVD7
TextCluster5_SVD70
TextCluster5_SVD71
TextCluster5_SVD72
TextCluster5_SVD73
TextCluster5_SVD74
TextCluster5_SVD75
TextCluster5_SVD76
TextCluster5_SVD77
TextCluster5_SVD78
TextCluster5_SVD79
TextCluster5_SVD8
TextCluster5_SVD80
TextCluster5_SVD81
TextCluster5_SVD82
TextCluster5_SVD83
TextCluster5_SVD84
TextCluster5_SVD85
TextCluster5_SVD86
TextCluster5_SVD87
TextCluster5_SVD88
TextCluster5_SVD89
TextCluster5_SVD9
TextCluster5_SVD90
TextCluster5_SVD91
TextCluster5_SVD92
TextCluster5_SVD93
TextCluster5_SVD94
TextCluster5_SVD95
TextCluster5_SVD96
TextCluster5_SVD97
TextCluster5_SVD98
TextCluster5_SVD99
/level=nominal
coding=DEVIATION
nodesignprint
selection=STEPWISE choose=VERROR
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS3.TextCluster5_TEST
out=_null_
outfit=EMWS3.Reg2_FITTEST
role = TEST
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg2\EMPUBLISHSCORE.sas"
group=Reg2
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg2\EMFLOWSCORE.sas"
group=Reg2
residual
;
run;
quit;
