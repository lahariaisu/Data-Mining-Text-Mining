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
IF  NOT MISSING(TextCluster8_SVD4 ) AND 
  TextCluster8_SVD4  <    -0.26869605659394 THEN DO;
  _NODE_  =                    2;
  _LEAF_  =                    1;
  P_CategoryHR  =     0.88888888888888;
  P_CategoryDESIGNER  =                    0;
  P_CategoryINFORMATION_TECHNOLOGY  =                    0;
  P_CategoryTEACHER  =                    0;
  P_CategoryADVOCATE  =     0.04444444444444;
  P_CategoryBUSINESS_DEVELOPMENT  =     0.02222222222222;
  P_CategoryHEALTHCARE  =     0.02222222222222;
  P_CategoryFITNESS  =     0.02222222222222;
  P_CategoryOTHER  =                    0;
  P_CategorySALES  =                    0;
  P_CategoryCONSULTANT  =                    0;
  P_CategoryDIGITAL_MEDIA  =                    0;
  Q_CategoryHR  =     0.88888888888888;
  Q_CategoryDESIGNER  =                    0;
  Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
  Q_CategoryTEACHER  =                    0;
  Q_CategoryADVOCATE  =     0.04444444444444;
  Q_CategoryBUSINESS_DEVELOPMENT  =     0.02222222222222;
  Q_CategoryHEALTHCARE  =     0.02222222222222;
  Q_CategoryFITNESS  =     0.02222222222222;
  Q_CategoryOTHER  =                    0;
  Q_CategorySALES  =                    0;
  Q_CategoryCONSULTANT  =                    0;
  Q_CategoryDIGITAL_MEDIA  =                    0;
  V_CategoryHR  =     0.77142857142857;
  V_CategoryDESIGNER  =                    0;
  V_CategoryINFORMATION_TECHNOLOGY  =     0.02857142857142;
  V_CategoryTEACHER  =                    0;
  V_CategoryADVOCATE  =                    0;
  V_CategoryBUSINESS_DEVELOPMENT  =     0.02857142857142;
  V_CategoryHEALTHCARE  =     0.08571428571428;
  V_CategoryFITNESS  =     0.02857142857142;
  V_CategoryOTHER  =                    0;
  V_CategorySALES  =                    0;
  V_CategoryCONSULTANT  =     0.05714285714285;
  V_CategoryDIGITAL_MEDIA  =                    0;
  I_Category  = 'HR' ;
  U_Category  = 'HR' ;
  END;
