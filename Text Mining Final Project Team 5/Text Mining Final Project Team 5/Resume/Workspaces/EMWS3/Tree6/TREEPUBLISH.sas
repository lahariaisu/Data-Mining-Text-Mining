****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH I_Category  $   22; 
LENGTH U_Category  $   22; 
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_CategoryHR = 'Predicted: Category=HR' ;
label P_CategoryDESIGNER = 'Predicted: Category=DESIGNER' ;
label P_CategoryINFORMATION_TECHNOLOGY = 
'Predicted: Category=INFORMATION-TECHNOLOGY' ;
label P_CategoryTEACHER = 'Predicted: Category=TEACHER' ;
label P_CategoryADVOCATE = 'Predicted: Category=ADVOCATE' ;
label P_CategoryBUSINESS_DEVELOPMENT = 
'Predicted: Category=BUSINESS-DEVELOPMENT' ;
label P_CategoryHEALTHCARE = 'Predicted: Category=HEALTHCARE' ;
label P_CategoryFITNESS = 'Predicted: Category=FITNESS' ;
label P_CategoryOTHER = 'Predicted: Category=OTHER' ;
label P_CategorySALES = 'Predicted: Category=SALES' ;
label P_CategoryCONSULTANT = 'Predicted: Category=CONSULTANT' ;
label P_CategoryDIGITAL_MEDIA = 'Predicted: Category=DIGITAL-MEDIA' ;
label Q_CategoryHR = 'Unadjusted P: Category=HR' ;
label Q_CategoryDESIGNER = 'Unadjusted P: Category=DESIGNER' ;
label Q_CategoryINFORMATION_TECHNOLOGY = 
'Unadjusted P: Category=INFORMATION-TECHNOLOGY' ;
label Q_CategoryTEACHER = 'Unadjusted P: Category=TEACHER' ;
label Q_CategoryADVOCATE = 'Unadjusted P: Category=ADVOCATE' ;
label Q_CategoryBUSINESS_DEVELOPMENT = 
'Unadjusted P: Category=BUSINESS-DEVELOPMENT' ;
label Q_CategoryHEALTHCARE = 'Unadjusted P: Category=HEALTHCARE' ;
label Q_CategoryFITNESS = 'Unadjusted P: Category=FITNESS' ;
label Q_CategoryOTHER = 'Unadjusted P: Category=OTHER' ;
label Q_CategorySALES = 'Unadjusted P: Category=SALES' ;
label Q_CategoryCONSULTANT = 'Unadjusted P: Category=CONSULTANT' ;
label Q_CategoryDIGITAL_MEDIA = 'Unadjusted P: Category=DIGITAL-MEDIA' ;
label V_CategoryHR = 'Validated: Category=HR' ;
label V_CategoryDESIGNER = 'Validated: Category=DESIGNER' ;
label V_CategoryINFORMATION_TECHNOLOGY = 
'Validated: Category=INFORMATION-TECHNOLOGY' ;
label V_CategoryTEACHER = 'Validated: Category=TEACHER' ;
label V_CategoryADVOCATE = 'Validated: Category=ADVOCATE' ;
label V_CategoryBUSINESS_DEVELOPMENT = 
'Validated: Category=BUSINESS-DEVELOPMENT' ;
label V_CategoryHEALTHCARE = 'Validated: Category=HEALTHCARE' ;
label V_CategoryFITNESS = 'Validated: Category=FITNESS' ;
label V_CategoryOTHER = 'Validated: Category=OTHER' ;
label V_CategorySALES = 'Validated: Category=SALES' ;
label V_CategoryCONSULTANT = 'Validated: Category=CONSULTANT' ;
label V_CategoryDIGITAL_MEDIA = 'Validated: Category=DIGITAL-MEDIA' ;
label I_Category = 'Into: Category' ;
label U_Category = 'Unnormalized Into: Category' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_22 $     22; DROP _ARBFMT_22; 
_ARBFMT_22 = ' '; /* Initialize to avoid warning. */


