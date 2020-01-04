1 rem 222 in line 16 is marker value for start of ml
5 data 11,8,0,0,158,50,48,54,49,0,0,0
10 data 165,45,133,34,165,46,133,35,165,55,133,36,165,56,133
11 data 37,160,0,165,34,208,2,198,35,198,34,177,34,208,60
12 data 165,34,208,2,198,35,198,34,177,34,240,33,133,38,165
13 data 34,208,2,198,35,198,34,177,34,24,101,36,170,165,38
14 data 101,37,72,165,55,208,2,198,56,198,55,104,145,55,138
15 data 72,165,55,208,2,198,56,198,55,104,145,55,56,176,184
16 data 201,222,208,237,165,55,133,51,165,56,133,52,108,55,0
20 data 32,243,255,0,96,160,0,0,173,255,255,0,153,0,0,4,200,208,250,96,32
25 l=21
30 open 1,8,8,"0:relocate test,p,w":print#1,chr$(1);chr$(8);
40 for i=1 to 12:read x:print#1,chr$(x);:next:rem basic sys call (5)
50 for i=1 to 105:read x:print#1,chr$(x);:next:rem ml for relocator (10-16)
60 print#1,chr$(222);: rem separator character
70 for i=1 to l:read x:print#1,chr$(x);:next:rem ml to be relocated (20)
80 close 1