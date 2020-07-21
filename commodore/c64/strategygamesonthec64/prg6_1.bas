10 gosub 180
20 dim a(9,9)
30 for i=1 to 8:for j=1 to 8
40 a(i,j)=0
50 next j:next i
60 for i=1 to 8
70 read p
80 a(i,1)=p:a(i,8)=-a(i,1)
90 a(i,2)=+1:rem place pawn
100 a(i,7)=-1:next i
105 for i=0 to 9
106 a(i,0)=7:a(0,i)=7:a(i,9)=7:a(9,i)=7
107 next i
110 rem ** display board **
120 print chr$(147)
130 for i=0 to 9:for j=0 to 9
140 poke 251,i*4:poke 252,(9-j)*2+2:sys 49152:print a(i,j)
150 next j:next i
160 poke 251,0:poke 252,22:sys 49152:end
170 rem ** cursor movement routine **
180 for i=0 to 8:read h:poke 49152+i,h:next i:return
190 data 166,252,164,251,24,32,240,255,96
200 data 5,3,3.2,9,255,3.2,3,5