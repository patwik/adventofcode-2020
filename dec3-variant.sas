options nosource;
data kalle;
svar=79*234*72*91*48;
run;

data kalle;

  /*variant 1 - 79 tr�d 
  retain modpos 0;
  infile datalines n=400 ;
  position=modpos+1;
  input @position testchar $1.   ;
     modpos=mod(modpos+1,31);
  if testchar='#' then treecnt+1;
  
  */

  /* variant 2 - 234 tr�d
  retain modpos 0;
  infile datalines n=400 ;
  position=modpos+1;
  input @position testchar $1.   ;
     modpos=mod(modpos+3,31);
  if testchar='#' then treecnt+1;
  */

  /*variant 3 - 72 tr�d  
  retain modpos 0;
  infile datalines n=400 ;
  position=modpos+1;
  input @position testchar $1.   ;
     modpos=mod(modpos+5,31);
  if testchar='#' then treecnt+1;
  */
  
  /*variant 4 - 91 tr�d   
  retain modpos 0;
  infile datalines n=400 ;
  position=modpos+1;
  input @position testchar $1.   ;
     modpos=mod(modpos+7,31);
  if testchar='#' then treecnt+1;
  */

  /*variant 5 - 48 tr�d */  
  retain modpos 0;
  infile datalines n=400 ;
  position=modpos+1;
  input @position testchar $1.   ;
     modpos=mod(modpos+1,31);
  if testchar='#' then treecnt+1;
  input;
 

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

