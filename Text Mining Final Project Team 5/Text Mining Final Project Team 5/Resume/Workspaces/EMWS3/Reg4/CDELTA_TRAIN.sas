if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'TEXTCLUSTER7_SVD10'
'TEXTCLUSTER7_SVD11'
'TEXTCLUSTER7_SVD14'
'TEXTCLUSTER7_SVD2'
'TEXTCLUSTER7_SVD24'
'TEXTCLUSTER7_SVD3'
'TEXTCLUSTER7_SVD4'
'TEXTCLUSTER7_SVD5'
'TEXTCLUSTER7_SVD7'
) then ROLE='INPUT';
else do;
ROLE='REJECTED';
COMMENT = "Reg4: Rejected using stepwise selection";
end;
end;
