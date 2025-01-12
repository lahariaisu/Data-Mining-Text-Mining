*------------------------------------------------------------*;
* Reg10: Create decision matrix;
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
data EM_DMREG / view=EM_DMREG;
set EMWS3.Meta_TRAIN(keep=
Category TextCluster2_prob1 TextCluster2_prob2 TextCluster2_prob3
TextCluster2_prob4 TextTopic3_1 TextTopic3_10 TextTopic3_11 TextTopic3_12
TextTopic3_13 TextTopic3_14 TextTopic3_15 TextTopic3_16 TextTopic3_17
TextTopic3_18 TextTopic3_19 TextTopic3_2 TextTopic3_20 TextTopic3_21
TextTopic3_22 TextTopic3_23 TextTopic3_24 TextTopic3_25 TextTopic3_3
TextTopic3_4 TextTopic3_5 TextTopic3_6 TextTopic3_7 TextTopic3_8 TextTopic3_9 );
run;
*------------------------------------------------------------* ;
* Reg10: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Category(DESC) TextTopic3_1(ASC) TextTopic3_10(ASC) TextTopic3_11(ASC)
   TextTopic3_12(ASC) TextTopic3_13(ASC) TextTopic3_14(ASC) TextTopic3_15(ASC)
   TextTopic3_16(ASC) TextTopic3_17(ASC) TextTopic3_18(ASC) TextTopic3_19(ASC)
   TextTopic3_2(ASC) TextTopic3_20(ASC) TextTopic3_21(ASC) TextTopic3_22(ASC)
   TextTopic3_23(ASC) TextTopic3_24(ASC) TextTopic3_25(ASC) TextTopic3_3(ASC)
   TextTopic3_4(ASC) TextTopic3_5(ASC) TextTopic3_6(ASC) TextTopic3_7(ASC)
   TextTopic3_8(ASC) TextTopic3_9(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg10: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    TextCluster2_prob1 TextCluster2_prob2 TextCluster2_prob3 TextCluster2_prob4
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg10: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg10_DMDB
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
* Reg10: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg10_DMDB
validata = EMWS3.Meta_VALIDATE
outest = EMWS3.Reg10_EMESTIMATE
outterms = EMWS3.Reg10_OUTTERMS
outmap= EMWS3.Reg10_MAPDS namelen=200
;
class
Category
TextTopic3_1
TextTopic3_10
TextTopic3_11
TextTopic3_12
TextTopic3_13
TextTopic3_14
TextTopic3_15
TextTopic3_16
TextTopic3_17
TextTopic3_18
TextTopic3_19
TextTopic3_2
TextTopic3_20
TextTopic3_21
TextTopic3_22
TextTopic3_23
TextTopic3_24
TextTopic3_25
TextTopic3_3
TextTopic3_4
TextTopic3_5
TextTopic3_6
TextTopic3_7
TextTopic3_8
TextTopic3_9
;
model Category =
TextCluster2_prob1
TextCluster2_prob2
TextCluster2_prob3
TextCluster2_prob4
TextTopic3_1
TextTopic3_10
TextTopic3_11
TextTopic3_12
TextTopic3_13
TextTopic3_14
TextTopic3_15
TextTopic3_16
TextTopic3_17
TextTopic3_18
TextTopic3_19
TextTopic3_2
TextTopic3_20
TextTopic3_21
TextTopic3_22
TextTopic3_23
TextTopic3_24
TextTopic3_25
TextTopic3_3
TextTopic3_4
TextTopic3_5
TextTopic3_6
TextTopic3_7
TextTopic3_8
TextTopic3_9
/level=nominal
coding=DEVIATION
nodesignprint
;
;
score data=EMWS3.Meta_TEST
out=_null_
outfit=EMWS3.Reg10_FITTEST
role = TEST
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg10\EMPUBLISHSCORE.sas"
group=Reg10
;
code file="C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3\Reg10\EMFLOWSCORE.sas"
group=Reg10
residual
;
run;
quit;
