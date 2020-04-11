10 REM CRASH BARRIER
40 FORN=0TO191:READA:POKE832+N,A:NEXT:MS=54272
50 GOSUB1000
60 PRINT"{home}{reverse on}{black}{right*9}{space*4}crash barrier{space*5}"
70 PRINT"{home}{down*12}{right*19}{reverse on}{black}{space*6}"
80 PRINT"{down*10}{right*28}{reverse on}{black}";HS"{home}":G1=0:SC=0
100 POKEMS+4,0:POKEMS+24,10:POKEMS+5,102:POKEMS+6,255:POKEMS,15:POKEMS+1,1
110 DX=0:DY=0:V=53248:X1=32:Y1=60:S1=8
120 POKEV,X1:POKEV+1,Y1:POKEV+16,0
130 POKE2040,13:POKEV+39,2:POKEV+21,1:POKEV+31,0
140 WAIT197,60,1:POKEMS+4,129
180 IFSC<0THENSC=0
190 PRINT"{home}{down*12}{right*19}{reverse on}{black}"SPC(6-LEN(STR$(SC)))SC
200 K=PEEK(197):IFK=64THENSC=SC+1:GOTO350
201 IFK<>23THEN204
202 IFS1=8THENS1=14:POKEV+39,5:POKEMS+24,15:GOTO260
203 IFS1=14THENS1=8:POKEV+39,2:POKEMS+24,10:GOTO260
204 IFK=9THENDX=0:DY=-S1:DR=0:POKE2040,13:GOTO260
206 IFK=18THENDX=S1:DY=0:DR=1:POKE2040,14:GOTO260
208 IFK=12THENDX=0:DY=S1:DR=1:POKE2040,13:GOTO260
210 IFK=10THENDX=-S1:DY=0:DR=0:POKE2040,14
260 SC=SC+S1
350 X1=X1+DX:Y1=Y1+DY
360 IFPEEK(V+16)=0ANDX1<24THENX1=24
365 IFPEEK(V+16)=0ANDX1>255THENX1=1:POKEV+16,3:GOTO500
370 IFPEEK(V+16)=3ANDX1>56THENX1=56
372 IFPEEK(V+16)=3ANDX1<1THENX1=255:POKEV+16,0:GOTO500
380 IFY1<50THENY1=50
390 IFY1>228THENY1=228
500 POKEV,X1:POKEV+1,Y1
510 IFRND(.)<.15THENGOSUB1500
515 IFRND(.)<.15THENGOSUB1600
518 IFRND(.)<.15THENGOSUB1700
520 IFPEEK(V+31)=0THEN180
522 POKEMS+6,0
525 POKEMS+24,15:POKEMS+4,0:POKEMS+1,72:POKEMS,179:POKEMS+5,140:POKEMS+4,129
530 POKE198,0
532 POKE2041,15:POKEV+21,2:POKEV+40,2:POKEV+2,X1:POKEV+3,Y1
535 FORT=1TO800:NEXT:POKEMS+4,0
540 SC=SC-100:G1=G1+1:IFSC<0THENSC=0
545 PRINT"{home}{down*12}{right*19}{reverse on}{black}"SPC(6-LEN(STR$(SC)))SC
550 PRINT"{home}{down*8}{right*8}{reverse on}{black}"SPC(G1)" "
560 IFG1<8THEN100
580 PRINT"{home}{right*11}{black}another game (y/n)":FORT=1TO70:NEXT
590 PRINT"{home}{right*11}{reverse on}{black}another game (y/n)":FORT=1TO70:NEXT
600 GETA$:IFA$=""THEN580
620 IFA$="n"THENPRINT"{clear}":END
640 IFSC>HSTHENHS=SC
650 GOTO60
1000 POKE53280,6:POKE53281,3
1020 PRINT"{clear}{black}";
1030 PRINT"{reverse on}{space*39}{blue} {reverse off}";
1040 PRINT"{reverse on}{black} {reverse off}{space*37}{reverse on} {blue} {reverse off}";
1050 PRINT"{reverse on}{black} {reverse off}{space*37}{reverse on}{black} {blue} {reverse off}";
1060 PRINT"{reverse on}{black} {reverse off}{space*37}{reverse on} {blue} {reverse off}";
1070 PRINT"{reverse on}{black} {reverse off}{space*3}{reverse on}{black} high speed{green} {black} {reverse off}{space*4}{reverse on}{black}{space*2}low speed{red} {black}{space*2}{reverse off}{space*3}{reverse on}{black} {blue} {reverse off}";
1080 PRINT"{reverse on}{black} {reverse off}{space*3}{reverse on} {reverse off}{space*29}{reverse on} {reverse off}{space*3}{reverse on} {blue} {reverse off}";
1090 PRINT"{reverse on}{black} {reverse off}{space*3}{reverse on}{black} {reverse off}{space*29}{reverse on}{black} {reverse off}{space*3}{reverse on}{black} {blue} {reverse off}";
1100 PRINT"{reverse on}{black} {reverse off}{space*3}{reverse on} {reverse off}{space*29}{reverse on} {reverse off}{space*3}{reverse on} {blue} {reverse off}";
1110 PRINT"{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} xxxxxxxx {reverse off}{space*3}{reverse on}{space*10}{reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {blue} {reverse off}";
1120 PRINT"{reverse on}{black} {reverse off}{space*3}{reverse on} {reverse off}{space*3}{reverse on} {reverse off}{space*21}{reverse on} {reverse off}{space*3}{reverse on} {reverse off}{space*3}{reverse on} {blue} {reverse off}";
1130 PRINT"{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*20}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {blue} {reverse off}";
1140 PRINT"{reverse on}{black} {reverse off}{space*37}{reverse on} {blue} {reverse off}";
1150 PRINT"{reverse on}{black} {reverse off} {brown}{space*10}{reverse on}{black}{space*2}score{space*8}{reverse off} {brown}{space*10}{reverse on}{black} {blue} {reverse off}";
1160 PRINT"{reverse on}{black} {reverse off}{space*37}{reverse on} {blue} {reverse off}";
1170 PRINT"{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*20}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {blue} {reverse off}";
1180 PRINT"{reverse on}{black} {reverse off}{space*3}{reverse on} {reverse off}{space*3}{reverse on} {reverse off}{space*21}{reverse on} {reverse off}{space*3}{reverse on} {reverse off}{space*3}{reverse on} {blue} {reverse off}";
1190 PRINT"{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black}{space*10}{reverse off}{space*3}{reverse on}{space*10}{reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {blue} {reverse off}";
1200 PRINT"{reverse on}{black} {reverse off}{space*3}{reverse on} {reverse off}{space*29}{reverse on} {reverse off}{space*3}{reverse on} {blue} {reverse off}";
1210 PRINT"{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {reverse off} {brown}{space*28}{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black} {blue} {reverse off}";
1220 PRINT"{reverse on}{black} {reverse off}{space*3}{reverse on} {reverse off}{space*29}{reverse on} {reverse off}{space*3}{reverse on} {blue} {reverse off}";
1230 PRINT"{reverse on}{black} {reverse off} {brown}{space*2}{reverse on}{black}{space*14}{reverse off}{space*3}{reverse on}{space*14}{reverse off} {brown}{space*2}{reverse on}{black} {blue} {reverse off}";
1240 PRINT"{reverse on}{black} {reverse off}{space*37}{reverse on} {blue} {reverse off}";
1250 PRINT"{reverse on}{black} {reverse off} {brown}{space*36}{reverse on}{black} {blue} {reverse off}";
1260 PRINT"{reverse on}{black} {reverse off}{space*37}{reverse on} {blue} {reverse off}";
1270 PRINT"{reverse on}{black}{space*6}previous high score{space*14}{blue}{home}";
1280 POKE2023,160:POKE56295,6
1290 RETURN
1500 IFAT=1THENAT=0:CC=3:KK=32:GOTO1530
1510 AT=1:M1=INT(RND(.)*11+12):N1=INT(RND(.)*6+1)*4-3:CC=0:KK=160
1520 P1=1024+M1+N1*40
1530 FORI=P1TOP1+80STEP40
1540 POKEI,KK:POKEI+54272,CC
1550 NEXT
1560 RETURN
1600 IFTA=1THENTA=0:CC=3:KK=32:GOTO1630
1610 TA=1:M2=INT(RND(.)*2+1)*4-3:N2=INT(RND(.)*11)+7:CC=0:KK=160
1620 P2=1024+M2+N2*40
1630 FORI=P2TOP2+2
1640 POKEI,KK:POKEI+54272,CC
1650 NEXT
1660 RETURN
1700 IFTT=1THENTT=0:CC=3:KK=32:GOTO1730
1710 TT=1:M3=INT(RND(.)*2+8)*4-1:N3=INT(RND(.)*11)+7:CC=0:KK=160
1720 P3=1024+M3+N3*40
1730 FORI=P3TOP3+2
1740 POKEI,KK:POKEI+54272,CC
1750 NEXT
1760 RETURN
2000 DATA0,0,0,0,0,0,0,0,0,0,24,0,3,60,192,3,126,192,3,255,192,3,126,192,3,126,192
2010 DATA0,126,0,0,126,0,0,126,0,3,126,192,3,126,192,3,255,192,3,126,192,3,60,192
2020 DATA0,24,0,0,0,0,0,0,0,0,0,0,0
2030 DATA0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
2040 DATA7,195,224,7,195,224,1,0,128,7,255,224,31,255,248,31,255,248,7,255,224
2050 DATA1,0,128,7,195,224,7,195,224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
3000 DATA32,140,64,140,96,140,32,60,64,92,96,124
3010 DATA168,60,168,92,168,124,255,60,255,92,240,124
3020 DATA49,60,17,92,240,124,49,140,17,140,240,140
3030 DATA49,220,17,188,240,156,255,220,255,188,240,156
3040 DATA168,220,168,188,168,156,32,220,64,188,96,156
3050 DATA32,140,64,140,96,140
3060 DATA99,0,0,0,0,8,0,2,8,8,0,8,32,0,42,128,0,174,160,2,239,128,42,255,160
3070 DATA11,255,224,2,255,224,2,255,128,2,190,0,8,186,128,0,184,32,0,40,0
3080 DATA0,32,0,32,32,0,0,0,128,2,0,2,0,0,0,0,0,0
