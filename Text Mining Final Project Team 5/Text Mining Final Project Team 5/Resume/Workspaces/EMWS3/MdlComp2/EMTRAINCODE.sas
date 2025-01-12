data EMWS3.MdlComp2_EMRANK;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural11" MODEL "Neural11" MODELDESCRIPTION "Neural Network Text Topic" TARGETLABEL "Category";
set EMWS3.Neural11_EMRANK;
where upcase(TARGET) = upcase("Category");
run;
data EMWS3.MdlComp2_EMSCOREDIST;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural11" MODEL "Neural11" MODELDESCRIPTION "Neural Network Text Topic" TARGETLABEL "Category";
set EMWS3.Neural11_EMSCOREDIST;
where upcase(TARGET) = upcase("Category");
run;
data EMWS3.MdlComp2_EMOUTFIT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural11" MODEL "Neural11" MODELDESCRIPTION "Neural Network Text Topic" TARGETLABEL "Category";
set WORK.Neural11_OUTFIT;
where upcase(TARGET) = upcase("Category");
run;
data EMWS3.MdlComp2_EMCLASSIFICATION;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural11" MODEL "Neural11" MODELDESCRIPTION "Neural Network Text Topic" TARGETLABEL "Category";
set EMWS3.Neural11_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Category");
run;
data EMWS3.MdlComp2_EMEVENTREPORT;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGETLABEL =
   "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural11" MODEL "Neural11" MODELDESCRIPTION "Neural Network Text Topic" TARGETLABEL "Category";
set EMWS3.Neural11_EMEVENTREPORT;
where upcase(TARGET) = upcase("Category");
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural9" MODEL "Neural9" MODELDESCRIPTION "Neural Network Mutual Info High" TARGETLABEL "Category";
set EMWS3.Neural9_EMRANK;
where upcase(TARGET) = upcase("Category");
run;
data EMWS3.MdlComp2_EMRANK;
set EMWS3.MdlComp2_EMRANK work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural9" MODEL "Neural9" MODELDESCRIPTION "Neural Network Mutual Info High" TARGETLABEL "Category";
set EMWS3.Neural9_EMSCOREDIST;
where upcase(TARGET) = upcase("Category");
run;
data EMWS3.MdlComp2_EMSCOREDIST;
set EMWS3.MdlComp2_EMSCOREDIST work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural9" MODEL "Neural9" MODELDESCRIPTION "Neural Network Mutual Info High" TARGETLABEL "Category";
set WORK.Neural9_OUTFIT;
where upcase(TARGET) = upcase("Category");
run;
data EMWS3.MdlComp2_EMOUTFIT;
set EMWS3.MdlComp2_EMOUTFIT work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural9" MODEL "Neural9" MODELDESCRIPTION "Neural Network Mutual Info High" TARGETLABEL "Category";
set EMWS3.Neural9_EMCLASSIFICATION;
where upcase(TARGET) = upcase("Category");
run;
data EMWS3.MdlComp2_EMCLASSIFICATION;
set EMWS3.MdlComp2_EMCLASSIFICATION work.MdlComp2_TEMP;
run;
data work.MdlComp2_TEMP;
length PARENT $16 MODEL $16 MODELDESCRIPTION $81 DATAROLE $20 TARGET $32 TARGETLABEL $200;
label PARENT = "%sysfunc(sasmsg(sashelp.dmine, rpt_parent_vlabel  ,  NOQUOTE))" MODEL = "%sysfunc(sasmsg(sashelp.dmine, rpt_modelnode_vlabel, NOQUOTE))" MODELDESCRIPTION = "%sysfunc(sasmsg(sashelp.dmine, rpt_modeldesc_vlabel, NOQUOTE))" TARGET =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_targetvar_vlabel, NOQUOTE))" TARGETLABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_targetlabel_vlabel, NOQUOTE))";
retain parent "Neural9" MODEL "Neural9" MODELDESCRIPTION "Neural Network Mutual Info High" TARGETLABEL "Category";
set EMWS3.Neural9_EMEVENTREPORT;
where upcase(TARGET) = upcase("Category");
run;
data EMWS3.MdlComp2_EMEVENTREPORT;
set EMWS3.MdlComp2_EMEVENTREPORT work.MdlComp2_TEMP;
run;
