*this is my first test of Git, doing so on my 
laptop (Zeus), in Ashveille at the Hutzel residence at 900 Marshall Highway;

data x;
input x;
datalines;
8
9
1
0 3
6
6
6
; run; 

proc means data=x min median max; run;

data compare;
input x;
datalines4;
8
9
1
6
6
7
;;;;
run;

proc compare base=x compare=compare outnoeq outdif outbase outcomp;
run;
*end of program;