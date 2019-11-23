4 data 32,115,0,240,27,32,138,173,32,247
5 data 183,132,252,133,253,32,155,183,134
6 data 254,120,169,44,141,20,3,169,192,141
7 data 21,3,96,120,169,49,141,20,3,169,234
8 data 141,21,3,96,164,254,136,177,252,153
9 data 0,4,169,1,153,0,216,192,0,208,241,76,49,234
10 for j=49152 to 49215: read x: poke j,x: next
20 print "{clear}{yellow}{down*6}sys 49152, start, number of locations"
40 print "{down}sys 49152,512,80 is input buffer,"
50 print "sys 49152,217,24=screen link table,"
60 print "sys 49152,255,18=number output buffer,"
70 print "sys 49152,41110,255=some rom keywords."
100 print "{black}{down}sys 49152, turns routine off"