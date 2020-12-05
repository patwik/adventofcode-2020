data kalle;
  retain maxid 0;
  infile '~/boarding.txt';
  input boarding :  $10.;
  rad=substr(boarding,1,7);
  plats=substr(boarding,8,3);
  radbin=translate(rad,'1','B','0','F');
  platsbin=translate(plats,'1','R','0','L');
  radnum=input(radbin,binary.);
  platsnum=input(platsbin,binary.);
  ID=radnum*8+platsnum;
  b=boarding;

   if maxid < id then maxid=id;
  

datalines;
BFFFBBFRRR
FFFBBBFRRR
BBFFBBFRLL
;
/*
BFFFBBFRRR: row 70, column 7, seat ID 567.
FFFBBBFRRR: row 14, column 7, seat ID 119.
BBFFBBFRLL: row 102, column 4, seat ID 820.
*/

proc sort; By id;

data olle;
set kalle;
  if lag(id) ne (id-1) then put id;
by id;
run;
