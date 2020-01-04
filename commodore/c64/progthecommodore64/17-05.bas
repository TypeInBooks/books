10 open 4,6
20 open 6,6,1
30 print#6,"h"
40 for x=20 to 460 step 2
50 y=sin((x-20)*4*{126}/440)
60 y=y+(1/3)*sin((x-20)*4*3*{126}/440)
70 y=y+(1/5)*sin((x-20)*4*5*{126}/440)
80 print#6,"d",x,y*70
90 next
100 print#6,"m",479,0
110 print#6,"d",0,0
120 print#6,"d",0,110
130 print#6,"m",0,0
140 print#6,"r",0,-100
150 print#4,"waveform with 2 odd harmonics added"
160 print#4:close 4:print#6:close 