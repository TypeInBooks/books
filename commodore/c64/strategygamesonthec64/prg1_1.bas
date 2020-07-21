10 print chr$(147):poke 53281,6: rem screen colour
20 poke 1122,35:poke 55394,13: rem #
30 y=1824:yc=56096:x=18
40 poke y+x,32:rem space
50 js=peek(56320) and 31:rem read joystick
60 if js=23 then x=x+1:if x>36 then x=36
70 if js=27 then x=x-1:if x<0 then x=0
80 poke y+x,43:poke yc+x,1:rem print +
90 if rnd(1)>0.96 then 120
100 if js=31 and rnd(1)>0.7 then 120
110 goto 40
120 a=0:b=40:c=18-x:d=b-1
130 if x>18 then 290
140 if x=18 then 200
150 for i=1 to c
160 a=a+d
170 poke 1122+a,42:poke 55394+a,10
180 poke 1122+a,32
190 next i
200 for i=1 to 18-c
210 a=a+40
220 poke 1122+a,42:poke 55394+a,10
230 poke 1122+a,32
240 next i
250 poke 54296,15:poke 54277,17:poke 54278,129:poke 54273,34:poke 54272,75
260 poke 54276,129:for t=1 to 250:next t
270 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
280 goto 40
290 c=x-18
300 d=b+1
310 goto 150