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
IF  NOT MISSING(TextCluster5_SVD4 ) AND 
  TextCluster5_SVD4  <    -0.17977935490765 THEN DO;
  _NODE_  =                    2;
  _LEAF_  =                    1;
  P_CategoryHR  =     0.74242424242424;
  P_CategoryDESIGNER  =                    0;
  P_CategoryINFORMATION_TECHNOLOGY  =     0.01515151515151;
  P_CategoryTEACHER  =                    0;
  P_CategoryADVOCATE  =     0.06060606060606;
  P_CategoryBUSINESS_DEVELOPMENT  =     0.03030303030303;
  P_CategoryHEALTHCARE  =     0.06060606060606;
  P_CategoryFITNESS  =     0.01515151515151;
  P_CategoryOTHER  =     0.01515151515151;
  P_CategorySALES  =     0.03030303030303;
  P_CategoryCONSULTANT  =     0.03030303030303;
  P_CategoryDIGITAL_MEDIA  =                    0;
  Q_CategoryHR  =     0.74242424242424;
  Q_CategoryDESIGNER  =                    0;
  Q_CategoryINFORMATION_TECHNOLOGY  =     0.01515151515151;
  Q_CategoryTEACHER  =                    0;
  Q_CategoryADVOCATE  =     0.06060606060606;
  Q_CategoryBUSINESS_DEVELOPMENT  =     0.03030303030303;
  Q_CategoryHEALTHCARE  =     0.06060606060606;
  Q_CategoryFITNESS  =     0.01515151515151;
  Q_CategoryOTHER  =     0.01515151515151;
  Q_CategorySALES  =     0.03030303030303;
  Q_CategoryCONSULTANT  =     0.03030303030303;
  Q_CategoryDIGITAL_MEDIA  =                    0;
  V_CategoryHR  =     0.66666666666666;
  V_CategoryDESIGNER  =                    0;
  V_CategoryINFORMATION_TECHNOLOGY  =     0.04444444444444;
  V_CategoryTEACHER  =                    0;
  V_CategoryADVOCATE  =     0.04444444444444;
  V_CategoryBUSINESS_DEVELOPMENT  =     0.02222222222222;
  V_CategoryHEALTHCARE  =     0.08888888888888;
  V_CategoryFITNESS  =     0.02222222222222;
  V_CategoryOTHER  =     0.06666666666666;
  V_CategorySALES  =                    0;
  V_CategoryCONSULTANT  =     0.04444444444444;
  V_CategoryDIGITAL_MEDIA  =                    0;
  I_Category  = 'HR' ;
  U_Category  = 'HR' ;
  END;
