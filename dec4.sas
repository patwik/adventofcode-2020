options nosource;
data kalle;
length field1-field8 $ 80;
length del1-del2 $ 80;
array field[1:8] $  ;

retain 
byr
iyr
eyr
hgt
hcl
ecl
pid
cid
;


*array passnr[1:2000];
infile '~/pass.txt'  dlm=' ' truncover;
/*do loop =1 to 8;
input field[loop] 1-200 ;
if field[loop]='' then do;
  output;
  loop=8;
end;
end;
*/
input field1-field8 : $80. ;

do loop=1 to 8 ;
/*
  byr=sum(byr,indexw(field[loop],'byr',':'));
  iyr=sum(iyr,indexw(field[loop],'iyr',':'));
  eyr=sum(eyr,indexw(field[loop],'eyr',':'));
  hgt=sum(hgt,indexw(field[loop],'hgt',':'));
  hcl=sum(hcl,indexw(field[loop],'hcl',':'));
  ecl=sum(ecl,indexw(field[loop],'ecl',':'));
  pid=sum(pid,indexw(field[loop],'pid',':'));
  cid=sum(cid,indexw(field[loop],'cid',':'));
*/
  del1=scan(field[loop],1,':');
  del2=scan(field[loop],2,':');

  if del1='byr' then byr=del2;
  if del1='iyr' then iyr=del2;
  if del1='eyr' then eyr=del2;
  if del1='hgt' then hgt=del2;
  if del1='hcl' then hcl=del2;
  if del1='ecl' then ecl=del2;
  if del1='pid' then pid=del2;
  if del1='cid' then cid=del2;
 
end;

if field1 eq '' then do;

if 
byr ne '' and 
iyr ne '' and 
eyr ne '' and 
hgt ne '' and 
hcl ne '' and 
ecl ne '' and 
pid ne '' then 
passkoll+1;
passnr+1;

byr_n=input(byr,4.);
iyr_n=input(iyr,4.);
eyr_n=input(eyr,4.);
hgt_unit=reverse(substr(reverse(trim(hgt)),1,2));
hgt_val=input(reverse(substr(reverse(trim(hgt)),3)),best.);

if 
byr_n>=1920 and byr_n<=2002 and 
iyr_n>=2010 and iyr_n<=2020 and 
eyr_n>=2020 and eyr_n<=2030 and 
                                (
(hgt_unit='cm' and hgt_val >=150 and hgt_val <=193)
    or
(hgt_unit='in' and hgt_val >=59 and hgt_val <=76) 
                                )
and 
substr(hcl,1,1)='#'  and
length(hcl)=7 and
verify(substr(hcl,2,6),'1234567890abcdef')=0 and 
indexw('amb blu brn gry grn hzl oth',ecl) and 
length(pid)=9 and
notdigit(trim(pid))=0
then formatkoll+1;
/* 

byr (Birth Year) - four digits; at least 1920 and at most 2002.
iyr (Issue Year) - four digits; at least 2010 and at most 2020.
eyr (Expiration Year) - four digits; at least 2020 and at most 2030.
hgt (Height) - a number followed by either cm or in: 
If cm, the number must be at least 150 and at most 193.
If in, the number must be at least 59 and at most 76.
hcl (Hair Color) - a # followed by exactly six characters 0-9 or a-f.
ecl (Eye Color) - exactly one of: amb blu brn gry grn hzl oth.
pid (Passport ID) - a nine-digit number, including leading zeroes.
cid (Country ID) - ignored, missing or not.
*/
output;
  
byr='';
iyr='';
eyr='';
hgt='';
hcl='';
ecl='';
pid='';
cid='';
end;
*output;

/*
byr (Birth Year)
iyr (Issue Year)
eyr (Expiration Year)
hgt (Height)
hcl (Hair Color)
ecl (Eye Color)
pid (Passport ID)
cid (Country ID)
*/
run;
/*
datalines;
ecl:gry pid:860033327 eyr:2020 hcl:#fffffd
byr:1937 iyr:2017 cid:147 hgt:183cm

iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884
hcl:#cfa07d byr:1929

hcl:#ae17e1 iyr:2013
eyr:2024
ecl:brn pid:760753108 byr:1931
hgt:179cm

hcl:#cfa07d eyr:2025 pid:166559648
iyr:2011 ecl:brn hgt:59in
;*/