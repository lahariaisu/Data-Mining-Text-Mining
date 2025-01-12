*------------------------------------------------------------*;
* Reg8: Create decision matrix;
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
set EMWS3.TextCluster12_TRAIN(keep=
Category TextCluster12_SVD1 TextCluster12_SVD10 TextCluster12_SVD100
TextCluster12_SVD11 TextCluster12_SVD12 TextCluster12_SVD13 TextCluster12_SVD14
TextCluster12_SVD15 TextCluster12_SVD16 TextCluster12_SVD17 TextCluster12_SVD18
TextCluster12_SVD19 TextCluster12_SVD2 TextCluster12_SVD20 TextCluster12_SVD21
TextCluster12_SVD22 TextCluster12_SVD23 TextCluster12_SVD24 TextCluster12_SVD25
TextCluster12_SVD26 TextCluster12_SVD27 TextCluster12_SVD28 TextCluster12_SVD29
TextCluster12_SVD3 TextCluster12_SVD30 TextCluster12_SVD31 TextCluster12_SVD32
TextCluster12_SVD33 TextCluster12_SVD34 TextCluster12_SVD35 TextCluster12_SVD36
TextCluster12_SVD37 TextCluster12_SVD38 TextCluster12_SVD39 TextCluster12_SVD4
TextCluster12_SVD40 TextCluster12_SVD41 TextCluster12_SVD42 TextCluster12_SVD43
TextCluster12_SVD44 TextCluster12_SVD45 TextCluster12_SVD46 TextCluster12_SVD47
TextCluster12_SVD48 TextCluster12_SVD49 TextCluster12_SVD5 TextCluster12_SVD50
TextCluster12_SVD51 TextCluster12_SVD52 TextCluster12_SVD53 TextCluster12_SVD54
TextCluster12_SVD55 TextCluster12_SVD56 TextCluster12_SVD57 TextCluster12_SVD58
TextCluster12_SVD59 TextCluster12_SVD6 TextCluster12_SVD60 TextCluster12_SVD61
TextCluster12_SVD62 TextCluster12_SVD63 TextCluster12_SVD64 TextCluster12_SVD65
TextCluster12_SVD66 TextCluster12_SVD67 TextCluster12_SVD68 TextCluster12_SVD69
TextCluster12_SVD7 TextCluster12_SVD70 TextCluster12_SVD71 TextCluster12_SVD72
TextCluster12_SVD73 TextCluster12_SVD74 TextCluster12_SVD75 TextCluster12_SVD76
TextCluster12_SVD77 TextCluster12_SVD78 TextCluster12_SVD79 TextCluster12_SVD8
TextCluster12_SVD80 TextCluster12_SVD81 TextCluster12_SVD82 TextCluster12_SVD83
TextCluster12_SVD84 TextCluster12_SVD85 TextCluster12_SVD86 TextCluster12_SVD87
TextCluster12_SVD88 TextCluster12_SVD89 TextCluster12_SVD9 TextCluster12_SVD90
TextCluster12_SVD91 TextCluster12_SVD92 TextCluster12_SVD93 TextCluster12_SVD94
TextCluster12_SVD95 TextCluster12_SVD96 TextCluster12_SVD97 TextCluster12_SVD98
TextCluster12_SVD99 );
run;
*------------------------------------------------------------* ;
* Reg8: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg8: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster12_SVD1 TextCluster12_SVD10 TextCluster12_SVD100
   TextCluster12_SVD11 TextCluster12_SVD12 TextCluster12_SVD13 TextCluster12_SVD14
   TextCluster12_SVD15 TextCluster12_SVD16 TextCluster12_SVD17 TextCluster12_SVD18
   TextCluster12_SVD19 TextCluster12_SVD2 TextCluster12_SVD20 TextCluster12_SVD21
   TextCluster12_SVD22 TextCluster12_SVD23 TextCluster12_SVD24 TextCluster12_SVD25
   TextCluster12_SVD26 TextCluster12_SVD27 TextCluster12_SVD28 TextCluster12_SVD29
   TextCluster12_SVD3 TextCluster12_SVD30 TextCluster12_SVD31 TextCluster12_SVD32
   TextCluster12_SVD33 TextCluster12_SVD34 TextCluster12_SVD35 TextCluster12_SVD36
   TextCluster12_SVD37 TextCluster12_SVD38 TextCluster12_SVD39 TextCluster12_SVD4
   TextCluster12_SVD40 TextCluster12_SVD41 TextCluster12_SVD42 TextCluster12_SVD43
   TextCluster12_SVD44 TextCluster12_SVD45 TextCluster12_SVD46 TextCluster12_SVD47
   TextCluster12_SVD48 TextCluster12_SVD49 TextCluster12_SVD5 TextCluster12_SVD50
   TextCluster12_SVD51 TextCluster12_SVD52 TextCluster12_SVD53 TextCluster12_SVD54
   TextCluster12_SVD55 TextCluster12_SVD56 TextCluster12_SVD57 TextCluster12_SVD58
   TextCluster12_SVD59 TextCluster12_SVD6 TextCluster12_SVD60 TextCluster12_SVD61
   TextCluster12_SVD62 TextCluster12_SVD63 TextCluster12_SVD64 TextCluster12_SVD65
   TextCluster12_SVD66 TextCluster12_SVD67 TextCluster12_SVD68 TextCluster12_SVD69
   TextCluster12_SVD7 TextCluster12_SVD70 TextCluster12_SVD71 TextCluster12_SVD72
   TextCluster12_SVD73 TextCluster12_SVD74 TextCluster12_SVD75 TextCluster12_SVD76
   TextCluster12_SVD77 TextCluster12_SVD78 TextCluster12_SVD79 TextCluster12_SVD8
   TextCluster12_SVD80 TextCluster12_SVD81 TextCluster12_SVD82 TextCluster12_SVD83
   TextCluster12_SVD84 TextCluster12_SVD85 TextCluster12_SVD86 TextCluster12_SVD87
   TextCluster12_SVD88 TextCluster12_SVD89 TextCluster12_SVD9 TextCluster12_SVD90
   TextCluster12_SVD91 TextCluster12_SVD92 TextCluster12_SVD93 TextCluster12_SVD94
   TextCluster12_SVD95 TextCluster12_SVD96 TextCluster12_SVD97 TextCluster12_SVD98
   TextCluster12_SVD99
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg8: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg8_DMDB
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
* Reg8: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg8_DMDB
validata = EMWS3.TextCluster12_VALIDATE
outest = EMWS3.Reg8_EMESTIMATE
outterms = EMWS3.Reg8_OUTTERMS
outmap= EMWS3.Reg8_MAPDS namelen=200
;
class
Category
;
model Category =
TextCluster12_SVD1
TextCluster12_SVD10
TextCluster12_SVD100
TextCluster12_SVD11
TextCluster12_SVD12
TextCluster12_SVD13
TextCluster12_SVD14
TextCluster12_SVD15
TextCluster12_SVD16
TextCluster12_SVD17
TextCluster12_SVD18
TextCluster12_SVD19
TextCluster12_SVD2
TextCluster12_SVD20
TextCluster12_SVD21
TextCluster12_SVD22
TextCluster12_SVD23
TextCluster12_SVD24
TextCluster12_SVD25
TextCluster12_SVD26
TextCluster12_SVD27
TextCluster12_SVD28
TextCluster12_SVD29
TextCluster12_SVD3
TextCluster12_SVD30
TextCluster12_SVD31
TextCluster12_SVD32
TextCluster12_SVD33
TextCluster12_SVD34
TextCluster12_SVD35
TextCluster12_SVD36
TextCluster12_SVD37
TextCluster12_SVD38
TextCluster12_SVD39
TextCluster12_SVD4
TextCluster12_SVD40
TextCluster12_SVD41
TextCluster12_SVD42
TextCluster12_SVD43
TextCluster12_SVD44
TextCluster12_SVD45
TextCluster12_SVD46
TextCluster12_SVD47
TextCluster12_SVD48
TextCluster12_SVD49
TextCluster12_SVD5
TextCluster12_SVD50
TextCluster12_SVD51
TextCluster12_SVD52
TextCluster12_SVD53
TextCluster12_SVD54
TextCluster12_SVD55
TextCluster12_SVD56
TextCluster12_SVD57
TextCluster12_SVD58
TextCluster12_SVD59
TextCluster12_SVD6
TextCluster12_SVD60
TextCluster12_SVD61
TextCluster12_SVD62
TextCluster12_SVD63
TextCluster12_SVD64
TextCluster12_SVD65
TextCluster12_SVD66
TextCluster12_SVD67
TextCluster12_SVD68
TextCluster12_SVD69
TextCluster12_SVD7
TextCluster12_SVD70
TextCluster12_SVD71
TextCluster12_SVD72
TextCluster12_SVD73
TextCluster12_SVD74
TextCluster12_SVD75
TextCluster12_SVD76
TextCluster12_SVD77
TextCluster12_SVD78
TextCluster12_SVD79
TextCluster12_SVD8
TextCluster12_SVD80
TextCluster12_SVD81
TextCluster12_SVD82
TextCluster12_SVD83
TextCluster12_SVD84
TextCluster12_SVD85
TextCluster12_SVD86
TextCluster12_SVD87
TextCluster12_SVD88
TextCluster12_SVD89
TextCluster12_SVD9
TextCluster12_SVD90
TextCluster12_SVD91
TextCluster12_SVD92
TextCluster12_SVD93
TextCluster12_SVD94
TextCluster12_SVD95
TextCluster12_SVD96
TextCluster12_SVD97
TextCluster12_SVD98
TextCluster12_SVD99
/level=nominal
coding=DEVIATION
nodesignprint
selection=STEPWISE choose=VERROR
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS3.TextCluster12_TEST
out=_null_
outfit=EMWS3.Reg8_FITTEST
role = TEST
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg8\EMPUBLISHSCORE.sas"
group=Reg8
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg8\EMFLOWSCORE.sas"
group=Reg8
residual
;
run;
quit;
