/*
data _null_ ;
    array map[200,200] _temporary_;
infile datalines delimiter=',' missover;

do loop=1 to 200;
  input number;
  map[loop]=number;
  do testloop=1 to loop;
    do triloop=1 to testloop;
      if map[loop]+map[testloop]+map[triloop]=2020 then do;
	      produkt=map[loop]*map[testloop]*map[triloop];
	      put map[loop] map[testloop] map[triloop] produkt;
	  end;
	end;
  end;
end;
*/
options nosource;
data kalle;
retain modpos 0;
infile datalines n=400 ;
position=modpos+1;
input @position testchar $1.  ;
modpos=mod(modpos+3,31);
if testchar='#' then do;
  treechar='X'; 
  treecnt+1;
end;
else treechar='O' ;
rad=_infile_;
substr(rad,position,1)=treechar;
datalines;
.......#..#....#...#...#......#
..##..#...##.###.#..#.....#.#..
#..#.#....#......#..#.........#
.#..##...#........#....#..#..#.
#.#.#....###...#........#.....#
.#...#.#.##.#.##...#.#.........
####......#.......###.##.#.....
..#...........#...#.#.#........
.#.......#....###.####..#......
...##........#....##.......##..
.###......##.#......##....#.#.#
........#.#......##...#......#.
#....##.#..#...#.......#.......
.#..##........##.........#....#
.#..#..#...#....#.#......#.#...
..#.#......##.#.......#....##..
......##......#.#..##.#..#...#.
.....##.......#.#....#.#.......
........#.....#.....#..###.#...
#........#..#.....#...#.#.#..#.
.#..#.....#...#........#.....#.
.#.#.....#.....#...#...........
.....#.#..#..#...#..#..#..##..#
##.#...#....#..#.##..#.....#.#.
#.......####......#..#.#....#..
......#.#...####.........#.#..#
.#.........#..#.#...#..........
...#####.#....#.#..#......#.#.#
##....#.###....##...##..#.....#
...........####.##.#....##.##..
#.#.#..........#.#..##.#.######
##...#..#...........###..#....#
.#.#.#...##..........##.#...#..
...#.#........#..##...#....#...
......#..#...#..##....#.......#
.#..#.......#..#......##....##.
.......#.......#........#..##..
...#...#...#.##......#.##.#....
.........#.........#.#.#.##....
..#...................#....#..#
.........#..#.....#.#...#....#.
#.#.#...#........#..###.#......
#.#.#.####......##...#...#....#
#...........##..#.#.#....#..#..
........#..#.#...........##.#.#
.#.........#...........#..#....
#............##.#..#....##...##
.#....##..#.#....#.......#..#..
..#.#...#.#......####.......#..
...#.#.......###......#.....#..
#......#.......#.#...#.#..##...
...#.....#...##.#.....#.#......
#.#.#............#..#......#..#
....#...#...##.##.##...##.#....
..##........#..#........#...##.
.......#..#...#.........#.....#
...........#.#......#...#......
...##..##..##..###..#..#..#..#.
#..##.......##..#....#....#.#..
#.#.##.#..##.....#....#.#......
....#..##......#.#..#....#....#
.#.#.........##...#......##.##.
##...........#..#.....#.###....
.#.###........#...#....##..#...
......##.....#.................
.#.##..#.#.......#......#.#.#..
.#...#....#.##..........##.##..
#...##......####.#....#....#...
.#...#.##.#.#.....#...#........
.#................#.##.#.###...
...#.#..#.#.....##.....##....#.
..##.#..#..##.....#....#...#.##
........###.##..#..###.....#..#
..##.....#.......#.#...##......
#.#..###...##.###.##.#..#...#..
#..#..#.#...#....#...##.....#.#
#..................#........#..
#.....#.......#.##....##....#..
...#.............#.....#...#...
...#...#.##..##.....#........#.
.......#........##....###..##..
.#....#....#.#..#......#....#.#
..........#..#.#.....##...#.##.
.#...##.#...........#.#.......#
..#.##.....#.###.#.............
..#....###..........#.#.#......
#.....#.####..#.#......#..#.#.#
...#........#..#...............
.###.#.##.....#.#...........#..
..#....#..#....#..##....#......
......#..#.....#.#.##.......#.#
###..#...#.#..#....#..##.###..#
.#....##.###........##...##.#.#
........##..##.#....##..#....#.
...#..#....#.#....#...#...##...
#.....#......#.##........#....#
....#....###.##...#.#.##....#..
......#.##..#.#..........#...#.
...........#...#....##...#....#
......#.#.........#....#.#.#...
.###..........#.###.##....#...#
...##.......#......#....#....#.
#..#...#.#..####...#......#..#.
....##..#.#.........#..........
.##.###.##....##.####....#...#.
..##.......#........#...#..#...
....#####..........###....#....
.#.#..#.#.#....#..#............
........#.....#....#.......##..
...........##....##..##.....##.
..###........#.#.#..#....##...#
.....#...........##......#..#..
...##........#.##.#......##..#.
##..#....#............##..#..#.
.#.....#...##.##..............#
#..##........#...#...#......##.
......##.....#.......####.##..#
...#.#....#...#..#.............
..#...#..##.###..#..#.......##.
##....###.......#...#..#.......
#..#.....###.....#.#.........#.
#.#....#.............#...#.....
..#.#.##..........#.....##.#...
.....##......#..#..#.....#..#..
##.#..#..#.##......###....#..#.
...#............##...#..##.....
.#..#....#.........#......#.##.
.##.##...#..............#..#.##
...#....#...###...#...#....#..#
..#...#..####..#....#.#...##..#
..............##.##.......##...
..##.#..##...........#.#.#...#.
..................##.####.###..
.#...........#.......#......#..
.#.#.#...#....#.........##...##
....#..........#.#....#.#.....#
..........#.#..........#.#.....
...........#.....#.#......#....
........#..#.#.#.#.............
...###...##...##..####.##......
.#..#......###.....#...#.....#.
.........##............#.#.....
#.#..#.#.#....###.#.#..#..#..##
..........#...#.##.#..#..#....#
#..#.......##....#..##........#
##.#...#....##.............#...
....#........#......##..#..#.##
.................#.#.#.#.#.....
...........#.#.....#.......#...
#.......#.......#............#.
....#...........#.#.##.....#..#
#...#.....#....#..##...#.......
..#.....#.....#.##.##....#.....
.#.#..#...#..#..##.....##..#...
.#.#....#.........####.........
#...#..####.....#...#..##......
..#...##.#.....#...#.....##....
.#...#.....#.#.#......#.......#
..#.....##.#..#.#...##.........
##.#...#..#....#....#.##.##...#
.#..#....#..##.#.......#..#....
...##.#......#...###.......#...
...#..#.........##.####........
#.#..#..##...........#..#......
.#...#.#......#.#..........#...
...###...#.......#.....#.#...##
..#....#.#.##..........##...#..
.....###.........#.....#..##..#
.......##.....#.#.....#.#..##..
.#.#.###..##.......##...#......
......#.....#................##
.#......##..##.#.#...#...#...##
.#...#......#.......#.#........
.#..........###...#..#...#.....
.........##.....#.#..#..#.#...#
#...#...#.........#..#..#....#.
###.......#.#.....#....##......
.#..#......#..#...........#..#.
..##....##..##...#......#......
.#........#....#...#....#.....#
.#.......#...#...#..##.#.#..#..
#...#........#.##.....#.....#..
#..##.....#..........#...#...##
............#...............#..
.#.##...#.....#.#..#..#..#.....
.#.#.#...#........#....#...##..
##......#.....#.###.#...#.#..#.
.........##..#..#.#...#...#...#
#...#.#....#..#..#.....#.......
.......#.###...#.............#.
..#.....#.#.#..###.#....#.....#
....#...#.#....#.#..........#..
..#......#.###.#.#..#.....#...#
#............#..##...##......#.
#...........#..#....#.###..###.
.#.##.#.#.......#.............#
..............#................
..#.#.....#.....#...#......#...
.#.#.#..#..#.#...........##....
.....##.#......#..#.##....#....
.......##..#.#.#..#............
..#.....#.....#.###..#.....#.#.
......##.....#..##.#...#.....#.
...#...#....#..#..#........#...
..#.##..#....#.........#.#..#..
#....#.....###.....#......#....
##.....#..#..##.........#.##.##
.#.#....#.#..........#.........
.##.#...#..#.......#.##...#....
...#...#.....#....#...#.#..#...
.....#....#.....#.....#.#......
...........#.#.......#.......#.
.........##.###.##........#....
#..##.....#...#.#..............
.#...#....##........#.#..#....#
..#...#........#...#..#.##.#..#
........#...#.....##.#.#....#.#
#..#.......###.#....#.#.#......
.......#...##....#...#..##..#..
.....##........#.#.#..#....##..
.#....#..#.#...........#......#
...##....#.##.....##.......#...
.##..#..#....#.#....#..#....##.
..#....#.....###.......#..##..#
....#.......#....##..#....#..##
....#......##..#....#.#...#.#..
.##.#......##..................
##.#....#........#..#..#...##.#
.......#..#.#...##.....#.#.....
..##.#...........#.#.#..#.#.#..
.....#....#......#..#.......#..
#.#...#.####..##.......#..##...
...#....#.....#.##.#..#.##..#..
.#.......#......##........##.#.
.......#.#...#..#...#..##.#....
.#....#........#.#.....##..#..#
#..#.....#..#.............#...#
#...#....#..#...###..#...#.#...
.#..#.....#..........#..##.####
#.#.#.#.##.#.#.....##.#........
...#....##....#...#..##.......#
..##.##.#.#........#..........#
..###........###..#..........#.
...#......#..##.#........#..#..
#.#.#..#........#..#..........#
...#........#..##.#...#.###....
##......#.####.#....#......#...
.#..#......#................#..
#.#........#.#.....##.....##...
#...............#..#.......#.#.
.##..#...........##..#..#.#....
#......#.#.......#.#.#.##..#.##
.....##.#..###.............##..
....##.........#..#...#........
.....#.....#.#.#..#.#..........
#.........#....##.#.##.....#..#
.#.........#......#.#.##.#.#...
##.........#.....#..#.#..#.##.#
....#......##...#.....#..#..###
..#..............#...#..####...
#....#...##.#.......#...#..#...
#.......###.#.#.......#.......#
...##....#.#...........#...###.
...........#..#.#.....#..##..#.
..#.........#..###..#.....#...#
..#.#.....#.#.#...#.#.#......#.
........#.....#.#......##....##
##.#.#...#.#........#.....#...#
........#....#...............#.
##.###......####...#####..#....
...##...#..#....#........#...#.
...###.#..................##.#.
##.#.......###.......#...#.#...
....#..#.#...#...#....#.#.#..##
....#...........#..#...........
#..#.#..#...#...#..#...........
...#...#.#....#..#....#........
#....#.......#.##........#..#..
.....#...#..#................#.
#......#.......#..........##..#
.#....#.#......#.#...#....##..#
...#.##...#......#.#...##...##.
..#...#..##...#...#....#.......
.....#....#.#.#..........#.#...
...#...#..#....#..#.#..........
......#.#..........##.......#..
.#...##.#.#...#..##..#...#.....
..#..#.........#........#.#.#..
#.#..##..#.....##......#.....#.
#..#.....#.#....#...#.#....#.#.
......#........##.#..#...#.....
...#.##.#.#......#.#..##...#..#
....#..###..#..#.....###....##.
.....#...#.#.....#..........#.#
.#...##..##.....#..#...#.#.#...
.##.#......##...##..#...#.....#
.#.##....#...#.##.#.#...#.#...#
....#.#...#....###.#.....#.....
#.....####................#..#.
....#.....#...#.#.......##.#...
.#...##.#...#..#...........#.#.
..#####..#.#...#...##........#.
...#...##........#...#.#....###
........#.#.#..#.....#.......#.
...#...#..##............##.....
#.#..###....###.#...#.#...##.##
..#.##...#......#..#.........##
.##..#..#.....#..#.........#.#.
.#..#.#....#.##...#..#.##....##
..#...#.#...##.#.#...#...#....#
#..........#.......##..##....#.
#...###.#......#....#.........#
#.....#...##.......##....##....
.##.#..#.##......#.##....#..#..
............#.#....##.#..#....#
.#.........##.##...#....#.....#
##....##..#..#....##...#.....##
...#.....#...........#.....##..
......#...#.........#.......#..
............#...##.#.....#.#.#.
.#........##..........#.....#.#
.###.........#.....#.##...#....
.##..#...##...#..#..#.##.......
;

