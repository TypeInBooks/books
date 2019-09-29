10 rem sprite example 3...
20 rem the hot air gorf
30 vic=53248:rem this is where the vic registers begin
35 poke vic+21,1:rem enable sprite 0
36 poke vic+33,14:rem set background color to light blue
37 poke vic+23,1:rem expand sprite 0 in y
38 poke vic+29,1:rem expand sprite 0 in x
40 poke 2040,192:rem set sprite 0's pointer
50 poke vic+28,1:rem turn on multicolor
60 poke vic+37,7:rem set multicolor 0
70 poke vic+38,4:rem set multicolor 1
180 poke vic+0,100:rem set sprite 0's x position
190 poke vic+1,100:rem set sprite 0's y position
220 poke vic+39,2:rem set sprite 0's color
290 for y=0 to 63:rem byte counter with sprite loop
300 read a:rem read in a byte
310 poke 12288+y,a:rem store the data in sprite area
320 next y:rem close loop
330 dx=1:dy=1
340 x=peek(vic):rem look at sprite 0's x position
350 y=peek(vic+1):rem look at sprite 0's y position
360 if y=50 or y=208 then dy=-dy:rem if y is on the edge of the...
370 rem screen, then reverse delta y
380 if x=24 and (peek(vic+16) and 1)=0 then dx=-dx:rem if sprite is...
390 rem touching the left edge, then reverse it
400 if x=40 and (peek(vic+16) and 1)=1 then dx=-dx:rem if sprite is...
410 rem touching the right edge, then reverse it
420 if x=255 and dx=1 then x=-1:side=1
430 rem switch to other side of the screen
440 if x=0 and dx=-1 then x=256:side=0
450 rem switch to other side of the screen
460 x=x+dx:rem add delta x to x
470 x=x and 255:rem make sure that x is in allowed range
480 y=y+dy:rem add delta y to y
485 poke vic+16,side
490 poke vic,x:rem put new x value into sprite 0's x position
510 poke vic+1,y:rem put new y value into sprite 0's y position
520 get a$:rem get a key from the keyboard
521 if a$="m" then poke vic+28,1:rem user selected multicolor
522 if a$="h" then poke vic+28,0:rem user selected high resolution
530 goto 340
600 rem ***** sprite data *****
610 data 64,0,1,16,170,4,6,170,144,10,170,160,42,170,168,41,105,104,169,235,106
620 data 169,235,106,169,235,106,170,170,170,170,170,170,170,170,170,170,170,170
630 data 166,170,154,169,85,106,170,85,170,42,170,168,10,170,160,1,0,64,1,0,64
640 data 5,0,80,0
