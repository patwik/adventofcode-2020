options nosource nonotes;
%macro tree(move);
data _null_;
  infile '~/slope.txt' end=slut;
  input @(modpos+1) testchar $1.   ;
  modpos+&move.;
  modpos=mod(modpos,31);
  if testchar='#' then treecnt+1;
  if slut then put "Flytt=&move. " 'Antal träd:' treecnt;
run
;
%mend;

%tree(1);
%tree(3);
%tree(5);
%tree(7);
%tree(1);