*------------------------------------------------------------*;
* Reg7: Create decision matrix;
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
set EMWS3.TextCluster11_TRAIN(keep=
Category TextCluster11_SVD1 TextCluster11_SVD10 TextCluster11_SVD11
TextCluster11_SVD12 TextCluster11_SVD13 TextCluster11_SVD14 TextCluster11_SVD15
TextCluster11_SVD16 TextCluster11_SVD17 TextCluster11_SVD18 TextCluster11_SVD19
TextCluster11_SVD2 TextCluster11_SVD20 TextCluster11_SVD21 TextCluster11_SVD22
TextCluster11_SVD23 TextCluster11_SVD24 TextCluster11_SVD25 TextCluster11_SVD26
TextCluster11_SVD27 TextCluster11_SVD28 TextCluster11_SVD29 TextCluster11_SVD3
TextCluster11_SVD30 TextCluster11_SVD31 TextCluster11_SVD32 TextCluster11_SVD33
TextCluster11_SVD34 TextCluster11_SVD35 TextCluster11_SVD36 TextCluster11_SVD37
TextCluster11_SVD38 TextCluster11_SVD39 TextCluster11_SVD4 TextCluster11_SVD40
TextCluster11_SVD41 TextCluster11_SVD42 TextCluster11_SVD43 TextCluster11_SVD44
TextCluster11_SVD45 TextCluster11_SVD46 TextCluster11_SVD47 TextCluster11_SVD48
TextCluster11_SVD49 TextCluster11_SVD5 TextCluster11_SVD50 TextCluster11_SVD51
TextCluster11_SVD52 TextCluster11_SVD53 TextCluster11_SVD54 TextCluster11_SVD55
TextCluster11_SVD56 TextCluster11_SVD57 TextCluster11_SVD58 TextCluster11_SVD59
TextCluster11_SVD6 TextCluster11_SVD60 TextCluster11_SVD61 TextCluster11_SVD7
TextCluster11_SVD8 TextCluster11_SVD9 );
run;
*------------------------------------------------------------* ;
* Reg7: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg7: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster11_SVD1 TextCluster11_SVD10 TextCluster11_SVD11 TextCluster11_SVD12
   TextCluster11_SVD13 TextCluster11_SVD14 TextCluster11_SVD15 TextCluster11_SVD16
   TextCluster11_SVD17 TextCluster11_SVD18 TextCluster11_SVD19 TextCluster11_SVD2
   TextCluster11_SVD20 TextCluster11_SVD21 TextCluster11_SVD22 TextCluster11_SVD23
   TextCluster11_SVD24 TextCluster11_SVD25 TextCluster11_SVD26 TextCluster11_SVD27
   TextCluster11_SVD28 TextCluster11_SVD29 TextCluster11_SVD3 TextCluster11_SVD30
   TextCluster11_SVD31 TextCluster11_SVD32 TextCluster11_SVD33 TextCluster11_SVD34
   TextCluster11_SVD35 TextCluster11_SVD36 TextCluster11_SVD37 TextCluster11_SVD38
   TextCluster11_SVD39 TextCluster11_SVD4 TextCluster11_SVD40 TextCluster11_SVD41
   TextCluster11_SVD42 TextCluster11_SVD43 TextCluster11_SVD44 TextCluster11_SVD45
   TextCluster11_SVD46 TextCluster11_SVD47 TextCluster11_SVD48 TextCluster11_SVD49
   TextCluster11_SVD5 TextCluster11_SVD50 TextCluster11_SVD51 TextCluster11_SVD52
   TextCluster11_SVD53 TextCluster11_SVD54 TextCluster11_SVD55 TextCluster11_SVD56
   TextCluster11_SVD57 TextCluster11_SVD58 TextCluster11_SVD59 TextCluster11_SVD6
   TextCluster11_SVD60 TextCluster11_SVD61 TextCluster11_SVD7 TextCluster11_SVD8
   TextCluster11_SVD9
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg7: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg7_DMDB
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
* Reg7: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg7_DMDB
validata = EMWS3.TextCluster11_VALIDATE
outest = EMWS3.Reg7_EMESTIMATE
outterms = EMWS3.Reg7_OUTTERMS
outmap= EMWS3.Reg7_MAPDS namelen=200
;
class
Category
;
model Category =
TextCluster11_SVD1
TextCluster11_SVD10
TextCluster11_SVD11
TextCluster11_SVD12
TextCluster11_SVD13
TextCluster11_SVD14
TextCluster11_SVD15
TextCluster11_SVD16
TextCluster11_SVD17
TextCluster11_SVD18
TextCluster11_SVD19
TextCluster11_SVD2
TextCluster11_SVD20
TextCluster11_SVD21
TextCluster11_SVD22
TextCluster11_SVD23
TextCluster11_SVD24
TextCluster11_SVD25
TextCluster11_SVD26
TextCluster11_SVD27
TextCluster11_SVD28
TextCluster11_SVD29
TextCluster11_SVD3
TextCluster11_SVD30
TextCluster11_SVD31
TextCluster11_SVD32
TextCluster11_SVD33
TextCluster11_SVD34
TextCluster11_SVD35
TextCluster11_SVD36
TextCluster11_SVD37
TextCluster11_SVD38
TextCluster11_SVD39
TextCluster11_SVD4
TextCluster11_SVD40
TextCluster11_SVD41
TextCluster11_SVD42
TextCluster11_SVD43
TextCluster11_SVD44
TextCluster11_SVD45
TextCluster11_SVD46
TextCluster11_SVD47
TextCluster11_SVD48
TextCluster11_SVD49
TextCluster11_SVD5
TextCluster11_SVD50
TextCluster11_SVD51
TextCluster11_SVD52
TextCluster11_SVD53
TextCluster11_SVD54
TextCluster11_SVD55
TextCluster11_SVD56
TextCluster11_SVD57
TextCluster11_SVD58
TextCluster11_SVD59
TextCluster11_SVD6
TextCluster11_SVD60
TextCluster11_SVD61
TextCluster11_SVD7
TextCluster11_SVD8
TextCluster11_SVD9
/level=nominal
coding=DEVIATION
nodesignprint
selection=STEPWISE choose=VERROR
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS3.TextCluster11_TEST
out=_null_
outfit=EMWS3.Reg7_FITTEST
role = TEST
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg7\EMPUBLISHSCORE.sas"
group=Reg7
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg7\EMFLOWSCORE.sas"
group=Reg7
residual
;
run;
quit;
