1 REM DETONATOR
10 POKE53280,0:POKE53281,0:PRINT"{clear}{space*15}{yellow}detonator":PRINT"{down*10}"
15 V=53248:POKEV+21,0:POKEV+16,0:POKE2040,192:POKE2041,193:POKEV+39,6
20 POKEV+40,0:FORI=12288TO12350:READQ:POKEI,Q:NEXT
30 FORI=12352TO12357:POKEI,255:NEXT
35 FORI=12358TO12414:POKEI,0:NEXT
50 FORI=49152TO49287:READQ:POKEI,Q:NEXT
60 VL=54296:W=54276:A=54277:HI=54273:LW=54272
70 FORI=LWTOLW+24:POKEI,0:NEXT
90 PRINT"{space*10}{cyan}hit any key to start"
95 GETX$:IFX$=""THEN95
100 POKE53281,12:R=R+1:PRINT"{clear}{down*5}{space*9}{red}Q{space*14}Q{space*14}Q{brown}";
101 POKE53280,9
102 PRINT"{space*8}{reverse on}{sh pound} {cm asterisk}{reverse off}{space*12}{reverse on}{sh pound} {cm asterisk}{reverse off}{space*12}{reverse on}{sh pound} {reverse off}";
104 PRINT"{space*8}{reverse on} {reverse off}{red}+{brown}{reverse on} {reverse off}{space*12}{reverse on} {reverse off}{red}+{brown}{reverse on} {reverse off}{space*12}{reverse on} {reverse off}{red}+{brown}";
106 PRINT"{space*8}{reverse on}{space*3}{reverse off}{space*12}{reverse on}{space*3}{reverse off}{space*12}{reverse on}{space*2}{reverse off}";
108 PRINT"{space*7}{reverse on}{sh pound}{space*3}{cm asterisk}{reverse off}{space*10}{reverse on}{sh pound}{space*3}{cm asterisk}{reverse off}{space*10}{reverse on}{sh pound}{space*2}{reverse off}";
110 PRINT"{space*7}{reverse on} {reverse off} {red}+{brown} {reverse on} {reverse off}{space*10}{reverse on} {reverse off} {red}+{brown} {reverse on} {reverse off}{space*10}{reverse on} {reverse off} {red}+{brown}";
112 PRINT"{space*7}{reverse on}{space*5}{reverse off}{space*10}{reverse on}{space*5}{reverse off}{space*10}{reverse on}{space*3}{reverse off}";
114 PRINT"{space*6}{reverse on}{sh pound}{space*5}{cm asterisk}{reverse off}{space*8}{reverse on}{sh pound}{space*5}{cm asterisk}{reverse off}{space*8}{reverse on}{sh pound}{space*3}{reverse off}";
116 PRINT"{space*6}{reverse on} {reverse off}{space*2}{red}+{brown}{space*2}{reverse on} {reverse off}{space*8}{reverse on} {reverse off}{space*2}{red}+{brown}{space*2}{reverse on} {reverse off}{space*8}{reverse on} {reverse off}{space*2}{red}+{brown}";
118 PRINT"{space*6}{reverse on}{space*7}{reverse off}{space*8}{reverse on}{space*7}{reverse off}{space*8}{reverse on}{space*4}{reverse off}";
120 PRINT"{space*5}{reverse on}{sh pound}{space*7}{cm asterisk}{reverse off}{space*6}{reverse on}{sh pound}{space*7}{cm asterisk}{reverse off}{space*6}{reverse on}{sh pound}{space*4}{reverse off}";
122 PRINT"{space*5}{reverse on} {reverse off}{space*3}{red}+{brown}{space*3}{reverse on} {reverse off}{space*6}{reverse on} {reverse off}{space*3}{red}+{brown}{space*3}{reverse on} {reverse off}{space*6}{reverse on} {reverse off}{space*3}{red}+{brown}";
124 PRINT"{space*5}{reverse on}{space*9}{reverse off}{space*6}{reverse on}{space*9}{reverse off}{space*6}{reverse on}{space*5}{reverse off}";
126 PRINT"{space*4}{reverse on}{sh pound}{space*9}{cm asterisk}{reverse off}{space*4}{reverse on}{sh pound}{space*9}{cm asterisk}{reverse off}{space*4}{reverse on}{sh pound}{space*5}{reverse off}";
128 PRINT"{space*4}{reverse on} {reverse off}{space*4}{red}+{brown}{space*4}{reverse on} {reverse off}{space*4}{reverse on} {reverse off}{space*4}{red}+{brown}{space*4}{reverse on} {reverse off}{space*4}{reverse on} {reverse off}{space*4}{red}+{brown}";
130 PRINT"{space*4}{reverse on}{space*11}{reverse off}{space*4}{reverse on}{space*11}{reverse off}{space*4}{reverse on}{space*6}{reverse off}";
132 PRINT"{reverse on}{cm asterisk}{reverse off}{space*2}{reverse on}{sh pound} {reverse off}{space*4}{red}+{brown}{space*4}{reverse on} {cm asterisk}{reverse off}{space*2}{reverse on}{sh pound} {reverse off}{space*4}{red}+{brown}{space*4}{reverse on} {cm asterisk}{reverse off}{space*2}{reverse on}{sh pound} {reverse off}{space*4}{red}+{brown}";
134 PRINT"{reverse on}{space*40}{reverse off}";
140 GOSUB1000:POKEV,25:POKEV+1,55:POKEV+21,1:POKEV+16,0
150 DB(1,1)=1233:DB(2,1)=1248:DB(3,1)=1263
160 POKEV+31,0
200 SYS(49152):IFPEEK(179)=1THENGOSUB300
205 LM=3*R:IFRND(1)*100<LMTHENI=INT(RND(1)*3+1):POKE178,I
210 IFPEEK(1273)=32ANDPEEK(1233)<>32THENBD=1:GOTO500
215 IFPEEK(1288)=32ANDPEEK(1248)<>32THENBD=2:GOTO500
220 IFPEEK(1303)=32ANDPEEK(1263)<>32THENBD=3:GOTO500
230 IF(PEEK(V+31)AND1)=0THEN200
240 GOTO700
300 XP=PEEK(V)+256*(PEEK(V+16)AND1)+16
310 IFXP>255THENPOKEV+16,PEEK(V+16)OR2:POKEV+2,XP-256:GOTO320
315 POKEV+16,PEEK(V+16)AND253:POKEV+2,XP
320 POKEV+3,PEEK(V+1)+5:POKEV+21,3
330 REM NOISE
340 RW=INT((PEEK(V+3)-54)/8):C=INT(XP/8):I=1024+40*RW+C:KL=PEEK(I)
345 IFPEEK(I)=32ANDPEEK(I-1)=160THENGOSUB400:GOTO350
347 IFPEEK(I)=43ANDPEEK(I-1)=160THENGOSUB400
350 POKEV+21,1:RETURN
400 IFC<10THENC=9:GOTO420
405 IFC<25THENC=24:GOTO420
410 C=39
420 POKEVL,15:POKELW,220:POKEHI,68:POKEW,129:POKEA,15
430 POKE984+40*RW+C,32:POKE1024+40*RW+C,32:POKE1064+40*RW+C,32
440 FORTH=1TO10:NEXT:POKEA,0:POKEW,0:RETURN
500 LV=0
505 POKEDB(BD,1),32:DB(BD,1)=DB(BD,1)+40:IFPEEK(DB(BD,1))<>32THEN600
510 POKEDB(BD,1),81:POKEDB(BD,1)+54272,2:LV=LV+1:SC=SC+LV:GOSUB1000:GOTO505
600 POKEVL,15:POKEW,129:POKEA,15:POKELW,200:IFBD=3THEN650
602 IFBD=1THENSP=1264:GOTO605
603 SP=1279
605 FORI=SP+40*LVTOSPSTEP-40:FORJ=4TO14
610 POKEI+J,32:POKE53281,J:POKEHI,INT(RND(1)*20+2):NEXT:NEXT
620 POKE53281,12:POKEVL,0
630 IFPEEK(1233)=32ANDPEEK(1248)=32ANDPEEK(1263)=32THEN100
640 GOTO200
650 FORI=1298+40*LVTO1298STEP-40:FORJ=0TO6
660 POKEI+J,32:POKE53281,J:POKEHI,INT(RND(1)*20+2):NEXT:NEXT
670 POKE53281,12:POKEVL,0
680 GOTO630
700 FORI=LWTOLW+24:POKEI,0:NEXT
705 FORI=15TO0STEP-1:POKE12288+INT(RND(1)*60),0:POKE12288+INT(RND(1)*60),1
710 POKEVL,I:POKEW,129:POKEA,15:POKEHI,40:POKELW,200:NEXT
720 POKEV+21,0
800 PRINT"{clear}";:POKE53281,0:POKE53280,0
810 PRINT"{cyan}{space*15}game over{down*12}"
820 PRINT"{space*11}your score was ";SC
830 GETX$:IFX$=""THENEND
840 GOTO830
1000 PRINT"{home}{down*24}{blue}{space*14}score: ";SC;
1010 RETURN
10000 DATA0,28,0,0,62,0,0,127,0,0,201,0,0,201,0,0,255,0,31,255,248,63,255,252
10010 DATA127,255,254,255,255,255,127,255,254,63,255,252,31,255,248,7,255,224
10020 DATA7,255,224,1,255,128,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0
10100 DATA165,197,133,180,169,0,133,179,165,180,201,60,208,4,169,1,133,179,165
10110 DATA180,201,62,208,4,169,1,133,178,165,180,201,12,208,4,169,2,133,178,165
10120 DATA180,201,33,208,4,169,3,133,178,165,180,201,41,208,4,169,4,133,178,165
10130 DATA178,201,1,208,10,173,1,208,206,1,208,206,1,208,96,201,2,208,10,173,1
10140 DATA208,238,1,208,238,1,208,96,201,3,208,22,206,0,208,206,0,208,173,0,208
10150 DATA201,254,144,8,173,16,208,41,254,141,16,208,96,238,0,208,238,0,208,173
10160 DATA0,208,201,2,176,8,173,16,208,9,1,141,16,208,96
