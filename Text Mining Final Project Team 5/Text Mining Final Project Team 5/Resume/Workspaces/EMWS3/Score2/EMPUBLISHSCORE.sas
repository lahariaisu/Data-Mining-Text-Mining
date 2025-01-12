*------------------------------------------------------------*;
* Score2: Creating Fixed Names;
*------------------------------------------------------------*;
LABEL EM_SEGMENT = 'Segment';
EM_SEGMENT = TextCluster_cluster_;
LENGTH EM_EVENTPROBABILITY 8;
LABEL EM_EVENTPROBABILITY = 'Probability for level INFORMATION-TECHNOLOGY of Category';
EM_EVENTPROBABILITY = P_CategoryINFORMATION_TECHNOLOGY;
LENGTH EM_PROBABILITY 8;
LABEL EM_PROBABILITY = 'Probability of Classification';
EM_PROBABILITY =
max(
P_CategoryINFORMATION_TECHNOLOGY
,
P_CategoryHR
,
P_CategoryDESIGNER
);
LENGTH EM_CLASSIFICATION $%dmnorlen;
LABEL EM_CLASSIFICATION = "Prediction for Category";
EM_CLASSIFICATION = I_Category;
