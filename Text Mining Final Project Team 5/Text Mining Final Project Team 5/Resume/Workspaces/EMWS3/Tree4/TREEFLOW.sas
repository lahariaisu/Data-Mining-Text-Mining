****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH F_Category  $   22; 
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
label R_CategoryHR = 'Residual: Category=HR' ;
label R_CategoryDESIGNER = 'Residual: Category=DESIGNER' ;
label R_CategoryINFORMATION_TECHNOLOGY = 
'Residual: Category=INFORMATION-TECHNOLOGY' ;
label R_CategoryTEACHER = 'Residual: Category=TEACHER' ;
label R_CategoryADVOCATE = 'Residual: Category=ADVOCATE' ;
label R_CategoryBUSINESS_DEVELOPMENT = 
'Residual: Category=BUSINESS-DEVELOPMENT' ;
label R_CategoryHEALTHCARE = 'Residual: Category=HEALTHCARE' ;
label R_CategoryFITNESS = 'Residual: Category=FITNESS' ;
label R_CategoryOTHER = 'Residual: Category=OTHER' ;
label R_CategorySALES = 'Residual: Category=SALES' ;
label R_CategoryCONSULTANT = 'Residual: Category=CONSULTANT' ;
label R_CategoryDIGITAL_MEDIA = 'Residual: Category=DIGITAL-MEDIA' ;
label F_Category = 'From: Category' ;
label I_Category = 'Into: Category' ;
label U_Category = 'Unnormalized Into: Category' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_22 $     22; DROP _ARBFMT_22; 
_ARBFMT_22 = ' '; /* Initialize to avoid warning. */


_ARBFMT_22 = PUT( Category , $22.);
 %DMNORMCP( _ARBFMT_22, F_Category );

******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(TextCluster7_SVD4 ) AND 
  TextCluster7_SVD4  <    -0.21960349929217 THEN DO;
  _NODE_  =                    2;
  _LEAF_  =                    1;
  P_CategoryHR  =     0.73134328358208;
  P_CategoryDESIGNER  =                    0;
  P_CategoryINFORMATION_TECHNOLOGY  =     0.01492537313432;
  P_CategoryTEACHER  =                    0;
  P_CategoryADVOCATE  =     0.07462686567164;
  P_CategoryBUSINESS_DEVELOPMENT  =     0.02985074626865;
  P_CategoryHEALTHCARE  =     0.05970149253731;
  P_CategoryFITNESS  =     0.01492537313432;
  P_CategoryOTHER  =     0.01492537313432;
  P_CategorySALES  =     0.02985074626865;
  P_CategoryCONSULTANT  =     0.02985074626865;
  P_CategoryDIGITAL_MEDIA  =                    0;
  Q_CategoryHR  =     0.73134328358208;
  Q_CategoryDESIGNER  =                    0;
  Q_CategoryINFORMATION_TECHNOLOGY  =     0.01492537313432;
  Q_CategoryTEACHER  =                    0;
  Q_CategoryADVOCATE  =     0.07462686567164;
  Q_CategoryBUSINESS_DEVELOPMENT  =     0.02985074626865;
  Q_CategoryHEALTHCARE  =     0.05970149253731;
  Q_CategoryFITNESS  =     0.01492537313432;
  Q_CategoryOTHER  =     0.01492537313432;
  Q_CategorySALES  =     0.02985074626865;
  Q_CategoryCONSULTANT  =     0.02985074626865;
  Q_CategoryDIGITAL_MEDIA  =                    0;
  V_CategoryHR  =     0.73684210526315;
  V_CategoryDESIGNER  =                    0;
  V_CategoryINFORMATION_TECHNOLOGY  =     0.02631578947368;
  V_CategoryTEACHER  =                    0;
  V_CategoryADVOCATE  =     0.02631578947368;
  V_CategoryBUSINESS_DEVELOPMENT  =     0.02631578947368;
  V_CategoryHEALTHCARE  =     0.07894736842105;
  V_CategoryFITNESS  =     0.02631578947368;
  V_CategoryOTHER  =     0.02631578947368;
  V_CategorySALES  =                    0;
  V_CategoryCONSULTANT  =     0.05263157894736;
  V_CategoryDIGITAL_MEDIA  =                    0;
  I_Category  = 'HR' ;
  U_Category  = 'HR' ;
  END;
