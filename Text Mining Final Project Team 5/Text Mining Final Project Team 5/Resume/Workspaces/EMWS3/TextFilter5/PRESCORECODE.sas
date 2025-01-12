
libname termloc "C:\Users\lahar\OneDrive\Desktop\Data Mining\Resume\Workspaces\EMWS3";

%let _multifile=%SYSFUNC(PATHNAME(work))/TextFilter5_multi.txt;
%let _multiSLength= %klength(&_multifile);

data termloc.TextFilter5_tmconfig;
length multiterm $ &_multiSLength;
set termloc.TextFilter5_tmconfig;
multiterm=ktrim(symget('_multifile'));
run;

proc sql noprint;
select multiencoding into: _tmmultiencoding
from termloc.TextFilter5_tmconfig;
quit;

filename _multout "&_multifile";
data _NULL_;
set termloc.TextParsing_multiall;
file _multout encoding= "%trim(&_tmmultiencoding)";
put term ':3:' role;
run;
