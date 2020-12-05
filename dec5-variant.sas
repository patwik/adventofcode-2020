data _null_;
  infile '~/boarding.txt';
  array b[850];
  do i=1 to 850;
    input a:$10.;
    b[i]=input(translate(a,'1','B','0','F','1','R','0','L'),binary10.);
  end;
  call sort (of b[*]);
  put 'Högsta ID ' b[850];
run;


