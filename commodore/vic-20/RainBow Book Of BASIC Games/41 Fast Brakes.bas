100 REM BRAKES
110 GOSUB 1100
120 LET X=0:LET Y=3:GOSUB 1700:PRINT "braking distances"
130 PRINT:PRINT "how fast (km/h) ";
140 GOSUB 2100:IF K<113 THEN GOTO 170
150 PRINT:PRINT "over the speed limit"
160 LET T=6:GOSUB 1400:GOTO 110
170 LET A=INT(K/5+0.5):LET B=INT(K*K/166+0.5)
180 PRINT:PRINT "distances (in m)"
190 PRINT:PRINT "thinking ";A
200 PRINT:PRINT "braking{space*2}";B
210 PRINT:PRINT "total{space*4}";A+B
220 PRINT:FOR I=1 TO INT(A/5+0.5):PRINT "t";:NEXT I
230 FOR I=1 TO INT(B/5+0.5):PRINT "b";:NEXT I
240 PRINT:PRINT:STOP
1000 REM VIC20 SUBROUTINES
1100 W=20:D=23
1110 F=8:GOSUB 1200:RETURN
1200 PRINT CHR$(147)
1210 FOR LL=1 TO 8:PRINT:NEXT LL
1220 PRINT;
1230 RETURN
1300 R=INT(RND(1)*N+1):RETURN
1400 FOR Z=1 TO 1000*T:NEXT Z:RETURN
1500 GET G$:IF G$="" THEN 1500
1510 RETURN
1600 GET K$:RETURN
1700 PRINT CHR$(19)
1710 IF Y>0 THEN FOR LL=1 TO Y:PRINT CHR$(17);:NEXT LL
1720 IF X>0 THEN FOR LL=1 TO X:PRINT CHR$(29);:NEXT LL
1730 RETURN
1800 IF X>0 THEN FOR LL=1 TO X:PRINT CHR$(29);:NEXT LL
1810 RETURN
1900 PRINT CHR$(145);:RETURN
2000 PRINT CHR$(29);:RETURN
2100 INPUT K:RETURN
2200 INPUT K$:RETURN
2300 PRINT CHR$(147):RETURN
2400 POKE 36878,15:POKE 36876,Z+128
2410 FOR M=1 TO 50:NEXT M
2420 POKE 36876,0:RETURN
2500 R$=CHR$(R+64):RETURN
2600 P$=MID$(K$,P,1):RETURN
2700 GOSUB 2600:A=ASC(P$):RETURN
2800 PRINT CHR$(147):RETURN
2900 DIM V$(26):RETURN
3000 DIM W$(60):RETURN
3100 GG=ASC(G$):RETURN
