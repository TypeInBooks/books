10 c=12*4096:rem set paddle routine start
11 rem poke in the paddle reading routine
15 for i=0 to 63:read a:poke c+i,a:next
20 sys c:rem call the paddle routine
30 p1=peek(c+257):rem set paddle one value
40 p2=peek(c+258):rem set paddle two value
50 p3=peek(c+259):rem set paddle three value
60 p4=peek(c+260):rem set paddle four value
61 rem read fire button status
62 s1=peek(c+261):s2=peek(c+262)
70 print p1,p2,p3,p4:rem print paddle values
72 rem print fire button status
75 print:print"fire a ";s1,"fire b ";s2
80 for w=1 to 50:next:rem wait a while
90 print"{clear}":print:goto 20:rem clear screen and do again
95 rem data for machine code routine
100 data 162,1,120,173,2,220,141,0,193,169,192,141,2,220,169
110 data 128,141,0,220,160,128,234,136,16,252,173,25,212,157
120 data 1,193,173,26,212,157,3,193,173,0,220,9,128,141,5,193
130 data 169,64,202,16,222,173,0,193,141,2,220,173,1,220,141
140 data 6,193,88,96
