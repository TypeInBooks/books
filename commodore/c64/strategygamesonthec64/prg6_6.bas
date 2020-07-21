10 gosub 550
20 print chr$(147):poke 53281,7:poke 53280,7:rem clear screen and screen colour
30 for i=1 to 8:for j=1 to 8
40 a(i,j)=0
50 next j:a(i,5)=i:next i
60 for i=0 to 62:read b:poke 832+i,b:next i:rem sprite shape
70 poke 53287,0:rem sprite colour
80 poke 53275,0:rem sprite priority over playfield
90 poke 2040,13:rem sprite shape pointer
100 x=96:y=174
110 poke 53248,x:poke 53249,y:rem sprite position
120 for i=1 to 8:for j=1 to 8
130 if a(i,j)=0 then 540
140 poke 251,2*i+7:poke 252,(9-j)*2:sys 49152:print chr$(28);a(i,j)
150 next j
160 poke 251,2+i+7:poke 252,19:sys 49152:print chr$(31);i
170 poke 251,6:poke 252,(9-i)*2:sys 49152:print chr$(31);i:next i
180 poke 53269,1:rem turn sprite on
190 gosub 390
200 a1=int((x-96)/16+0.5)+1:a2=9-(int((y-62)/16+0.5)+1)
210 p=a(a1,a2):if p=0 then gosub 470:goto 190
220 poke 251,6:poke 252,23:sys 49152:print chr$(144);"move from ";a1;a2
230 poke 54296,15:poke 54277,17:poke 54278,129:poke 54273,17:poke 54272,37
240 poke 54276,33
250 for k=1 to 60:next k:rem trigger delay
260 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
270 gosub 390
280 b1=int((x-96)/16+0.5)+1:b2=9-(int((y-62)/16+0.5)+1)
290 p2=a(b1,b2):if p2>0 then gosub 470:goto 190
300 poke 251,22:poke 252,23:sys 49152:print chr$(144);"to ";b1;b2
310 a(a1,a2)=0:a(b1,b2)=p
320 poke 251,2*b1+7:poke 252,(9-b2)*2:sys 49152:print chr$(28);a(b1,b2)
330 poke 251,2*a1+7:poke 252,(9-a2)*2:sys 49152:print chr$(144);" ."
340 poke 54296,15:poke 54277,17:poke 54278,129:poke 54273,17:poke 54272,37
350 poke 54276,17
360 for k=1 to 60:next k:rem trigger delay
370 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
380 goto 190
390 js=peek(56320) and 31
400 if js=15 then return
410 if js=30 and y>62 then y=y-16:poke 53249,y
420 if js=29 and y<174 then y=y+16:poke 53249,y
430 if js=27 and x>96 then x=x-16:poke 53248,x
440 if js=23 and x<208 then x=x+16:poke 53248,x
450 for k=1 to 100:next k
460 goto 390
470 poke 54296,15:poke 54277,17:poke 54278,129:poke 54273,34:poke 54272,75
480 poke 54276,33
490 poke 251,6:poke 252,21:sys 49152:print chr$(28);"illegal"
500 for k=1 to 200:next k
510 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
520 poke 251,6:poke 252,21:sys 49152:print"{space*15}"
530 return
540 poke 251,2*i+7:poke 252,(9-j)*2:sys 49152:print chr$(144);" .":goto 150
550 for i=0 to 8:read h:poke 49152+i,h:next i:return
560 data 166,252,164,251,24,32,240,255,96
570 data 255,255,255,128,0,1,128,0,1,128,0,1,128,0,1,128,0,1,128,0,1,128,0,1
580 data 128,0,1,128,0,1,128,0,1,128,0,1,128,0,1,128,0,1,128,0,1,128,0,1
590 data 128,0,1,128,0,1,128,0,1,128,0,1,255,255,255