******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(TextCluster6_SVD4 ) AND 
  TextCluster6_SVD4  <    -0.25373725645761 THEN DO;
  _NODE_  =                    2;
  _LEAF_  =                    1;
  P_CategoryHR  =     0.77419354838709;
  P_CategoryDESIGNER  =                    0;
  P_CategoryINFORMATION_TECHNOLOGY  =     0.01612903225806;
  P_CategoryTEACHER  =                    0;
  P_CategoryADVOCATE  =     0.04838709677419;
  P_CategoryBUSINESS_DEVELOPMENT  =     0.01612903225806;
  P_CategoryHEALTHCARE  =     0.04838709677419;
  P_CategoryFITNESS  =     0.01612903225806;
  P_CategoryOTHER  =     0.01612903225806;
  P_CategorySALES  =     0.03225806451612;
  P_CategoryCONSULTANT  =     0.03225806451612;
  P_CategoryDIGITAL_MEDIA  =                    0;
  Q_CategoryHR  =     0.77419354838709;
  Q_CategoryDESIGNER  =                    0;
  Q_CategoryINFORMATION_TECHNOLOGY  =     0.01612903225806;
  Q_CategoryTEACHER  =                    0;
  Q_CategoryADVOCATE  =     0.04838709677419;
  Q_CategoryBUSINESS_DEVELOPMENT  =     0.01612903225806;
  Q_CategoryHEALTHCARE  =     0.04838709677419;
  Q_CategoryFITNESS  =     0.01612903225806;
  Q_CategoryOTHER  =     0.01612903225806;
  Q_CategorySALES  =     0.03225806451612;
  Q_CategoryCONSULTANT  =     0.03225806451612;
  Q_CategoryDIGITAL_MEDIA  =                    0;
  V_CategoryHR  =     0.75675675675675;
  V_CategoryDESIGNER  =                    0;
  V_CategoryINFORMATION_TECHNOLOGY  =     0.02702702702702;
  V_CategoryTEACHER  =                    0;
  V_CategoryADVOCATE  =                    0;
  V_CategoryBUSINESS_DEVELOPMENT  =     0.02702702702702;
  V_CategoryHEALTHCARE  =     0.08108108108108;
  V_CategoryFITNESS  =     0.02702702702702;
  V_CategoryOTHER  =     0.02702702702702;
  V_CategorySALES  =                    0;
  V_CategoryCONSULTANT  =     0.05405405405405;
  V_CategoryDIGITAL_MEDIA  =                    0;
  I_Category  = 'HR' ;
  U_Category  = 'HR' ;
  END;
