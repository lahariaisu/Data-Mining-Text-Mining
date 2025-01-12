drop _temp_;
if (P_CategoryTEACHER ge 0.85182098701679) then do;
b_Category = 1;
end;
else
if (P_CategoryTEACHER ge 0.09071393508913) then do;
b_Category = 2;
end;
else
if (P_CategoryTEACHER ge 0.00270597283728) then do;
b_Category = 3;
end;
else
if (P_CategoryTEACHER ge 0.00100954121351) then do;
b_Category = 4;
end;
else
if (P_CategoryTEACHER ge 0.00052786275668) then do;
b_Category = 5;
end;
else
if (P_CategoryTEACHER ge 0.00029427108493) then do;
b_Category = 6;
end;
else
if (P_CategoryTEACHER ge 0.00014438322358) then do;
b_Category = 7;
end;
else
if (P_CategoryTEACHER ge 0.00005694154021) then do;
b_Category = 8;
end;
else
if (P_CategoryTEACHER ge 0.00003873041277) then do;
b_Category = 9;
end;
else
if (P_CategoryTEACHER ge 0.00002875542532) then do;
b_Category = 10;
end;
else
if (P_CategoryTEACHER ge 0.0000182144892) then do;
b_Category = 11;
end;
else
if (P_CategoryTEACHER ge 0.00001100153631) then do;
b_Category = 12;
end;
else
if (P_CategoryTEACHER ge 4.1380347008265E-6) then do;
b_Category = 13;
end;
else
if (P_CategoryTEACHER ge 2.1584827632836E-6) then do;
b_Category = 14;
end;
else
do;
_temp_ = dmran(1234);
b_Category = floor(15 + 6*_temp_);
end;