ELSE DO;
  IF  NOT MISSING(TextCluster8_SVD5 ) AND 
    TextCluster8_SVD5  <    -0.22874475504238 THEN DO;
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
    V_CategoryHR  =     0.02380952380952;
    V_CategoryDESIGNER  =     0.04761904761904;
    V_CategoryINFORMATION_TECHNOLOGY  =                    0;
    V_CategoryTEACHER  =     0.54761904761904;
    V_CategoryADVOCATE  =     0.07142857142857;
    V_CategoryBUSINESS_DEVELOPMENT  =                    0;
    V_CategoryHEALTHCARE  =     0.04761904761904;
    V_CategoryFITNESS  =     0.09523809523809;
    V_CategoryOTHER  =     0.14285714285714;
    V_CategorySALES  =                    0;
    V_CategoryCONSULTANT  =     0.02380952380952;
    V_CategoryDIGITAL_MEDIA  =                    0;
    I_Category  = 'TEACHER' ;
    U_Category  = 'TEACHER' ;
    END;
  ELSE DO;
    IF  NOT MISSING(TextCluster8_SVD2 ) AND 
           0.1881459674488 <= TextCluster8_SVD2  THEN DO;
      _NODE_  =                    9;
      _LEAF_  =                    7;
      P_CategoryHR  =                    0;
      P_CategoryDESIGNER  =     0.03157894736842;
      P_CategoryINFORMATION_TECHNOLOGY  =     0.52631578947368;
      P_CategoryTEACHER  =                    0;
      P_CategoryADVOCATE  =     0.02105263157894;
      P_CategoryBUSINESS_DEVELOPMENT  =     0.02105263157894;
      P_CategoryHEALTHCARE  =     0.03157894736842;
      P_CategoryFITNESS  =                    0;
      P_CategoryOTHER  =     0.08421052631578;
      P_CategorySALES  =                    0;
      P_CategoryCONSULTANT  =     0.22105263157894;
      P_CategoryDIGITAL_MEDIA  =     0.06315789473684;
      Q_CategoryHR  =                    0;
      Q_CategoryDESIGNER  =     0.03157894736842;
      Q_CategoryINFORMATION_TECHNOLOGY  =     0.52631578947368;
      Q_CategoryTEACHER  =                    0;
      Q_CategoryADVOCATE  =     0.02105263157894;
      Q_CategoryBUSINESS_DEVELOPMENT  =     0.02105263157894;
      Q_CategoryHEALTHCARE  =     0.03157894736842;
      Q_CategoryFITNESS  =                    0;
      Q_CategoryOTHER  =     0.08421052631578;
      Q_CategorySALES  =                    0;
      Q_CategoryCONSULTANT  =     0.22105263157894;
      Q_CategoryDIGITAL_MEDIA  =     0.06315789473684;
      V_CategoryHR  =                    0;
      V_CategoryDESIGNER  =     0.08196721311475;
      V_CategoryINFORMATION_TECHNOLOGY  =     0.50819672131147;
      V_CategoryTEACHER  =                    0;
      V_CategoryADVOCATE  =     0.01639344262295;
      V_CategoryBUSINESS_DEVELOPMENT  =     0.04918032786885;
      V_CategoryHEALTHCARE  =     0.01639344262295;
      V_CategoryFITNESS  =                    0;
      V_CategoryOTHER  =      0.0655737704918;
      V_CategorySALES  =     0.01639344262295;
      V_CategoryCONSULTANT  =     0.14754098360655;
      V_CategoryDIGITAL_MEDIA  =      0.0983606557377;
      I_Category  = 'INFORMATION-TECHNOLOGY' ;
      U_Category  = 'INFORMATION-TECHNOLOGY' ;
      END;
    ELSE DO;
      IF  NOT MISSING(TextCluster8_SVD11 ) AND 
            0.16417253912574 <= TextCluster8_SVD11  THEN DO;
        _NODE_  =                   11;
        _LEAF_  =                    6;
        P_CategoryHR  =                    0;
        P_CategoryDESIGNER  =                    0;
        P_CategoryINFORMATION_TECHNOLOGY  =                    0;
        P_CategoryTEACHER  =                    0;
        P_CategoryADVOCATE  =     0.07894736842105;
        P_CategoryBUSINESS_DEVELOPMENT  =     0.02631578947368;
        P_CategoryHEALTHCARE  =                    0;
        P_CategoryFITNESS  =     0.84210526315789;
        P_CategoryOTHER  =                    0;
        P_CategorySALES  =     0.02631578947368;
        P_CategoryCONSULTANT  =                    0;
        P_CategoryDIGITAL_MEDIA  =     0.02631578947368;
        Q_CategoryHR  =                    0;
        Q_CategoryDESIGNER  =                    0;
        Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
        Q_CategoryTEACHER  =                    0;
        Q_CategoryADVOCATE  =     0.07894736842105;
        Q_CategoryBUSINESS_DEVELOPMENT  =     0.02631578947368;
        Q_CategoryHEALTHCARE  =                    0;
        Q_CategoryFITNESS  =     0.84210526315789;
        Q_CategoryOTHER  =                    0;
        Q_CategorySALES  =     0.02631578947368;
        Q_CategoryCONSULTANT  =                    0;
        Q_CategoryDIGITAL_MEDIA  =     0.02631578947368;
        V_CategoryHR  =                    0;
        V_CategoryDESIGNER  =                    0;
        V_CategoryINFORMATION_TECHNOLOGY  =                 0.05;
        V_CategoryTEACHER  =                    0;
        V_CategoryADVOCATE  =                  0.1;
        V_CategoryBUSINESS_DEVELOPMENT  =                    0;
        V_CategoryHEALTHCARE  =                 0.05;
        V_CategoryFITNESS  =                 0.75;
        V_CategoryOTHER  =                 0.05;
        V_CategorySALES  =                    0;
        V_CategoryCONSULTANT  =                    0;
        V_CategoryDIGITAL_MEDIA  =                    0;
        I_Category  = 'FITNESS' ;
        U_Category  = 'FITNESS' ;
        END;
      ELSE DO;
        IF  NOT MISSING(TextCluster8_SVD7 ) AND 
              0.04573920241908 <= TextCluster8_SVD7  THEN DO;
          IF  NOT MISSING(TextCluster8_SVD2 ) AND 
            TextCluster8_SVD2  <    -0.14325655376115 THEN DO;
            _NODE_  =                   16;
            _LEAF_  =                    4;
            P_CategoryHR  =     0.09210526315789;
            P_CategoryDESIGNER  =     0.01315789473684;
            P_CategoryINFORMATION_TECHNOLOGY  =                    0;
            P_CategoryTEACHER  =     0.17105263157894;
            P_CategoryADVOCATE  =     0.07894736842105;
            P_CategoryBUSINESS_DEVELOPMENT  =     0.06578947368421;
            P_CategoryHEALTHCARE  =     0.02631578947368;
            P_CategoryFITNESS  =     0.07894736842105;
            P_CategoryOTHER  =     0.03947368421052;
            P_CategorySALES  =     0.38157894736842;
            P_CategoryCONSULTANT  =     0.03947368421052;
            P_CategoryDIGITAL_MEDIA  =     0.01315789473684;
            Q_CategoryHR  =     0.09210526315789;
            Q_CategoryDESIGNER  =     0.01315789473684;
            Q_CategoryINFORMATION_TECHNOLOGY  =                    0;
            Q_CategoryTEACHER  =     0.17105263157894;
            Q_CategoryADVOCATE  =     0.07894736842105;
            Q_CategoryBUSINESS_DEVELOPMENT  =     0.06578947368421;
            Q_CategoryHEALTHCARE  =     0.02631578947368;
            Q_CategoryFITNESS  =     0.07894736842105;
            Q_CategoryOTHER  =     0.03947368421052;
            Q_CategorySALES  =     0.38157894736842;
            Q_CategoryCONSULTANT  =     0.03947368421052;
            Q_CategoryDIGITAL_MEDIA  =     0.01315789473684;
            V_CategoryHR  =     0.06521739130434;
            V_CategoryDESIGNER  =     0.08695652173913;
            V_CategoryINFORMATION_TECHNOLOGY  =                    0;
            V_CategoryTEACHER  =     0.10869565217391;
            V_CategoryADVOCATE  =     0.15217391304347;
            V_CategoryBUSINESS_DEVELOPMENT  =     0.02173913043478;
            V_CategoryHEALTHCARE  =     0.02173913043478;
            V_CategoryFITNESS  =     0.08695652173913;
            V_CategoryOTHER  =     0.04347826086956;
            V_CategorySALES  =     0.34782608695652;
            V_CategoryCONSULTANT  =     0.02173913043478;
            V_CategoryDIGITAL_MEDIA  =     0.04347826086956;
            I_Category  = 'SALES' ;
            U_Category  = 'SALES' ;
            END;
          ELSE DO;
            _NODE_  =                   17;
            _LEAF_  =                    5;
            P_CategoryHR  =              0.03125;
            P_CategoryDESIGNER  =     0.44791666666666;
            P_CategoryINFORMATION_TECHNOLOGY  =     0.04166666666666;
            P_CategoryTEACHER  =     0.01041666666666;
            P_CategoryADVOCATE  =     0.01041666666666;
            P_CategoryBUSINESS_DEVELOPMENT  =     0.02083333333333;
            P_CategoryHEALTHCARE  =              0.03125;
            P_CategoryFITNESS  =                    0;
            P_CategoryOTHER  =              0.03125;
            P_CategorySALES  =     0.05208333333333;
            P_CategoryCONSULTANT  =     0.02083333333333;
            P_CategoryDIGITAL_MEDIA  =     0.30208333333333;
            Q_CategoryHR  =              0.03125;
            Q_CategoryDESIGNER  =     0.44791666666666;
            Q_CategoryINFORMATION_TECHNOLOGY  =     0.04166666666666;
            Q_CategoryTEACHER  =     0.01041666666666;
            Q_CategoryADVOCATE  =     0.01041666666666;
            Q_CategoryBUSINESS_DEVELOPMENT  =     0.02083333333333;
            Q_CategoryHEALTHCARE  =              0.03125;
            Q_CategoryFITNESS  =                    0;
            Q_CategoryOTHER  =              0.03125;
            Q_CategorySALES  =     0.05208333333333;
            Q_CategoryCONSULTANT  =     0.02083333333333;
            Q_CategoryDIGITAL_MEDIA  =     0.30208333333333;
            V_CategoryHR  =     0.02127659574468;
            V_CategoryDESIGNER  =     0.38297872340425;
            V_CategoryINFORMATION_TECHNOLOGY  =                    0;
            V_CategoryTEACHER  =     0.02127659574468;
            V_CategoryADVOCATE  =                    0;
            V_CategoryBUSINESS_DEVELOPMENT  =     0.06382978723404;
            V_CategoryHEALTHCARE  =     0.02127659574468;
            V_CategoryFITNESS  =                    0;
            V_CategoryOTHER  =     0.04255319148936;
            V_CategorySALES  =     0.08510638297872;
            V_CategoryCONSULTANT  =     0.02127659574468;
            V_CategoryDIGITAL_MEDIA  =     0.34042553191489;
            I_Category  = 'DESIGNER' ;
            U_Category  = 'DESIGNER' ;
            END;
          END;
        ELSE DO;
          _NODE_  =                   12;
          _LEAF_  =                    3;
          P_CategoryHR  =      0.0177304964539;
          P_CategoryDESIGNER  =      0.0177304964539;
          P_CategoryINFORMATION_TECHNOLOGY  =      0.0177304964539;
          P_CategoryTEACHER  =     0.00709219858156;
          P_CategoryADVOCATE  =      0.1418439716312;
          P_CategoryBUSINESS_DEVELOPMENT  =     0.17375886524822;
          P_CategoryHEALTHCARE  =     0.17021276595744;
          P_CategoryFITNESS  =      0.0531914893617;
          P_CategoryOTHER  =     0.17375886524822;
          P_CategorySALES  =     0.08156028368794;
          P_CategoryCONSULTANT  =     0.10992907801418;
          P_CategoryDIGITAL_MEDIA  =      0.0354609929078;
          Q_CategoryHR  =      0.0177304964539;
          Q_CategoryDESIGNER  =      0.0177304964539;
          Q_CategoryINFORMATION_TECHNOLOGY  =      0.0177304964539;
          Q_CategoryTEACHER  =     0.00709219858156;
          Q_CategoryADVOCATE  =      0.1418439716312;
          Q_CategoryBUSINESS_DEVELOPMENT  =     0.17375886524822;
          Q_CategoryHEALTHCARE  =     0.17021276595744;
          Q_CategoryFITNESS  =      0.0531914893617;
          Q_CategoryOTHER  =     0.17375886524822;
          Q_CategorySALES  =     0.08156028368794;
          Q_CategoryCONSULTANT  =     0.10992907801418;
          Q_CategoryDIGITAL_MEDIA  =      0.0354609929078;
          V_CategoryHR  =                    0;
          V_CategoryDESIGNER  =     0.01298701298701;
          V_CategoryINFORMATION_TECHNOLOGY  =     0.01948051948051;
          V_CategoryTEACHER  =     0.01298701298701;
          V_CategoryADVOCATE  =     0.14285714285714;
          V_CategoryBUSINESS_DEVELOPMENT  =     0.18181818181818;
          V_CategoryHEALTHCARE  =     0.15584415584415;
          V_CategoryFITNESS  =     0.07142857142857;
          V_CategoryOTHER  =     0.14935064935064;
          V_CategorySALES  =     0.08441558441558;
          V_CategoryCONSULTANT  =     0.13636363636363;
          V_CategoryDIGITAL_MEDIA  =     0.03246753246753;
          I_Category  = 'BUSINESS-DEVELOPMENT' ;
          U_Category  = 'BUSINESS-DEVELOPMENT' ;
          END;
        END;
      END;
    END;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

