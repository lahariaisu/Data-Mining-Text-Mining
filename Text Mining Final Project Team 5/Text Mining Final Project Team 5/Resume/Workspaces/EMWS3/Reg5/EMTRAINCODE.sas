*------------------------------------------------------------*;
* Reg5: Create decision matrix;
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
set EMWS3.TextCluster8_TRAIN(keep=
Category TextCluster8_SVD1 TextCluster8_SVD10 TextCluster8_SVD100
TextCluster8_SVD11 TextCluster8_SVD12 TextCluster8_SVD13 TextCluster8_SVD14
TextCluster8_SVD15 TextCluster8_SVD16 TextCluster8_SVD17 TextCluster8_SVD18
TextCluster8_SVD19 TextCluster8_SVD2 TextCluster8_SVD20 TextCluster8_SVD21
TextCluster8_SVD22 TextCluster8_SVD23 TextCluster8_SVD24 TextCluster8_SVD25
TextCluster8_SVD26 TextCluster8_SVD27 TextCluster8_SVD28 TextCluster8_SVD29
TextCluster8_SVD3 TextCluster8_SVD30 TextCluster8_SVD31 TextCluster8_SVD32
TextCluster8_SVD33 TextCluster8_SVD34 TextCluster8_SVD35 TextCluster8_SVD36
TextCluster8_SVD37 TextCluster8_SVD38 TextCluster8_SVD39 TextCluster8_SVD4
TextCluster8_SVD40 TextCluster8_SVD41 TextCluster8_SVD42 TextCluster8_SVD43
TextCluster8_SVD44 TextCluster8_SVD45 TextCluster8_SVD46 TextCluster8_SVD47
TextCluster8_SVD48 TextCluster8_SVD49 TextCluster8_SVD5 TextCluster8_SVD50
TextCluster8_SVD51 TextCluster8_SVD52 TextCluster8_SVD53 TextCluster8_SVD54
TextCluster8_SVD55 TextCluster8_SVD56 TextCluster8_SVD57 TextCluster8_SVD58
TextCluster8_SVD59 TextCluster8_SVD6 TextCluster8_SVD60 TextCluster8_SVD61
TextCluster8_SVD62 TextCluster8_SVD63 TextCluster8_SVD64 TextCluster8_SVD65
TextCluster8_SVD66 TextCluster8_SVD67 TextCluster8_SVD68 TextCluster8_SVD69
TextCluster8_SVD7 TextCluster8_SVD70 TextCluster8_SVD71 TextCluster8_SVD72
TextCluster8_SVD73 TextCluster8_SVD74 TextCluster8_SVD75 TextCluster8_SVD76
TextCluster8_SVD77 TextCluster8_SVD78 TextCluster8_SVD79 TextCluster8_SVD8
TextCluster8_SVD80 TextCluster8_SVD81 TextCluster8_SVD82 TextCluster8_SVD83
TextCluster8_SVD84 TextCluster8_SVD85 TextCluster8_SVD86 TextCluster8_SVD87
TextCluster8_SVD88 TextCluster8_SVD89 TextCluster8_SVD9 TextCluster8_SVD90
TextCluster8_SVD91 TextCluster8_SVD92 TextCluster8_SVD93 TextCluster8_SVD94
TextCluster8_SVD95 TextCluster8_SVD96 TextCluster8_SVD97 TextCluster8_SVD98
TextCluster8_SVD99 );
run;
*------------------------------------------------------------* ;
* Reg5: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg5: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster8_SVD1 TextCluster8_SVD10 TextCluster8_SVD100 TextCluster8_SVD11
   TextCluster8_SVD12 TextCluster8_SVD13 TextCluster8_SVD14 TextCluster8_SVD15
   TextCluster8_SVD16 TextCluster8_SVD17 TextCluster8_SVD18 TextCluster8_SVD19
   TextCluster8_SVD2 TextCluster8_SVD20 TextCluster8_SVD21 TextCluster8_SVD22
   TextCluster8_SVD23 TextCluster8_SVD24 TextCluster8_SVD25 TextCluster8_SVD26
   TextCluster8_SVD27 TextCluster8_SVD28 TextCluster8_SVD29 TextCluster8_SVD3
   TextCluster8_SVD30 TextCluster8_SVD31 TextCluster8_SVD32 TextCluster8_SVD33
   TextCluster8_SVD34 TextCluster8_SVD35 TextCluster8_SVD36 TextCluster8_SVD37
   TextCluster8_SVD38 TextCluster8_SVD39 TextCluster8_SVD4 TextCluster8_SVD40
   TextCluster8_SVD41 TextCluster8_SVD42 TextCluster8_SVD43 TextCluster8_SVD44
   TextCluster8_SVD45 TextCluster8_SVD46 TextCluster8_SVD47 TextCluster8_SVD48
   TextCluster8_SVD49 TextCluster8_SVD5 TextCluster8_SVD50 TextCluster8_SVD51
   TextCluster8_SVD52 TextCluster8_SVD53 TextCluster8_SVD54 TextCluster8_SVD55
   TextCluster8_SVD56 TextCluster8_SVD57 TextCluster8_SVD58 TextCluster8_SVD59
   TextCluster8_SVD6 TextCluster8_SVD60 TextCluster8_SVD61 TextCluster8_SVD62
   TextCluster8_SVD63 TextCluster8_SVD64 TextCluster8_SVD65 TextCluster8_SVD66
   TextCluster8_SVD67 TextCluster8_SVD68 TextCluster8_SVD69 TextCluster8_SVD7
   TextCluster8_SVD70 TextCluster8_SVD71 TextCluster8_SVD72 TextCluster8_SVD73
   TextCluster8_SVD74 TextCluster8_SVD75 TextCluster8_SVD76 TextCluster8_SVD77
   TextCluster8_SVD78 TextCluster8_SVD79 TextCluster8_SVD8 TextCluster8_SVD80
   TextCluster8_SVD81 TextCluster8_SVD82 TextCluster8_SVD83 TextCluster8_SVD84
   TextCluster8_SVD85 TextCluster8_SVD86 TextCluster8_SVD87 TextCluster8_SVD88
   TextCluster8_SVD89 TextCluster8_SVD9 TextCluster8_SVD90 TextCluster8_SVD91
   TextCluster8_SVD92 TextCluster8_SVD93 TextCluster8_SVD94 TextCluster8_SVD95
   TextCluster8_SVD96 TextCluster8_SVD97 TextCluster8_SVD98 TextCluster8_SVD99
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg5: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg5_DMDB
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
* Reg5: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg5_DMDB
validata = EMWS3.TextCluster8_VALIDATE
outest = EMWS3.Reg5_EMESTIMATE
outterms = EMWS3.Reg5_OUTTERMS
outmap= EMWS3.Reg5_MAPDS namelen=200
;
class
Category
;
model Category =
TextCluster8_SVD1
TextCluster8_SVD10
TextCluster8_SVD100
TextCluster8_SVD11
TextCluster8_SVD12
TextCluster8_SVD13
TextCluster8_SVD14
TextCluster8_SVD15
TextCluster8_SVD16
TextCluster8_SVD17
TextCluster8_SVD18
TextCluster8_SVD19
TextCluster8_SVD2
TextCluster8_SVD20
TextCluster8_SVD21
TextCluster8_SVD22
TextCluster8_SVD23
TextCluster8_SVD24
TextCluster8_SVD25
TextCluster8_SVD26
TextCluster8_SVD27
TextCluster8_SVD28
TextCluster8_SVD29
TextCluster8_SVD3
TextCluster8_SVD30
TextCluster8_SVD31
TextCluster8_SVD32
TextCluster8_SVD33
TextCluster8_SVD34
TextCluster8_SVD35
TextCluster8_SVD36
TextCluster8_SVD37
TextCluster8_SVD38
TextCluster8_SVD39
TextCluster8_SVD4
TextCluster8_SVD40
TextCluster8_SVD41
TextCluster8_SVD42
TextCluster8_SVD43
TextCluster8_SVD44
TextCluster8_SVD45
TextCluster8_SVD46
TextCluster8_SVD47
TextCluster8_SVD48
TextCluster8_SVD49
TextCluster8_SVD5
TextCluster8_SVD50
TextCluster8_SVD51
TextCluster8_SVD52
TextCluster8_SVD53
TextCluster8_SVD54
TextCluster8_SVD55
TextCluster8_SVD56
TextCluster8_SVD57
TextCluster8_SVD58
TextCluster8_SVD59
TextCluster8_SVD6
TextCluster8_SVD60
TextCluster8_SVD61
TextCluster8_SVD62
TextCluster8_SVD63
TextCluster8_SVD64
TextCluster8_SVD65
TextCluster8_SVD66
TextCluster8_SVD67
TextCluster8_SVD68
TextCluster8_SVD69
TextCluster8_SVD7
TextCluster8_SVD70
TextCluster8_SVD71
TextCluster8_SVD72
TextCluster8_SVD73
TextCluster8_SVD74
TextCluster8_SVD75
TextCluster8_SVD76
TextCluster8_SVD77
TextCluster8_SVD78
TextCluster8_SVD79
TextCluster8_SVD8
TextCluster8_SVD80
TextCluster8_SVD81
TextCluster8_SVD82
TextCluster8_SVD83
TextCluster8_SVD84
TextCluster8_SVD85
TextCluster8_SVD86
TextCluster8_SVD87
TextCluster8_SVD88
TextCluster8_SVD89
TextCluster8_SVD9
TextCluster8_SVD90
TextCluster8_SVD91
TextCluster8_SVD92
TextCluster8_SVD93
TextCluster8_SVD94
TextCluster8_SVD95
TextCluster8_SVD96
TextCluster8_SVD97
TextCluster8_SVD98
TextCluster8_SVD99
/level=nominal
coding=DEVIATION
nodesignprint
selection=STEPWISE choose=VERROR
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS3.TextCluster8_TEST
out=_null_
outfit=EMWS3.Reg5_FITTEST
role = TEST
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg5\EMPUBLISHSCORE.sas"
group=Reg5
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg5\EMFLOWSCORE.sas"
group=Reg5
residual
;
run;
quit;