ELSE DO;
  IF  NOT MISSING(TextCluster7_SVD5 ) AND 
    TextCluster7_SVD5  <    -0.25134001063195 THEN DO;
    _NODE_  =                    6;
    _LEAF_  =                    2;
    P_CategoryHR  =                    0;
    P_CategoryDESIGNER  =     0.02380952380952;
    P_CategoryINFORMATION_TECHNOLOGY  =                    0;
    P_CategoryTEACHER  =      0.8095238095238;
    P_CategoryADVOCATE  =     0.07142857142857;
    P_CategoryBUSINESS_DEVELOPMENT  =                    0;
    P_CategoryHEALTHCARE  =                    0;
    P_CategoryFITNESS  =     0.09523809523809;
    P_CategoryOTHER  =                    0;
    P_CategorySALES  =                    0;
    P_CategoryCONSULTANT  =                    0;
    P_CategoryDIGITAL_MEDIA  =                    0;
    Q_CategoryHR  =                    0;
    Q_CategoryDESIGNER  =     0.02380952380952;
    Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
    Q_CategoryTEACHER  =      0.8095238095238;
    Q_CategoryADVOCATE  =     0.07142857142857;
    Q_CategoryBUSINESS_DEVELOPMENT  =                    0;
    Q_CategoryHEALTHCARE  =                    0;
    Q_CategoryFITNESS  =     0.09523809523809;
    Q_CategoryOTHER  =                    0;
    Q_CategorySALES  =                    0;
    Q_CategoryCONSULTANT  =                    0;
    Q_CategoryDIGITAL_MEDIA  =                    0;
    V_CategoryHR  =     0.02439024390243;
    V_CategoryDESIGNER  =     0.04878048780487;
    V_CategoryINFORMATION_TECHNOLOGY  =                    0;
    V_CategoryTEACHER  =     0.56097560975609;
    V_CategoryADVOCATE  =     0.07317073170731;
    V_CategoryBUSINESS_DEVELOPMENT  =                    0;
    V_CategoryHEALTHCARE  =     0.04878048780487;
    V_CategoryFITNESS  =     0.07317073170731;
    V_CategoryOTHER  =     0.14634146341463;
    V_CategorySALES  =                    0;
    V_CategoryCONSULTANT  =     0.02439024390243;
    V_CategoryDIGITAL_MEDIA  =                    0;
    I_Category  = 'TEACHER' ;
    U_Category  = 'TEACHER' ;
    END;
  ELSE DO;
    IF  NOT MISSING(TextCluster7_SVD2 ) AND 
          0.22658528644565 <= TextCluster7_SVD2  THEN DO;
      _NODE_  =                   11;
      _LEAF_  =                    8;
      P_CategoryHR  =                    0;
      P_CategoryDESIGNER  =     0.03296703296703;
      P_CategoryINFORMATION_TECHNOLOGY  =     0.53846153846153;
      P_CategoryTEACHER  =                    0;
      P_CategoryADVOCATE  =     0.02197802197802;
      P_CategoryBUSINESS_DEVELOPMENT  =     0.01098901098901;
      P_CategoryHEALTHCARE  =     0.03296703296703;
      P_CategoryFITNESS  =                    0;
      P_CategoryOTHER  =     0.06593406593406;
      P_CategorySALES  =                    0;
      P_CategoryCONSULTANT  =     0.23076923076923;
      P_CategoryDIGITAL_MEDIA  =     0.06593406593406;
      Q_CategoryHR  =                    0;
      Q_CategoryDESIGNER  =     0.03296703296703;
      Q_CategoryINFORMATION_TECHNOLOGY  =     0.53846153846153;
      Q_CategoryTEACHER  =                    0;
      Q_CategoryADVOCATE  =     0.02197802197802;
      Q_CategoryBUSINESS_DEVELOPMENT  =     0.01098901098901;
      Q_CategoryHEALTHCARE  =     0.03296703296703;
      Q_CategoryFITNESS  =                    0;
      Q_CategoryOTHER  =     0.06593406593406;
      Q_CategorySALES  =                    0;
      Q_CategoryCONSULTANT  =     0.23076923076923;
      Q_CategoryDIGITAL_MEDIA  =     0.06593406593406;
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
      IF  NOT MISSING(TextCluster7_SVD11 ) AND 
            0.17462934468944 <= TextCluster7_SVD11  THEN DO;
        _NODE_  =                   15;
        _LEAF_  =                    7;
        P_CategoryHR  =     0.02439024390243;
        P_CategoryDESIGNER  =                    0;
        P_CategoryINFORMATION_TECHNOLOGY  =                    0;
        P_CategoryTEACHER  =                    0;
        P_CategoryADVOCATE  =     0.07317073170731;
        P_CategoryBUSINESS_DEVELOPMENT  =     0.02439024390243;
        P_CategoryHEALTHCARE  =                    0;
        P_CategoryFITNESS  =     0.82926829268292;
        P_CategoryOTHER  =                    0;
        P_CategorySALES  =     0.02439024390243;
        P_CategoryCONSULTANT  =                    0;
        P_CategoryDIGITAL_MEDIA  =     0.02439024390243;
        Q_CategoryHR  =     0.02439024390243;
        Q_CategoryDESIGNER  =                    0;
        Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
        Q_CategoryTEACHER  =                    0;
        Q_CategoryADVOCATE  =     0.07317073170731;
        Q_CategoryBUSINESS_DEVELOPMENT  =     0.02439024390243;
        Q_CategoryHEALTHCARE  =                    0;
        Q_CategoryFITNESS  =     0.82926829268292;
        Q_CategoryOTHER  =                    0;
        Q_CategorySALES  =     0.02439024390243;
        Q_CategoryCONSULTANT  =                    0;
        Q_CategoryDIGITAL_MEDIA  =     0.02439024390243;
        V_CategoryHR  =                    0;
        V_CategoryDESIGNER  =                    0;
        V_CategoryINFORMATION_TECHNOLOGY  =                 0.05;
        V_CategoryTEACHER  =                    0;
        V_CategoryADVOCATE  =                 0.05;
        V_CategoryBUSINESS_DEVELOPMENT  =                    0;
        V_CategoryHEALTHCARE  =                 0.05;
        V_CategoryFITNESS  =                  0.8;
        V_CategoryOTHER  =                 0.05;
        V_CategorySALES  =                    0;
        V_CategoryCONSULTANT  =                    0;
        V_CategoryDIGITAL_MEDIA  =                    0;
        I_Category  = 'FITNESS' ;
        U_Category  = 'FITNESS' ;
        END;
      ELSE DO;
        IF  NOT MISSING(TextCluster7_SVD7 ) AND 
              0.04979885441801 <= TextCluster7_SVD7  THEN DO;
          IF  NOT MISSING(TextCluster7_SVD2 ) AND 
            TextCluster7_SVD2  <    -0.15342627742015 THEN DO;
            _NODE_  =                   24;
            _LEAF_  =                    5;
            P_CategoryHR  =     0.04347826086956;
            P_CategoryDESIGNER  =     0.01449275362318;
            P_CategoryINFORMATION_TECHNOLOGY  =                    0;
            P_CategoryTEACHER  =     0.18840579710144;
            P_CategoryADVOCATE  =     0.08695652173913;
            P_CategoryBUSINESS_DEVELOPMENT  =     0.07246376811594;
            P_CategoryHEALTHCARE  =     0.01449275362318;
            P_CategoryFITNESS  =     0.08695652173913;
            P_CategoryOTHER  =     0.04347826086956;
            P_CategorySALES  =     0.39130434782608;
            P_CategoryCONSULTANT  =     0.04347826086956;
            P_CategoryDIGITAL_MEDIA  =     0.01449275362318;
            Q_CategoryHR  =     0.04347826086956;
            Q_CategoryDESIGNER  =     0.01449275362318;
            Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
            Q_CategoryTEACHER  =     0.18840579710144;
            Q_CategoryADVOCATE  =     0.08695652173913;
            Q_CategoryBUSINESS_DEVELOPMENT  =     0.07246376811594;
            Q_CategoryHEALTHCARE  =     0.01449275362318;
            Q_CategoryFITNESS  =     0.08695652173913;
            Q_CategoryOTHER  =     0.04347826086956;
            Q_CategorySALES  =     0.39130434782608;
            Q_CategoryCONSULTANT  =     0.04347826086956;
            Q_CategoryDIGITAL_MEDIA  =     0.01449275362318;
            V_CategoryHR  =     0.04761904761904;
            V_CategoryDESIGNER  =     0.09523809523809;
            V_CategoryINFORMATION_TECHNOLOGY  =                    0;
            V_CategoryTEACHER  =     0.11904761904761;
            V_CategoryADVOCATE  =     0.14285714285714;
            V_CategoryBUSINESS_DEVELOPMENT  =     0.02380952380952;
            V_CategoryHEALTHCARE  =     0.02380952380952;
            V_CategoryFITNESS  =     0.09523809523809;
            V_CategoryOTHER  =     0.04761904761904;
            V_CategorySALES  =     0.33333333333333;
            V_CategoryCONSULTANT  =     0.02380952380952;
            V_CategoryDIGITAL_MEDIA  =     0.04761904761904;
            I_Category  = 'SALES' ;
            U_Category  = 'SALES' ;
            END;
          ELSE DO;
            _NODE_  =                   25;
            _LEAF_  =                    6;
            P_CategoryHR  =     0.01086956521739;
            P_CategoryDESIGNER  =     0.46739130434782;
            P_CategoryINFORMATION_TECHNOLOGY  =     0.04347826086956;
            P_CategoryTEACHER  =     0.01086956521739;
            P_CategoryADVOCATE  =     0.01086956521739;
            P_CategoryBUSINESS_DEVELOPMENT  =     0.02173913043478;
            P_CategoryHEALTHCARE  =     0.03260869565217;
            P_CategoryFITNESS  =                    0;
            P_CategoryOTHER  =     0.02173913043478;
            P_CategorySALES  =     0.05434782608695;
            P_CategoryCONSULTANT  =     0.01086956521739;
            P_CategoryDIGITAL_MEDIA  =     0.31521739130434;
            Q_CategoryHR  =     0.01086956521739;
            Q_CategoryDESIGNER  =     0.46739130434782;
            Q_CategoryINFORMATION_TECHNOLOGY  =     0.04347826086956;
            Q_CategoryTEACHER  =     0.01086956521739;
            Q_CategoryADVOCATE  =     0.01086956521739;
            Q_CategoryBUSINESS_DEVELOPMENT  =     0.02173913043478;
            Q_CategoryHEALTHCARE  =     0.03260869565217;
            Q_CategoryFITNESS  =                    0;
            Q_CategoryOTHER  =     0.02173913043478;
            Q_CategorySALES  =     0.05434782608695;
            Q_CategoryCONSULTANT  =     0.01086956521739;
            Q_CategoryDIGITAL_MEDIA  =     0.31521739130434;
            V_CategoryHR  =     0.01923076923076;
            V_CategoryDESIGNER  =     0.38461538461538;
            V_CategoryINFORMATION_TECHNOLOGY  =     0.01923076923076;
            V_CategoryTEACHER  =     0.01923076923076;
            V_CategoryADVOCATE  =                    0;
            V_CategoryBUSINESS_DEVELOPMENT  =      0.0576923076923;
            V_CategoryHEALTHCARE  =     0.01923076923076;
            V_CategoryFITNESS  =                    0;
            V_CategoryOTHER  =     0.03846153846153;
            V_CategorySALES  =     0.09615384615384;
            V_CategoryCONSULTANT  =     0.01923076923076;
            V_CategoryDIGITAL_MEDIA  =     0.32692307692307;
            I_Category  = 'DESIGNER' ;
            U_Category  = 'DESIGNER' ;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(TextCluster7_SVD3 ) AND 
                0.18533092484376 <= TextCluster7_SVD3  THEN DO;
            _NODE_  =                   23;
            _LEAF_  =                    4;
            P_CategoryHR  =                    0;
            P_CategoryDESIGNER  =                    0;
            P_CategoryINFORMATION_TECHNOLOGY  =                    0;
            P_CategoryTEACHER  =                    0;
            P_CategoryADVOCATE  =     0.02666666666666;
            P_CategoryBUSINESS_DEVELOPMENT  =     0.45333333333333;
            P_CategoryHEALTHCARE  =     0.06666666666666;
            P_CategoryFITNESS  =     0.05333333333333;
            P_CategoryOTHER  =                 0.08;
            P_CategorySALES  =     0.09333333333333;
            P_CategoryCONSULTANT  =                 0.12;
            P_CategoryDIGITAL_MEDIA  =     0.10666666666666;
            Q_CategoryHR  =                    0;
            Q_CategoryDESIGNER  =                    0;
            Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
            Q_CategoryTEACHER  =                    0;
            Q_CategoryADVOCATE  =     0.02666666666666;
            Q_CategoryBUSINESS_DEVELOPMENT  =     0.45333333333333;
            Q_CategoryHEALTHCARE  =     0.06666666666666;
            Q_CategoryFITNESS  =     0.05333333333333;
            Q_CategoryOTHER  =                 0.08;
            Q_CategorySALES  =     0.09333333333333;
            Q_CategoryCONSULTANT  =                 0.12;
            Q_CategoryDIGITAL_MEDIA  =     0.10666666666666;
            V_CategoryHR  =                    0;
            V_CategoryDESIGNER  =                    0;
            V_CategoryINFORMATION_TECHNOLOGY  =                    0;
            V_CategoryTEACHER  =                    0;
            V_CategoryADVOCATE  =     0.03703703703703;
            V_CategoryBUSINESS_DEVELOPMENT  =     0.48148148148148;
            V_CategoryHEALTHCARE  =     0.12962962962962;
            V_CategoryFITNESS  =     0.01851851851851;
            V_CategoryOTHER  =     0.01851851851851;
            V_CategorySALES  =     0.09259259259259;
            V_CategoryCONSULTANT  =     0.16666666666666;
            V_CategoryDIGITAL_MEDIA  =     0.05555555555555;
            I_Category  = 'BUSINESS-DEVELOPMENT' ;
            U_Category  = 'BUSINESS-DEVELOPMENT' ;
            END;
          ELSE DO;
            _NODE_  =                   22;
            _LEAF_  =                    3;
            P_CategoryHR  =     0.00507614213197;
            P_CategoryDESIGNER  =     0.02538071065989;
            P_CategoryINFORMATION_TECHNOLOGY  =     0.02538071065989;
            P_CategoryTEACHER  =     0.01015228426395;
            P_CategoryADVOCATE  =     0.17766497461928;
            P_CategoryBUSINESS_DEVELOPMENT  =     0.07614213197969;
            P_CategoryHEALTHCARE  =     0.20812182741116;
            P_CategoryFITNESS  =     0.04568527918781;
            P_CategoryOTHER  =     0.22842639593908;
            P_CategorySALES  =     0.08121827411167;
            P_CategoryCONSULTANT  =     0.10659898477157;
            P_CategoryDIGITAL_MEDIA  =     0.01015228426395;
            Q_CategoryHR  =     0.00507614213197;
            Q_CategoryDESIGNER  =     0.02538071065989;
            Q_CategoryINFORMATION_TECHNOLOGY  =     0.02538071065989;
            Q_CategoryTEACHER  =     0.01015228426395;
            Q_CategoryADVOCATE  =     0.17766497461928;
            Q_CategoryBUSINESS_DEVELOPMENT  =     0.07614213197969;
            Q_CategoryHEALTHCARE  =     0.20812182741116;
            Q_CategoryFITNESS  =     0.04568527918781;
            Q_CategoryOTHER  =     0.22842639593908;
            Q_CategorySALES  =     0.08121827411167;
            Q_CategoryCONSULTANT  =     0.10659898477157;
            Q_CategoryDIGITAL_MEDIA  =     0.01015228426395;
            V_CategoryHR  =                    0;
            V_CategoryDESIGNER  =     0.02857142857142;
            V_CategoryINFORMATION_TECHNOLOGY  =     0.02857142857142;
            V_CategoryTEACHER  =     0.01904761904761;
            V_CategoryADVOCATE  =                  0.2;
            V_CategoryBUSINESS_DEVELOPMENT  =     0.03809523809523;
            V_CategoryHEALTHCARE  =     0.16190476190476;
            V_CategoryFITNESS  =     0.09523809523809;
            V_CategoryOTHER  =      0.2095238095238;
            V_CategorySALES  =     0.08571428571428;
            V_CategoryCONSULTANT  =     0.11428571428571;
            V_CategoryDIGITAL_MEDIA  =     0.01904761904761;
            I_Category  = 'OTHER' ;
            U_Category  = 'OTHER' ;
            END;
          END;
        END;
      END;
    END;
  END;

