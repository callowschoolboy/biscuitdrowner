data SC_sasd;
infile cards dlm='09x';
input Race $ Rank Lives $ Weapons $ Attacks $ R_C $ Size $ damage_type $ Unit $ Minerals Gas Shields HP Upkeep Damage_G Damage_A Base_armor boost build Sight Range;*not sure what last two are;

cards;
Terran  1  G	1	 G	C	S	N	SCV  50  0  0  60  1  5  0  0  1  20  7  1     0  0  
Terran 2 G	1	 AG	R	S	N	Marine 50 0 0 40 1 6 6 0 1 24 7 4 1 1 
Terran 3 G	1	 G	R	S	C	Firebat 50 25 0 50 1 16 0 1 3 24 7 1   1 0   
Terran 3 G	1	 G	R	M	C	Vulture 75 0 0 80 2 20 0 0 1 30 8 5   2 0   
Terran 3.5 G	1	 G	R	L	E	Siege Tank 150 100 0 150 2 30 0 1 ? 50 10 6 3 0 
Terran 4 G	2uneq	AG	R	L	N/E	Goliath 100 50 0 125 2 12 20 1 1g2a 40 8 5 1 2   
Terran 4 A	2uneq	AG	R	L	N/E	Wraith 150 100 0 120 2 8 20 0 1 60 7 5   1 2 Cloaks
Terran 4.5 A	0	 -	-	L	-	Dropship 100 100 0 150 2 0 0 1 0 50 8 0   0 0 Transporter 
Terran 5 A	0	 -	-	L	-	Science Vessel 100 225 0 200 2 0 0 1 0 80 10 0   0 0 Caster Detector
Terran 5.5 G	1	 AG	R	S	C	Ghost 25 75 0 45 1 10 10 0 1 50 9 6 1 1 Caster Cloaks
Terran 5.5 A	2eq	 AG	R	L	N	Battlecruiser 400 300 0 500 8 25 25 3 1 160 11 6 3 3 
Protoss 1 G	1	 G	C	S	N	Probe 50 0 20 20 1 5 0 0 1 20 8 1   0 0 
Protoss 2 G	1	 G	C	S	N	Zealot 100 0 80 80 2 16 0 1 2 40 7 1   1 0 
Protoss 3 G	1	 AG	R	L	E	Dragoon 125 50 80 100 2 20 20 1 1 40 8 4 2 2   
Protoss 4 A	2uneq	AG	R	L	N/E	Scout 300 150 100 150 3 8 28 0 1g2a 80 8 4   1 1 
Protoss 4 A	0	 -	-	L	-	Shuttle 200 0 60 80 2 0 0 1 0 60 8 0   0 0 Transporter 
Protoss 5 G	0	 -	-	S	-	High Templar 50 150 40 40 2 0 0 0 0 50 7 0   0 0 Caster 
Protoss 5 G	1	 AG	R	L	N	Archon 100 300 350 10 4 30 30 0 1 120 8 2 3 3   
Protoss 6 G	1	 G	R	L	E	Reaver 200 100 80 100 4 100 0 0 1 70 10 9   0 0 Carrier
Protoss 6 A	0	 -	-	S	-	Observer 25 75 20 40 1 0 0 0 0 40 9 0   0 0 Detector, cloaks
Protoss 6 A	1	 AG	R	L	N	Carrier 350 250 150 300 8 6 6 4 1 140 9 8   1 1 Carrier
Protoss 6.5 A	1	 AG	R	L	E	Arbiter 100 350 150 200 4 10 10 1 1 160 11 5   1 1 Caster Cloaks
Zerg 0 G	1	 G	C	S	N	Drone 50 0 0 40 1 5 0 0 1 20 7 1   0 0 
Zerg 0 A	0	 -	-	L	-	Overlord 100 0 0 200 0 0 0 0 0 40 9 0   0 0 Transporter Detector
Zerg 2 G	1	 G	C	S	N	Zergling 25 0 0 35 0.5 5 0 0 1 28 5 1   1 0 
Zerg 3 G	1	 G	C	M	E	Hydralisk 75 25 0 80 1 10 10 0 1 28 6 4 1 1   
Zerg 4 A	1	 AG	R	S	N	Mutalisk 100 100 0 120 2 9 9 0 1 40 7 3 1 1   
Zerg 4 A	1	 A	C	S	N	Scourge 12.5 37.5 0 25 0.5 0 110 0 1 30 5 1   0 0 Suicide
Zerg 4 A	0	 -	-	M	-	Queen 100 150 0 120 2 0 0 0 0 50 10 0 0 0 Caster 
Zerg 5.5 A	1	 G	R	L	N	Guardian 150 200 0 150 2 20 0 2 1 80 11 8   2 0   
Zerg 5.5 G	0	 -	-	M	-	Defiler 50 150 0 80 2 0 0 1 0 50 10 0   0 0 Caster 
Zerg 5.5 G	1	 G	C	L	N	Ultralisk 200 200 0 400 6 20 0 1 1 60 7 1   3 0 
;
run;