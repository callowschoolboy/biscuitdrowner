*Ive decided to go in a very different direction with this program;

data xyz;
infile xyz;
xy=x*y;
; run;

/*proc means data=x min median max; run;*/

data compare;
infile 'C:\temp\notthere.dat';
length xy 8;
run;

proc compare base=x compare=compare outnoeq outdif outbase outcomp;
run;
*not the end of the program;
*Here's more!!!;
proc glm data=both;
model xyz=x / firth;
run; quit;