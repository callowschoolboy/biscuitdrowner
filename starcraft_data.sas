data scunitswp;
input unit_wp $ 1-14 size $ 17 lives $ attA $ attG $ dtconc $ dtexp $
                      hits listdmg cool pop min gas armor tot_hp range sight bt
                                        race $ cloak $ spells bio $ detector $ splash $;*
                                                   mech robotic hover speed friendly;
tot_cost = min + 2*gas;
shortsightness=range-sight;
damage=hits*listdmg;
throughput=damage/cool;
if unit_wp="Carrier=1Inter" or unit_wp="Valkyrie/HALO_" then delete;
if range=1 then close0range="C"; else if range=0 then close0range="N";  else close0range="R";
if attA="A" and attG="G" then dual_att="T"; else if attA="A" or attG="G" then dual_att="F"; else dual_att=",";
if missing(cool) and not missing(listdmg) then suicide="S"; else suicide="-";
*human readable; if dtconc="C" then dtype="Conc"; else if dtexp="E" then dtype="Expl"; 
    else if missing(hits) then dtype="none"; else dtype="Norm";

*-----  Integrity Criteria  -----;
if attA="-" and attG="-" and listdmg=000 and missing(cool) and range=0 then combat="N";
 else if (attA="-" or attG="-") and listdmg^=000 and ^ missing(cool) and range=^0 then combat="C";
 else combat="!";