*****  RESIDUALS R_ *************;
IF  F_Category  NE 'HR' 
AND F_Category  NE 'DESIGNER' 
AND F_Category  NE 'INFORMATION-TECHNOLOGY' 
AND F_Category  NE 'TEACHER' 
AND F_Category  NE 'ADVOCATE' 
AND F_Category  NE 'BUSINESS-DEVELOPMENT' 
AND F_Category  NE 'HEALTHCARE' 
AND F_Category  NE 'FITNESS' 
AND F_Category  NE 'OTHER' 
AND F_Category  NE 'SALES' 
AND F_Category  NE 'CONSULTANT' 
AND F_Category  NE 'DIGITAL-MEDIA'  THEN DO; 
        R_CategoryHR  = .;
        R_CategoryDESIGNER  = .;
        R_CategoryINFORMATION_TECHNOLOGY  = .;
        R_CategoryTEACHER  = .;
        R_CategoryADVOCATE  = .;
        R_CategoryBUSINESS_DEVELOPMENT  = .;
        R_CategoryHEALTHCARE  = .;
        R_CategoryFITNESS  = .;
        R_CategoryOTHER  = .;
        R_CategorySALES  = .;
        R_CategoryCONSULTANT  = .;
        R_CategoryDIGITAL_MEDIA  = .;
 END;
 ELSE DO;
       R_CategoryHR  =  -P_CategoryHR ;
       R_CategoryDESIGNER  =  -P_CategoryDESIGNER ;
       R_CategoryINFORMATION_TECHNOLOGY  =  -P_CategoryINFORMATION_TECHNOLOGY
         ;
       R_CategoryTEACHER  =  -P_CategoryTEACHER ;
       R_CategoryADVOCATE  =  -P_CategoryADVOCATE ;
       R_CategoryBUSINESS_DEVELOPMENT  =  -P_CategoryBUSINESS_DEVELOPMENT ;
       R_CategoryHEALTHCARE  =  -P_CategoryHEALTHCARE ;
       R_CategoryFITNESS  =  -P_CategoryFITNESS ;
       R_CategoryOTHER  =  -P_CategoryOTHER ;
       R_CategorySALES  =  -P_CategorySALES ;
       R_CategoryCONSULTANT  =  -P_CategoryCONSULTANT ;
       R_CategoryDIGITAL_MEDIA  =  -P_CategoryDIGITAL_MEDIA ;
       SELECT( F_Category  );
          WHEN( 'HR'  ) R_CategoryHR  = R_CategoryHR  +1;
          WHEN( 'DESIGNER'  ) R_CategoryDESIGNER  = R_CategoryDESIGNER  +1;
          WHEN( 'INFORMATION-TECHNOLOGY'  ) R_CategoryINFORMATION_TECHNOLOGY
          = R_CategoryINFORMATION_TECHNOLOGY  +1;
          WHEN( 'TEACHER'  ) R_CategoryTEACHER  = R_CategoryTEACHER  +1;
          WHEN( 'ADVOCATE'  ) R_CategoryADVOCATE  = R_CategoryADVOCATE  +1;
          WHEN( 'BUSINESS-DEVELOPMENT'  ) R_CategoryBUSINESS_DEVELOPMENT  = 
        R_CategoryBUSINESS_DEVELOPMENT  +1;
          WHEN( 'HEALTHCARE'  ) R_CategoryHEALTHCARE  = R_CategoryHEALTHCARE
          +1;
          WHEN( 'FITNESS'  ) R_CategoryFITNESS  = R_CategoryFITNESS  +1;
          WHEN( 'OTHER'  ) R_CategoryOTHER  = R_CategoryOTHER  +1;
          WHEN( 'SALES'  ) R_CategorySALES  = R_CategorySALES  +1;
          WHEN( 'CONSULTANT'  ) R_CategoryCONSULTANT  = R_CategoryCONSULTANT
          +1;
          WHEN( 'DIGITAL-MEDIA'  ) R_CategoryDIGITAL_MEDIA  = 
        R_CategoryDIGITAL_MEDIA  +1;
       END;
 END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