ELSE DO;
  IF  NOT MISSING(TextCluster6_SVD5 ) AND 
    TextCluster6_SVD5  <    -0.29159435927799 THEN DO;
    _NODE_  =                    6;
    _LEAF_  =                    2;
    P_CategoryHR  =                    0;
    P_CategoryDESIGNER  =     0.02564102564102;
    P_CategoryINFORMATION_TECHNOLOGY  =                    0;
    P_CategoryTEACHER  =     0.84615384615384;
    P_CategoryADVOCATE  =     0.05128205128205;
    P_CategoryBUSINESS_DEVELOPMENT  =                    0;
    P_CategoryHEALTHCARE  =                    0;
    P_CategoryFITNESS  =     0.07692307692307;
    P_CategoryOTHER  =                    0;
    P_CategorySALES  =                    0;
    P_CategoryCONSULTANT  =                    0;
    P_CategoryDIGITAL_MEDIA  =                    0;
    Q_CategoryHR  =                    0;
    Q_CategoryDESIGNER  =     0.02564102564102;
    Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
    Q_CategoryTEACHER  =     0.84615384615384;
    Q_CategoryADVOCATE  =     0.05128205128205;
    Q_CategoryBUSINESS_DEVELOPMENT  =                    0;
    Q_CategoryHEALTHCARE  =                    0;
    Q_CategoryFITNESS  =     0.07692307692307;
    Q_CategoryOTHER  =                    0;
    Q_CategorySALES  =                    0;
    Q_CategoryCONSULTANT  =                    0;
    Q_CategoryDIGITAL_MEDIA  =                    0;
    V_CategoryHR  =              0.03125;
    V_CategoryDESIGNER  =               0.0625;
    V_CategoryINFORMATION_TECHNOLOGY  =                    0;
    V_CategoryTEACHER  =               0.6875;
    V_CategoryADVOCATE  =              0.03125;
    V_CategoryBUSINESS_DEVELOPMENT  =                    0;
    V_CategoryHEALTHCARE  =                    0;
    V_CategoryFITNESS  =              0.03125;
    V_CategoryOTHER  =              0.15625;
    V_CategorySALES  =                    0;
    V_CategoryCONSULTANT  =                    0;
    V_CategoryDIGITAL_MEDIA  =                    0;
    I_Category  = 'TEACHER' ;
    U_Category  = 'TEACHER' ;
    END;
  ELSE DO;
    IF  NOT MISSING(TextCluster6_SVD2 ) AND 
           0.2593230243674 <= TextCluster6_SVD2  THEN DO;
      _NODE_  =                   11;
      _LEAF_  =                    8;
      P_CategoryHR  =                    0;
      P_CategoryDESIGNER  =     0.03333333333333;
      P_CategoryINFORMATION_TECHNOLOGY  =     0.54444444444444;
      P_CategoryTEACHER  =                    0;
      P_CategoryADVOCATE  =     0.02222222222222;
      P_CategoryBUSINESS_DEVELOPMENT  =                    0;
      P_CategoryHEALTHCARE  =     0.03333333333333;
      P_CategoryFITNESS  =                    0;
      P_CategoryOTHER  =     0.06666666666666;
      P_CategorySALES  =                    0;
      P_CategoryCONSULTANT  =     0.23333333333333;
      P_CategoryDIGITAL_MEDIA  =     0.06666666666666;
      Q_CategoryHR  =                    0;
      Q_CategoryDESIGNER  =     0.03333333333333;
      Q_CategoryINFORMATION_TECHNOLOGY  =     0.54444444444444;
      Q_CategoryTEACHER  =                    0;
      Q_CategoryADVOCATE  =     0.02222222222222;
      Q_CategoryBUSINESS_DEVELOPMENT  =                    0;
      Q_CategoryHEALTHCARE  =     0.03333333333333;
      Q_CategoryFITNESS  =                    0;
      Q_CategoryOTHER  =     0.06666666666666;
      Q_CategorySALES  =                    0;
      Q_CategoryCONSULTANT  =     0.23333333333333;
      Q_CategoryDIGITAL_MEDIA  =     0.06666666666666;
      V_CategoryHR  =                    0;
      V_CategoryDESIGNER  =      0.0377358490566;
      V_CategoryINFORMATION_TECHNOLOGY  =     0.56603773584905;
      V_CategoryTEACHER  =                    0;
      V_CategoryADVOCATE  =      0.0188679245283;
      V_CategoryBUSINESS_DEVELOPMENT  =      0.0188679245283;
      V_CategoryHEALTHCARE  =      0.0188679245283;
      V_CategoryFITNESS  =                    0;
      V_CategoryOTHER  =      0.0566037735849;
      V_CategorySALES  =      0.0188679245283;
      V_CategoryCONSULTANT  =     0.16981132075471;
      V_CategoryDIGITAL_MEDIA  =      0.0943396226415;
      I_Category  = 'INFORMATION-TECHNOLOGY' ;
      U_Category  = 'INFORMATION-TECHNOLOGY' ;
      END;
    ELSE DO;
      IF  NOT MISSING(TextCluster6_SVD11 ) AND 
            0.20157647365093 <= TextCluster6_SVD11  THEN DO;
        _NODE_  =                   13;
        _LEAF_  =                    7;
        P_CategoryHR  =                0.025;
        P_CategoryDESIGNER  =                    0;
        P_CategoryINFORMATION_TECHNOLOGY  =                    0;
        P_CategoryTEACHER  =                    0;
        P_CategoryADVOCATE  =                0.075;
        P_CategoryBUSINESS_DEVELOPMENT  =                0.025;
        P_CategoryHEALTHCARE  =                    0;
        P_CategoryFITNESS  =                0.825;
        P_CategoryOTHER  =                    0;
        P_CategorySALES  =                0.025;
        P_CategoryCONSULTANT  =                    0;
        P_CategoryDIGITAL_MEDIA  =                0.025;
        Q_CategoryHR  =                0.025;
        Q_CategoryDESIGNER  =                    0;
        Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
        Q_CategoryTEACHER  =                    0;
        Q_CategoryADVOCATE  =                0.075;
        Q_CategoryBUSINESS_DEVELOPMENT  =                0.025;
        Q_CategoryHEALTHCARE  =                    0;
        Q_CategoryFITNESS  =                0.825;
        Q_CategoryOTHER  =                    0;
        Q_CategorySALES  =                0.025;
        Q_CategoryCONSULTANT  =                    0;
        Q_CategoryDIGITAL_MEDIA  =                0.025;
        V_CategoryHR  =                    0;
        V_CategoryDESIGNER  =                    0;
        V_CategoryINFORMATION_TECHNOLOGY  =     0.05882352941176;
        V_CategoryTEACHER  =                    0;
        V_CategoryADVOCATE  =     0.05882352941176;
        V_CategoryBUSINESS_DEVELOPMENT  =                    0;
        V_CategoryHEALTHCARE  =     0.05882352941176;
        V_CategoryFITNESS  =      0.8235294117647;
        V_CategoryOTHER  =                    0;
        V_CategorySALES  =                    0;
        V_CategoryCONSULTANT  =                    0;
        V_CategoryDIGITAL_MEDIA  =                    0;
        I_Category  = 'FITNESS' ;
        U_Category  = 'FITNESS' ;
        END;
      ELSE DO;
        IF  NOT MISSING(TextCluster6_SVD7 ) AND 
              0.05623637538451 <= TextCluster6_SVD7  THEN DO;
          IF  NOT MISSING(TextCluster6_SVD2 ) AND 
            TextCluster6_SVD2  <    -0.13866764992338 THEN DO;
            _NODE_  =                   18;
            _LEAF_  =                    5;
            P_CategoryHR  =     0.05194805194805;
            P_CategoryDESIGNER  =     0.03896103896103;
            P_CategoryINFORMATION_TECHNOLOGY  =                    0;
            P_CategoryTEACHER  =     0.19480519480519;
            P_CategoryADVOCATE  =      0.1038961038961;
            P_CategoryBUSINESS_DEVELOPMENT  =     0.06493506493506;
            P_CategoryHEALTHCARE  =     0.01298701298701;
            P_CategoryFITNESS  =     0.07792207792207;
            P_CategoryOTHER  =     0.03896103896103;
            P_CategorySALES  =     0.35064935064935;
            P_CategoryCONSULTANT  =     0.03896103896103;
            P_CategoryDIGITAL_MEDIA  =     0.02597402597402;
            Q_CategoryHR  =     0.05194805194805;
            Q_CategoryDESIGNER  =     0.03896103896103;
            Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
            Q_CategoryTEACHER  =     0.19480519480519;
            Q_CategoryADVOCATE  =      0.1038961038961;
            Q_CategoryBUSINESS_DEVELOPMENT  =     0.06493506493506;
            Q_CategoryHEALTHCARE  =     0.01298701298701;
            Q_CategoryFITNESS  =     0.07792207792207;
            Q_CategoryOTHER  =     0.03896103896103;
            Q_CategorySALES  =     0.35064935064935;
            Q_CategoryCONSULTANT  =     0.03896103896103;
            Q_CategoryDIGITAL_MEDIA  =     0.02597402597402;
            V_CategoryHR  =     0.04255319148936;
            V_CategoryDESIGNER  =      0.1063829787234;
            V_CategoryINFORMATION_TECHNOLOGY  =                    0;
            V_CategoryTEACHER  =      0.1063829787234;
            V_CategoryADVOCATE  =     0.17021276595744;
            V_CategoryBUSINESS_DEVELOPMENT  =     0.02127659574468;
            V_CategoryHEALTHCARE  =     0.02127659574468;
            V_CategoryFITNESS  =      0.1063829787234;
            V_CategoryOTHER  =     0.04255319148936;
            V_CategorySALES  =     0.31914893617021;
            V_CategoryCONSULTANT  =     0.02127659574468;
            V_CategoryDIGITAL_MEDIA  =     0.04255319148936;
            I_Category  = 'SALES' ;
            U_Category  = 'SALES' ;
            END;
          ELSE DO;
            _NODE_  =                   19;
            _LEAF_  =                    6;
            P_CategoryHR  =     0.01190476190476;
            P_CategoryDESIGNER  =     0.48809523809523;
            P_CategoryINFORMATION_TECHNOLOGY  =     0.04761904761904;
            P_CategoryTEACHER  =                    0;
            P_CategoryADVOCATE  =                    0;
            P_CategoryBUSINESS_DEVELOPMENT  =     0.01190476190476;
            P_CategoryHEALTHCARE  =     0.03571428571428;
            P_CategoryFITNESS  =                    0;
            P_CategoryOTHER  =     0.02380952380952;
            P_CategorySALES  =     0.03571428571428;
            P_CategoryCONSULTANT  =     0.01190476190476;
            P_CategoryDIGITAL_MEDIA  =     0.33333333333333;
            Q_CategoryHR  =     0.01190476190476;
            Q_CategoryDESIGNER  =     0.48809523809523;
            Q_CategoryINFORMATION_TECHNOLOGY  =     0.04761904761904;
            Q_CategoryTEACHER  =                    0;
            Q_CategoryADVOCATE  =                    0;
            Q_CategoryBUSINESS_DEVELOPMENT  =     0.01190476190476;
            Q_CategoryHEALTHCARE  =     0.03571428571428;
            Q_CategoryFITNESS  =                    0;
            Q_CategoryOTHER  =     0.02380952380952;
            Q_CategorySALES  =     0.03571428571428;
            Q_CategoryCONSULTANT  =     0.01190476190476;
            Q_CategoryDIGITAL_MEDIA  =     0.33333333333333;
            V_CategoryHR  =      0.0204081632653;
            V_CategoryDESIGNER  =     0.38775510204081;
            V_CategoryINFORMATION_TECHNOLOGY  =      0.0204081632653;
            V_CategoryTEACHER  =      0.0204081632653;
            V_CategoryADVOCATE  =                    0;
            V_CategoryBUSINESS_DEVELOPMENT  =     0.06122448979591;
            V_CategoryHEALTHCARE  =                    0;
            V_CategoryFITNESS  =                    0;
            V_CategoryOTHER  =     0.04081632653061;
            V_CategorySALES  =     0.08163265306122;
            V_CategoryCONSULTANT  =      0.0204081632653;
            V_CategoryDIGITAL_MEDIA  =      0.3469387755102;
            I_Category  = 'DESIGNER' ;
            U_Category  = 'DESIGNER' ;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(TextCluster6_SVD3 ) AND 
                0.25756950693809 <= TextCluster6_SVD3  THEN DO;
            _NODE_  =                   17;
            _LEAF_  =                    4;
            P_CategoryHR  =                    0;
            P_CategoryDESIGNER  =                    0;
            P_CategoryINFORMATION_TECHNOLOGY  =                    0;
            P_CategoryTEACHER  =                    0;
            P_CategoryADVOCATE  =     0.01515151515151;
            P_CategoryBUSINESS_DEVELOPMENT  =                  0.5;
            P_CategoryHEALTHCARE  =     0.07575757575757;
            P_CategoryFITNESS  =     0.04545454545454;
            P_CategoryOTHER  =     0.06060606060606;
            P_CategorySALES  =     0.07575757575757;
            P_CategoryCONSULTANT  =     0.12121212121212;
            P_CategoryDIGITAL_MEDIA  =      0.1060606060606;
            Q_CategoryHR  =                    0;
            Q_CategoryDESIGNER  =                    0;
            Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
            Q_CategoryTEACHER  =                    0;
            Q_CategoryADVOCATE  =     0.01515151515151;
            Q_CategoryBUSINESS_DEVELOPMENT  =                  0.5;
            Q_CategoryHEALTHCARE  =     0.07575757575757;
            Q_CategoryFITNESS  =     0.04545454545454;
            Q_CategoryOTHER  =     0.06060606060606;
            Q_CategorySALES  =     0.07575757575757;
            Q_CategoryCONSULTANT  =     0.12121212121212;
            Q_CategoryDIGITAL_MEDIA  =      0.1060606060606;
            V_CategoryHR  =                    0;
            V_CategoryDESIGNER  =                    0;
            V_CategoryINFORMATION_TECHNOLOGY  =                    0;
            V_CategoryTEACHER  =                    0;
            V_CategoryADVOCATE  =                    0;
            V_CategoryBUSINESS_DEVELOPMENT  =     0.48717948717948;
            V_CategoryHEALTHCARE  =     0.12820512820512;
            V_CategoryFITNESS  =     0.02564102564102;
            V_CategoryOTHER  =     0.02564102564102;
            V_CategorySALES  =     0.07692307692307;
            V_CategoryCONSULTANT  =     0.17948717948717;
            V_CategoryDIGITAL_MEDIA  =     0.07692307692307;
            I_Category  = 'BUSINESS-DEVELOPMENT' ;
            U_Category  = 'BUSINESS-DEVELOPMENT' ;
            END;
          ELSE DO;
            _NODE_  =                   16;
            _LEAF_  =                    3;
            P_CategoryHR  =     0.00462962962962;
            P_CategoryDESIGNER  =     0.02314814814814;
            P_CategoryINFORMATION_TECHNOLOGY  =     0.02314814814814;
            P_CategoryTEACHER  =     0.00925925925925;
            P_CategoryADVOCATE  =     0.17592592592592;
            P_CategoryBUSINESS_DEVELOPMENT  =     0.08796296296296;
            P_CategoryHEALTHCARE  =     0.19444444444444;
            P_CategoryFITNESS  =     0.05555555555555;
            P_CategoryOTHER  =     0.21759259259259;
            P_CategorySALES  =     0.09259259259259;
            P_CategoryCONSULTANT  =     0.10185185185185;
            P_CategoryDIGITAL_MEDIA  =     0.01388888888888;
            Q_CategoryHR  =     0.00462962962962;
            Q_CategoryDESIGNER  =     0.02314814814814;
            Q_CategoryINFORMATION_TECHNOLOGY  =     0.02314814814814;
            Q_CategoryTEACHER  =     0.00925925925925;
            Q_CategoryADVOCATE  =     0.17592592592592;
            Q_CategoryBUSINESS_DEVELOPMENT  =     0.08796296296296;
            Q_CategoryHEALTHCARE  =     0.19444444444444;
            Q_CategoryFITNESS  =     0.05555555555555;
            Q_CategoryOTHER  =     0.21759259259259;
            Q_CategorySALES  =     0.09259259259259;
            Q_CategoryCONSULTANT  =     0.10185185185185;
            Q_CategoryDIGITAL_MEDIA  =     0.01388888888888;
            V_CategoryHR  =                    0;
            V_CategoryDESIGNER  =     0.02290076335877;
            V_CategoryINFORMATION_TECHNOLOGY  =     0.02290076335877;
            V_CategoryTEACHER  =     0.02290076335877;
            V_CategoryADVOCATE  =     0.18320610687022;
            V_CategoryBUSINESS_DEVELOPMENT  =     0.08396946564885;
            V_CategoryHEALTHCARE  =      0.1679389312977;
            V_CategoryFITNESS  =     0.09923664122137;
            V_CategoryOTHER  =     0.18320610687022;
            V_CategorySALES  =     0.08396946564885;
            V_CategoryCONSULTANT  =     0.11450381679389;
            V_CategoryDIGITAL_MEDIA  =     0.01526717557251;
            I_Category  = 'OTHER' ;
            U_Category  = 'OTHER' ;
            END;
          END;
        END;
      END;
    END;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

