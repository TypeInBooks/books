1 REM BRICK BUSTER
10 POKE 53281,10:POKE53280,2:PRINT"{clear}{dark gray}":PRINTTAB(14)"brick buster":PRINTTAB(14)"************"
15 V=53248:POKE2040,192:POKE2041,193:POKEV+39,0:POKEV+40,6
20 FORI=12288TO12311:POKEI,255:NEXT
22 PRINT:PRINT:PRINTTAB(10)"'i'moves bat left"
25 FORI=12312TO12350:POKEI,0:NEXT
30 FORI=12352TO12373STEP3:READQ:POKEI,Q:POKEI+1,0:POKEI+2,0:NEXT
32 PRINT:PRINTTAB(10)"'p'moves bat right"
35 FORI=12376TO12414:POKEI,0:NEXT
40 FORI=49152TO49306:READQ:POKEI,Q:NEXT
50 FORI=54272TO54295:POKEI,0:NEXT
85 PRINT"{down*10}{space*10}hit any key to start"
90 GETX$:IFX$=""THEN90
95 TI$="000000"
100 PRINT"{clear}";:POKE53281,12:POKE53280,6
105 GOSUB1000:PRINT"{down*10}":GOSUB1100
107 C=160
110 K=INT(RND(1)*3+5):POKE1624+K,C:POKE1632+K,C:POKE1640+K,C:POKE1648+K,C
115 POKE55896+K,2:POKE55904+K,2:POKE55912+K,2:POKE55920+K,2
120 GOSUB1100:PRINT"{down}{reverse off}{yellow} VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV ";
121 PRINT"{yellow} VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV ";
122 PRINT"{yellow} VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV ";
125 POKE1784+K,C:POKE1792+K,C:POKE1800+K,C:POKE1808+K,C
130 POKE56056+K,2:POKE56064+K,2:POKE56072+K,2:POKE56080+K,2
140 RN=RN+1:POKEV+2,28:POKEV,172:POKEV+16,0:POKEV+1,68:POKEV+3,25:POKEV+21,3
145 DX=1:DY=4
150 POKEV+30,0:POKEV+31,0
160 IFRN=1THEN200
165 IFRN>4THEN200
170 IFRN=2THENFORI=12290TO12313STEP3:POKEI,240:NEXT:GOTO200
180 IFRN=3THENFORI=12290TO12313STEP3:POKEI,0:NEXT:GOTO200
185 FORI=12289TO12312STEP3:POKEI,240:NEXT
200 SYS(49152):SYS(49152):SYS(49152)
210 POKE178,DX:POKE179,DY:SYS(49231)
215 CO=PEEK(V+30):IF(COAND3)=3THENGOSUB400
220 POKE178,DX:POKE179,DY:SYS(49231)
225 CO=PEEK(V+30):IF(COAND3)=3THENGOSUB400
230 CL=PEEK(V+31):IF(CLAND2)=2THENGOSUB300:SC=SC+5
240 IFPEEK(V+3)<25THEN550
250 IFPEEK(V+3)>202THEN450
260 K=PEEK(V+2)+128*(PEEK(V+16)AND2):IFK>335ORK<23THENGOSUB500
270 GOSUB1000:GOTO200
300 R=INT((PEEK(V+3)-44)/8):C=INT((PEEK(V+2)+128*(PEEK(V+16)AND2)-19)/8)
305 PS=1024+40*R+C:IFPEEK(PS)<>32THEN320
307 IFPEEK(PS+1)=160THENPOKEPS+1,32:GOTO350
308 IFPEEK(PS+1)<>32THENPOKEPS+1,32:GOSUB1300:GOTO330
310 IFPEEK(PS-1)=160THENPOKEPS-1,32:GOTO350
311 IFPEEK(PS-1)=32THENRETURN
312 POKEPS-1,32:GOSUB1300:GOTO330
320 IFPEEK(PS)=160THEN350
325 POKEPS,32:GOSUB1300
330 DY=252:RETURN
350 POKEPS,32:SC=SC+50:GOSUB1300:GOSUB1000:RETURN
400 DF=PEEK(V)+256*(PEEK(V+16)AND1):BX=PEEK(V+2)+128*(PEEK(V+16)AND2)
410 IFBX<=DFANDDX=1THENDX=255:GOTO445
415 IFDX=1THEN445
420 IFBX>=DF+16THENDX=1
445 DY=4:RETURN
450 PRINT"{clear}{black}{space*16}new round"
455 SC=SC+500
460 POKEV+21,0
465 FORT=1TO2000:NEXT
470 GOTO100
500 IFK<23THENDX=1:RETURN
520 DX=255:RETURN
550 FORI=10TOINT(RND(1)*50+50):POKE53281,I:POKE53280,I
560 POKEVL,15:POKEW,129:POKEA,15:POKEH,I:POKEL,200
565 NEXT:POKEW,0:POKEA,0
570 POKE53280,0:POKE53281,0:PRINT"{clear}{yellow}{space*15}game over!":PRINT
580 PRINT"{down*8}{space*12}your score was ";INT(SC)
590 PRINT"{down*2}another game? (y/n)"
591 GETX$:IFX$=""ORX$="i"ORX$="p"THEN591
592 IFX$="y"THENRUN
593 IFX$<>"n"THEN591
594 PRINT"{clear}{black}load"CHR$(34)"menu"CHR$(34)",8"
595 POKE198,5:POKE631,19:POKE632,13:POKE633,82:POKE634,117:POKE635,13:END
1000 PRINT"{home}{reverse off}{space*17}{blue}score ";INT(SC);CHR$(13);"{up}";
1005 SC=SC+TI/60:TI$="000000"
1010 RETURN
1100 PRINT"{down}{red} {reverse on}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{cm r}{sh asterisk}{reverse off} ";
1105 PRINT" {reverse on}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{cm e}{cm r}{reverse off} ";
1120 PRINT" {reverse on}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{reverse off} ";
1130 RETURN
1300 VL=54296:W=54276:A=54277:H=54273:L=54272
1305 FORX=15TO0STEP-4:POKEVL,X:POKEW,129:POKEA,15:POKEH,12:POKEL,32:NEXT
1310 POKEW,0:POKEA,0
1350 RETURN
10000 DATA61,126,255,255,255,255,126,61
10100 DATA165,197,133,181,201,33,208,41,173,16,208,41,1,240,21,173,0,208,201
10110 DATA0,208,14,169,252,141,0,208,173,16,208,41,254,141,16,208,96,206,0,208
10120 DATA206,0,208,206,0,208,206,0,208,96,201,41,208,251,238,0,208,238,0,208
10130 DATA238,0,208,238,0,208,173,0,208,208,234,173,16,208,9,1,141,16,208,96
10200 DATA24,165,179,109,3,208,141,3,208,165,178,201,255,240,28,238,2,208
10210 DATA238,2,208,238,2,208,238,2,208,173,2,208,201,0,208,8,173,16,208,9,2
10220 DATA141,16,208,96,173,16,208,41,2,240,13,173,2,208,208,8,173,16,208,41,253
10230 DATA141,16,208,206,2,208,206,2,208,206,2,208,206,2,208,96