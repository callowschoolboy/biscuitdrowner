*this is my first test of Git, doing so on my 
laptop (Zeus), in Ashveille at the Hutzel residence at 900 Marshall Highway;

data x;
input y;
cards;
8
9
1
0 3
6
6
6
; run; 

proc means data=x; run;

data compare;
input var;
datalines;
8
9
1
6
6
7
; 
run;

proc compare base=
x compare=compare;
run;
*end of program;