*if friendly nmiss then splash should be nmiss; 
cards;
Arbiter/Phase_  L A A G - E 1 10  45  4     100     350     1     350     5     9     160 P * 2 - - -
Archon/Psionic  L G A G - - 1 30  20  4     100     300     0     360     2     8     120 P - 0 - - R
Carrier         L A - - - - . 000  .  6     350     250     4     450     0     11    140 P - 0 - - -
Carrier=1Inter  L A A G - - X  6  XX  6     375     250     4     530     8     11    158 P - 0 - - -
Corsair/Neutro  M A A - - E 1  5   8  2     150     100     1     180     5     9     40  P - 1 - - R
Dark Archon     L G - - - - . 000  .  4     250     200     1     225     0     10    120 P - 3 - - -
Dark Templar/W  S G - G - - 1 40  30  2     125     100     1     120     1     7     50  P + 0 B - -
Dragoon/Phase_  L G A G - E 1 20  30  2     125      50     1     180     4     8     50  P - 0 - - -
High Templar    S G - - - - . 000  .  2     50      150     0     80      0     7     50  P - 2 B - -
Observer        S A - - - - . 000  .  1     25      75      0     60      0     9     40  P + 0 - D -
Photon Cannon/  L G A G - - 1 20  22  0     150     0       0     200     7     11    50  P - 0 - D -   same weapon as goon
Probe/Particle  S G - G - - 1  5  22  1     50      0       0     40      1     8     20  P - 0 - - -
Reaver          L G - - - - . 000  .  4     200     100     0     180     0     10    70  P - 0 - - -
Reaver=ScarabX  L G - G - E 1 100 XX  4     215     100     0     180     8     10    87  P - 0 - - R
Scout/Photon_B  L A - G - - 2  4  30  3     275     125     0     250     4     8     80  P - 0 - - -
Scout/Antimatt  L A A - - E 2 14  22  3     275     125     0     250     4     8     80  P - 0 - - -
Shuttle         L A - - - - . 000  .  2     200     0       1     140     0     8     60  P - 0 - - -
Zealot/Psi_Bla  S G - G - - 2  8  22  2     100     0       1     160     1     7     40  P - 0 B - -
Battlecruiser/  L A A G - - 1 25  30  6     400     300     3     500     6     11    133 T - 1 - - -
Dropship        L A - - - - . 000  .  2     100     100     1     150     0     8     50  T - 0 - - -
Firebat/Perdit  S G - G C - 2  8  22  1     50      25      1     50      2     7     24  T - 0 B - ! 
Firebat/P=Stim  S G - G C - 2  8  11  1     50      25      1     40      2     7     24  T - 0 B - ! 
Ghost/C-10Cani  S G A G C - 1 10  22  1     25      75      0     45      7     9     50  T = 3 B - -
Goliath/Autoca  L G - G - - 1 12  22  2     100     50      1     125     6     8     40  T - 0 - - -
Goliath/Hellfi  L G A - - E 2 10  22  2     100     50      1     125     5     8     40  T - 0 - - -
Marine/C-14Rif  S G A G - - 1  6  15  1     50      0       0     40      4     7     24  T - 0 B - -
Marine/C=StimP  S G A G - - 1  6  7.5 1     50      0       0     30      4     7     24  T - 0 B - -
Medic           S G - - - - . 000  .  1     50      25      1     60      0     9     30  T - 2 B - -
Missile Turret  L G A - - E 1 20  15  0     75      0       0     200     7     11    30  T - 0 - D -
Science Vessel  L A - - - - . 000  .  2     100     225     1     200     0     10    80  T - 3 - D -
SCV/Fusion_Cut  S G - G - - 1  5  15  1     50      0       0     60      1     7     20  T - 0 B - -
Siege Tank/80m  L G - G - E 1 30  37  2     150     100     1     150     7     10    50  T - 0 - - -
Siege Tank=S/M  L G - G - E 1 70  75  2     150     100     1     150     12    10    50  T - 0 - - R Y
Valkyrie/HALO_  L A A - - E 8  X  XX  3     250     125     2     200     6     8     50  T - 0 - - R N
Vulture/Thumpe  M G - G C - 1 20  30  2     75      0       0     80      5     8     30  T - 1 - - -
Wraith/25mmBur  L A - G - - 1  8  30  2     150     100     0     120     5     7     60  T = 1 - - -
Wraith/Gemini_  L A A - - E 2 10  22  2     150     100     0     120     5     7     60  T = 1 - - -
Broodling/Toxi  S G - G - - 1  4  15  0     0       0       0     30      1     5     0   Z - 0 B - -
Defiler         M G - - - - . 000  .  2     50      150     1     80      0     10    50  Z - 3 B - -
Drone           S G - G - - 1  5  22  1     50      0       0     40      1     7     20  Z - 0 B - -
Hydralisk/Need  M G A G - E 1 10  15  1     75      25      0     80      4     6     28  Z - 0 B - -
Inf. Terran/Su  S G - G - E 1 500  .  1     100     50      0     60      0     5     40  Z - 0 B - R Y
Lurker=B/Subte  M G - G - - 1 20  37  3     125     125     1     125     6     8     68  Z b 0 B - L N
Mutalisk/Glave  S A A G - - 1  9  30  2     100     100     0     120     3     7     40  Z - 0 B - -
Overlord        L A - - - - . 000  .  0     100     0       0     200     0     9     40  Z - 0 B D -
Queen           M A - - - - . 000  .  2     100     100     0     120     0     10    50  Z - 3 B - -
Scourge/Suicid  S A A - - - 1 110  .  0.5   12.5    37.5    0     25      1     5     15  Z - 0 B - -
Spore Colony/   L G A - - - 1 15  15  0     175     0       0     400     7     10    60  Z - 0 B D -
Sunken Colony/  L G - G - E 1 40  32  0     175     0       2     300     7     10    60  Z - 0 B - -
Ultralisk/Kais  L G - G - - 1 20  15  4     200     200     1     400     1     7     60  Z - 0 B - -
Zergling/Claws  S G - G - - 1  5   8  0.5   25      0       0     35      1     5     14  Z - 0 B - -
Devourer/Corro  L A A - - E 1 25 100  2     250     150     2     250     6     10    80  Z - 0 B - -
Guardian/Acid_  L A - G - - 1 20  30  2     150     200     2     150     8     11    80  Z - 0 B - -
;
run;
proc print; where 50<tot_cost<103; var unit_wp size dtype
   damage throughput pop tot_cost armor tot_hp range sight bt cloak spells splash; run;
/*
proc sql;
create table work.adjdmg as
 select att.unit_wp as attacking_unit, def.unit_wp as defending_unit,
         att.attA, att.attG, att.hits, att.listdmg as d, att.dtconc as conc, att.dtexp as exp,
         def.size, def.lives, def.armor, 
        att.hits*(att.listdmg - def.armor) as unmodified
from scunitswp att, scunitswp def
   where (defending_unit not in ("Scout/Antimatt", "Reaver=ScarabX", "Firebat/P=Stim", "Goliath/Hellfi", "Marine/C=StimP",
                                   "Siege Tank=S/M", "Wraith/Gemini_", "Lurker        ")
          and ( (att.attG="G" and def.lives="G") | (att.attA="A" and def.lives="A") ));
 quit;
data final;
set work.adjdmg;
keep attacking_unit defending_unit adjdmg;
   if conc="C" and size="M" then mod=.5;
else if conc="C" and size="L" then mod=.25;
else if exp="E" and size="S" then mod=.5;
else if exp="E" and size="M" then mod=.75;
else mod=1;
adjdmg=unmodified*mod;
run;
proc print data=final; run;