ELSE DO;
  IF  NOT MISSING(TextCluster5_SVD5 ) AND 
    TextCluster5_SVD5  <    -0.27129238051774 THEN DO;
    _NODE_  =                    6;
    _LEAF_  =                    2;
    P_CategoryHR  =                    0;
    P_CategoryDESIGNER  =                0.025;
    P_CategoryINFORMATION_TECHNOLOGY  =                    0;
    P_CategoryTEACHER  =                0.825;
    P_CategoryADVOCATE  =                 0.05;
    P_CategoryBUSINESS_DEVELOPMENT  =                    0;
    P_CategoryHEALTHCARE  =                    0;
    P_CategoryFITNESS  =                  0.1;
    P_CategoryOTHER  =                    0;
    P_CategorySALES  =                    0;
    P_CategoryCONSULTANT  =                    0;
    P_CategoryDIGITAL_MEDIA  =                    0;
    Q_CategoryHR  =                    0;
    Q_CategoryDESIGNER  =                0.025;
    Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
    Q_CategoryTEACHER  =                0.825;
    Q_CategoryADVOCATE  =                 0.05;
    Q_CategoryBUSINESS_DEVELOPMENT  =                    0;
    Q_CategoryHEALTHCARE  =                    0;
    Q_CategoryFITNESS  =                  0.1;
    Q_CategoryOTHER  =                    0;
    Q_CategorySALES  =                    0;
    Q_CategoryCONSULTANT  =                    0;
    Q_CategoryDIGITAL_MEDIA  =                    0;
    V_CategoryHR  =                    0;
    V_CategoryDESIGNER  =     0.04878048780487;
    V_CategoryINFORMATION_TECHNOLOGY  =                    0;
    V_CategoryTEACHER  =     0.56097560975609;
    V_CategoryADVOCATE  =     0.07317073170731;
    V_CategoryBUSINESS_DEVELOPMENT  =                    0;
    V_CategoryHEALTHCARE  =     0.04878048780487;
    V_CategoryFITNESS  =     0.09756097560975;
    V_CategoryOTHER  =     0.14634146341463;
    V_CategorySALES  =                    0;
    V_CategoryCONSULTANT  =     0.02439024390243;
    V_CategoryDIGITAL_MEDIA  =                    0;
    I_Category  = 'TEACHER' ;
    U_Category  = 'TEACHER' ;
    END;
  ELSE DO;
    IF  NOT MISSING(TextCluster5_SVD2 ) AND 
           0.1354019154475 <= TextCluster5_SVD2  THEN DO;
      IF  NOT MISSING(TextCluster5_SVD10 ) AND 
        TextCluster5_SVD10  <    -0.11566608126712 THEN DO;
        _NODE_  =                   16;
        _LEAF_  =                    8;
        P_CategoryHR  =                    0;
        P_CategoryDESIGNER  =                    0;
        P_CategoryINFORMATION_TECHNOLOGY  =                    0;
        P_CategoryTEACHER  =                    0;
        P_CategoryADVOCATE  =                    0;
        P_CategoryBUSINESS_DEVELOPMENT  =                    0;
        P_CategoryHEALTHCARE  =                    0;
        P_CategoryFITNESS  =                    0;
        P_CategoryOTHER  =                    0;
        P_CategorySALES  =                    0;
        P_CategoryCONSULTANT  =                0.125;
        P_CategoryDIGITAL_MEDIA  =                0.875;
        Q_CategoryHR  =                    0;
        Q_CategoryDESIGNER  =                    0;
        Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
        Q_CategoryTEACHER  =                    0;
        Q_CategoryADVOCATE  =                    0;
        Q_CategoryBUSINESS_DEVELOPMENT  =                    0;
        Q_CategoryHEALTHCARE  =                    0;
        Q_CategoryFITNESS  =                    0;
        Q_CategoryOTHER  =                    0;
        Q_CategorySALES  =                    0;
        Q_CategoryCONSULTANT  =                0.125;
        Q_CategoryDIGITAL_MEDIA  =                0.875;
        V_CategoryHR  =                    0;
        V_CategoryDESIGNER  =                    0;
        V_CategoryINFORMATION_TECHNOLOGY  =     0.28571428571428;
        V_CategoryTEACHER  =                    0;
        V_CategoryADVOCATE  =                    0;
        V_CategoryBUSINESS_DEVELOPMENT  =                    0;
        V_CategoryHEALTHCARE  =                    0;
        V_CategoryFITNESS  =                    0;
        V_CategoryOTHER  =                    0;
        V_CategorySALES  =     0.14285714285714;
        V_CategoryCONSULTANT  =                    0;
        V_CategoryDIGITAL_MEDIA  =     0.57142857142857;
        I_Category  = 'DIGITAL-MEDIA' ;
        U_Category  = 'DIGITAL-MEDIA' ;
        END;
      ELSE DO;
        _NODE_  =                   17;
        _LEAF_  =                    9;
        P_CategoryHR  =                    0;
        P_CategoryDESIGNER  =     0.05882352941176;
        P_CategoryINFORMATION_TECHNOLOGY  =     0.51960784313725;
        P_CategoryTEACHER  =                    0;
        P_CategoryADVOCATE  =     0.01960784313725;
        P_CategoryBUSINESS_DEVELOPMENT  =      0.0392156862745;
        P_CategoryHEALTHCARE  =     0.02941176470588;
        P_CategoryFITNESS  =                    0;
        P_CategoryOTHER  =     0.07843137254901;
        P_CategorySALES  =                    0;
        P_CategoryCONSULTANT  =      0.2156862745098;
        P_CategoryDIGITAL_MEDIA  =      0.0392156862745;
        Q_CategoryHR  =                    0;
        Q_CategoryDESIGNER  =     0.05882352941176;
        Q_CategoryINFORMATION_TECHNOLOGY  =     0.51960784313725;
        Q_CategoryTEACHER  =                    0;
        Q_CategoryADVOCATE  =     0.01960784313725;
        Q_CategoryBUSINESS_DEVELOPMENT  =      0.0392156862745;
        Q_CategoryHEALTHCARE  =     0.02941176470588;
        Q_CategoryFITNESS  =                    0;
        Q_CategoryOTHER  =     0.07843137254901;
        Q_CategorySALES  =                    0;
        Q_CategoryCONSULTANT  =      0.2156862745098;
        Q_CategoryDIGITAL_MEDIA  =      0.0392156862745;
        V_CategoryHR  =                    0;
        V_CategoryDESIGNER  =              0.09375;
        V_CategoryINFORMATION_TECHNOLOGY  =               0.4375;
        V_CategoryTEACHER  =                    0;
        V_CategoryADVOCATE  =             0.015625;
        V_CategoryBUSINESS_DEVELOPMENT  =             0.046875;
        V_CategoryHEALTHCARE  =               0.0625;
        V_CategoryFITNESS  =                    0;
        V_CategoryOTHER  =             0.078125;
        V_CategorySALES  =             0.015625;
        V_CategoryCONSULTANT  =              0.15625;
        V_CategoryDIGITAL_MEDIA  =              0.09375;
        I_Category  = 'INFORMATION-TECHNOLOGY' ;
        U_Category  = 'INFORMATION-TECHNOLOGY' ;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(TextCluster5_SVD6 ) AND 
        TextCluster5_SVD6  <    -0.13817520556383 THEN DO;
        IF  NOT MISSING(TextCluster5_SVD10 ) AND 
          TextCluster5_SVD10  <     0.06439385137476 THEN DO;
          _NODE_  =                   18;
          _LEAF_  =                    3;
          P_CategoryHR  =                    0;
          P_CategoryDESIGNER  =     0.07142857142857;
          P_CategoryINFORMATION_TECHNOLOGY  =                    0;
          P_CategoryTEACHER  =                    0;
          P_CategoryADVOCATE  =                    0;
          P_CategoryBUSINESS_DEVELOPMENT  =                    0;
          P_CategoryHEALTHCARE  =     0.07142857142857;
          P_CategoryFITNESS  =                    0;
          P_CategoryOTHER  =                    0;
          P_CategorySALES  =                    0;
          P_CategoryCONSULTANT  =                    0;
          P_CategoryDIGITAL_MEDIA  =     0.85714285714285;
          Q_CategoryHR  =                    0;
          Q_CategoryDESIGNER  =     0.07142857142857;
          Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
          Q_CategoryTEACHER  =                    0;
          Q_CategoryADVOCATE  =                    0;
          Q_CategoryBUSINESS_DEVELOPMENT  =                    0;
          Q_CategoryHEALTHCARE  =     0.07142857142857;
          Q_CategoryFITNESS  =                    0;
          Q_CategoryOTHER  =                    0;
          Q_CategorySALES  =                    0;
          Q_CategoryCONSULTANT  =                    0;
          Q_CategoryDIGITAL_MEDIA  =     0.85714285714285;
          V_CategoryHR  =     0.11111111111111;
          V_CategoryDESIGNER  =                    0;
          V_CategoryINFORMATION_TECHNOLOGY  =                    0;
          V_CategoryTEACHER  =                    0;
          V_CategoryADVOCATE  =                    0;
          V_CategoryBUSINESS_DEVELOPMENT  =                    0;
          V_CategoryHEALTHCARE  =                    0;
          V_CategoryFITNESS  =     0.11111111111111;
          V_CategoryOTHER  =                    0;
          V_CategorySALES  =                    0;
          V_CategoryCONSULTANT  =     0.11111111111111;
          V_CategoryDIGITAL_MEDIA  =     0.66666666666666;
          I_Category  = 'DIGITAL-MEDIA' ;
          U_Category  = 'DIGITAL-MEDIA' ;
          END;
        ELSE DO;
          _NODE_  =                   19;
          _LEAF_  =                    4;
          P_CategoryHR  =     0.02777777777777;
          P_CategoryDESIGNER  =     0.88888888888888;
          P_CategoryINFORMATION_TECHNOLOGY  =                    0;
          P_CategoryTEACHER  =                    0;
          P_CategoryADVOCATE  =                    0;
          P_CategoryBUSINESS_DEVELOPMENT  =                    0;
          P_CategoryHEALTHCARE  =                    0;
          P_CategoryFITNESS  =                    0;
          P_CategoryOTHER  =                    0;
          P_CategorySALES  =     0.05555555555555;
          P_CategoryCONSULTANT  =                    0;
          P_CategoryDIGITAL_MEDIA  =     0.02777777777777;
          Q_CategoryHR  =     0.02777777777777;
          Q_CategoryDESIGNER  =     0.88888888888888;
          Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
          Q_CategoryTEACHER  =                    0;
          Q_CategoryADVOCATE  =                    0;
          Q_CategoryBUSINESS_DEVELOPMENT  =                    0;
          Q_CategoryHEALTHCARE  =                    0;
          Q_CategoryFITNESS  =                    0;
          Q_CategoryOTHER  =                    0;
          Q_CategorySALES  =     0.05555555555555;
          Q_CategoryCONSULTANT  =                    0;
          Q_CategoryDIGITAL_MEDIA  =     0.02777777777777;
          V_CategoryHR  =                    0;
          V_CategoryDESIGNER  =     0.77272727272727;
          V_CategoryINFORMATION_TECHNOLOGY  =                    0;
          V_CategoryTEACHER  =     0.04545454545454;
          V_CategoryADVOCATE  =                    0;
          V_CategoryBUSINESS_DEVELOPMENT  =                    0;
          V_CategoryHEALTHCARE  =                    0;
          V_CategoryFITNESS  =                    0;
          V_CategoryOTHER  =     0.04545454545454;
          V_CategorySALES  =     0.09090909090909;
          V_CategoryCONSULTANT  =                    0;
          V_CategoryDIGITAL_MEDIA  =     0.04545454545454;
          I_Category  = 'DESIGNER' ;
          U_Category  = 'DESIGNER' ;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(TextCluster5_SVD12 ) AND 
          TextCluster5_SVD12  <    -0.11408163089867 THEN DO;
          _NODE_  =                   20;
          _LEAF_  =                    5;
          P_CategoryHR  =                    0;
          P_CategoryDESIGNER  =                 0.04;
          P_CategoryINFORMATION_TECHNOLOGY  =                    0;
          P_CategoryTEACHER  =                    0;
          P_CategoryADVOCATE  =                 0.16;
          P_CategoryBUSINESS_DEVELOPMENT  =                 0.02;
          P_CategoryHEALTHCARE  =                 0.02;
          P_CategoryFITNESS  =                  0.7;
          P_CategoryOTHER  =                 0.04;
          P_CategorySALES  =                    0;
          P_CategoryCONSULTANT  =                 0.02;
          P_CategoryDIGITAL_MEDIA  =                    0;
          Q_CategoryHR  =                    0;
          Q_CategoryDESIGNER  =                 0.04;
          Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
          Q_CategoryTEACHER  =                    0;
          Q_CategoryADVOCATE  =                 0.16;
          Q_CategoryBUSINESS_DEVELOPMENT  =                 0.02;
          Q_CategoryHEALTHCARE  =                 0.02;
          Q_CategoryFITNESS  =                  0.7;
          Q_CategoryOTHER  =                 0.04;
          Q_CategorySALES  =                    0;
          Q_CategoryCONSULTANT  =                 0.02;
          Q_CategoryDIGITAL_MEDIA  =                    0;
          V_CategoryHR  =                    0;
          V_CategoryDESIGNER  =     0.05263157894736;
          V_CategoryINFORMATION_TECHNOLOGY  =                    0;
          V_CategoryTEACHER  =                    0;
          V_CategoryADVOCATE  =                    0;
          V_CategoryBUSINESS_DEVELOPMENT  =                    0;
          V_CategoryHEALTHCARE  =     0.05263157894736;
          V_CategoryFITNESS  =     0.84210526315789;
          V_CategoryOTHER  =     0.05263157894736;
          V_CategorySALES  =                    0;
          V_CategoryCONSULTANT  =                    0;
          V_CategoryDIGITAL_MEDIA  =                    0;
          I_Category  = 'FITNESS' ;
          U_Category  = 'FITNESS' ;
          END;
        ELSE DO;
          IF  NOT MISSING(TextCluster5_SVD4 ) AND 
                0.23450537484306 <= TextCluster5_SVD4  THEN DO;
            _NODE_  =                   27;
            _LEAF_  =                    7;
            P_CategoryHR  =                    0;
            P_CategoryDESIGNER  =     0.13333333333333;
            P_CategoryINFORMATION_TECHNOLOGY  =                    0;
            P_CategoryTEACHER  =     0.66666666666666;
            P_CategoryADVOCATE  =                    0;
            P_CategoryBUSINESS_DEVELOPMENT  =                    0;
            P_CategoryHEALTHCARE  =     0.06666666666666;
            P_CategoryFITNESS  =                    0;
            P_CategoryOTHER  =     0.06666666666666;
            P_CategorySALES  =                    0;
            P_CategoryCONSULTANT  =                    0;
            P_CategoryDIGITAL_MEDIA  =     0.06666666666666;
            Q_CategoryHR  =                    0;
            Q_CategoryDESIGNER  =     0.13333333333333;
            Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
            Q_CategoryTEACHER  =     0.66666666666666;
            Q_CategoryADVOCATE  =                    0;
            Q_CategoryBUSINESS_DEVELOPMENT  =                    0;
            Q_CategoryHEALTHCARE  =     0.06666666666666;
            Q_CategoryFITNESS  =                    0;
            Q_CategoryOTHER  =     0.06666666666666;
            Q_CategorySALES  =                    0;
            Q_CategoryCONSULTANT  =                    0;
            Q_CategoryDIGITAL_MEDIA  =     0.06666666666666;
            V_CategoryHR  =                    0;
            V_CategoryDESIGNER  =                    0;
            V_CategoryINFORMATION_TECHNOLOGY  =     0.08333333333333;
            V_CategoryTEACHER  =     0.33333333333333;
            V_CategoryADVOCATE  =     0.16666666666666;
            V_CategoryBUSINESS_DEVELOPMENT  =                    0;
            V_CategoryHEALTHCARE  =     0.08333333333333;
            V_CategoryFITNESS  =                    0;
            V_CategoryOTHER  =     0.08333333333333;
            V_CategorySALES  =     0.08333333333333;
            V_CategoryCONSULTANT  =                    0;
            V_CategoryDIGITAL_MEDIA  =     0.16666666666666;
            I_Category  = 'TEACHER' ;
            U_Category  = 'TEACHER' ;
            END;
          ELSE DO;
            _NODE_  =                   26;
            _LEAF_  =                    6;
            P_CategoryHR  =     0.01457725947521;
            P_CategoryDESIGNER  =     0.02623906705539;
            P_CategoryINFORMATION_TECHNOLOGY  =     0.01457725947521;
            P_CategoryTEACHER  =      0.0204081632653;
            P_CategoryADVOCATE  =     0.11953352769679;
            P_CategoryBUSINESS_DEVELOPMENT  =     0.15451895043731;
            P_CategoryHEALTHCARE  =     0.13702623906705;
            P_CategoryFITNESS  =     0.05247813411078;
            P_CategoryOTHER  =     0.14868804664723;
            P_CategorySALES  =     0.15743440233236;
            P_CategoryCONSULTANT  =     0.09037900874635;
            P_CategoryDIGITAL_MEDIA  =     0.06413994169096;
            Q_CategoryHR  =     0.01457725947521;
            Q_CategoryDESIGNER  =     0.02623906705539;
            Q_CategoryINFORMATION_TECHNOLOGY  =     0.01457725947521;
            Q_CategoryTEACHER  =      0.0204081632653;
            Q_CategoryADVOCATE  =     0.11953352769679;
            Q_CategoryBUSINESS_DEVELOPMENT  =     0.15451895043731;
            Q_CategoryHEALTHCARE  =     0.13702623906705;
            Q_CategoryFITNESS  =     0.05247813411078;
            Q_CategoryOTHER  =     0.14868804664723;
            Q_CategorySALES  =     0.15743440233236;
            Q_CategoryCONSULTANT  =     0.09037900874635;
            Q_CategoryDIGITAL_MEDIA  =     0.06413994169096;
            V_CategoryHR  =     0.00537634408602;
            V_CategoryDESIGNER  =      0.0268817204301;
            V_CategoryINFORMATION_TECHNOLOGY  =     0.01612903225806;
            V_CategoryTEACHER  =     0.01612903225806;
            V_CategoryADVOCATE  =     0.14516129032258;
            V_CategoryBUSINESS_DEVELOPMENT  =     0.17204301075268;
            V_CategoryHEALTHCARE  =     0.11290322580645;
            V_CategoryFITNESS  =     0.06989247311827;
            V_CategoryOTHER  =     0.11290322580645;
            V_CategorySALES  =     0.15591397849462;
            V_CategoryCONSULTANT  =     0.11290322580645;
            V_CategoryDIGITAL_MEDIA  =     0.05376344086021;
            I_Category  = 'SALES' ;
            U_Category  = 'SALES' ;
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

