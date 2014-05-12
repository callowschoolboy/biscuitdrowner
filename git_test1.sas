*this is my first test of Git, doing so on my laptop (Zeus), in Ashveille at 930 Marshall Highway;

data xyz;
input xyz;
datalines;
8
9
1
6
6
6
; run; 

/*proc means data=x min median max; run;*/

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
*not the end of the program;
*Here's more!!!;
proc glm data=both;
model xyz=x / firth;
run; quit;