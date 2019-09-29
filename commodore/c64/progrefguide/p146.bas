10 rem sprite example 1...
20 rem the hot air balloon
30 vic=13*4096:rem this is where the vic registers begin
35 poke vic+21,1:rem enable sprite 0
36 poke vic+33,14:rem set background color to light blue
37 poke vic+23,1:rem expand sprite 0 in y
38 poke vic+29,1:rem expand sprite 0 in x
40 poke 2040,192:rem set sprite 0's pointer
180 poke vic+0,100:rem set sprite 0's x position
190 poke vic+1,100:rem set sprite 0's y position
220 poke vic+39,1:rem set sprite 0's color
250 for y=0 to 63:rem byte counter with sprite loop
300 read a:rem read in a byte
310 poke 192*64+y,a:rem store the data in sprite area
320 next y:rem close loop
330 dx=1:dy=1
340 x=peek(vic):rem look at sprite 0's x position
350 y=peek(vic+1):rem look at sprite 0's y position
360 if y=50 or y=208 then dy=-dy:rem if y is on the edge of the...
370 rem screen, then reverse delta y
380 if x=24 and(peek(vic+16) and 1)=0 then dx=-dx:rem if sprite is....
390 rem touching the left edge(x=24 and the msb for sprite 0 is 0), reverse it
400 if x=40 and (peek(vic+16) and 1)=1 then dx=-dx:rem if sprite is....
410 rem touching the right edge (x=40 and the msb for sprite 0 is 1), reverse it
420 if x=255 and dx=1 then x=-1:side=1
430 rem switch to other side of the screen
440 if x=0 and dx=-1 then x=256:side=0
450 rem switch to other side of the screen
460 x=x+dx:rem add delta x to x
470 x=x and 255:rem make sure x is in allowed range
480 y=y+dy:rem add delta y to y
485 poke vic+16,side
490 poke vic,x:rem put new x value into sprite 0's x position
510 poke vic+1,y:rem put new y value into sprite 0's y position
530 goto 340
600 rem ***** sprite data *****
610 data 0,127,0,1,255,192,3,255,224,3,231,224
620 data 7,217,240,7,223,240,7,217,240,3,231,224
630 data 3,255,224,3,255,224,2,255,160,1,127,64
640 data 1,62,64,0,156,128,0,156,128,0,73,0,0,73,0
650 data 0,62,0,0,62,0,0,62,0,0,28,0,0
