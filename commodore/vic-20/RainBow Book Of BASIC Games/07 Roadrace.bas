100 REM ROADRACE
110 GOSUB 1100
120 LET X=4:LET Y=D/2:GOSUB 1700:PRINT "roadrace"
130 LET T=2:GOSUB 1400:GOSUB 2800
140 LET A=8:LET B=10:LET C=0:LET G=0:LET F=0
150 LET X1=8:LET X2=8:LET X3=8:LET X4=8
160 LET N=10:GOSUB 1300:IF R<4 AND A>1 THEN LET A=A-1
170 IF R>6 AND A<13 THEN LET A=A+1
180 LET X=B:LET Y=D-5:GOSUB 1700:PRINT" ";
190 GOSUB 1600:IF K$="z" AND B>2 THEN LET B=B-1
200 IF K$="x" AND B<18 THEN LET B=B+1
210 LET X=B:LET Y=D-4:GOSUB 1700:PRINT "o";
220 LET X=A:LET Y=D-1:GOSUB 1700:PRINT "*{space*4}*";
230 PRINT
240 LET X1=X2:LET X2=X3:LET X3=X4:LET X4=A:IF B>A AND B<A+5 THEN GOTO 260
250 LET Z=50:GOSUB 2400:LET C=C+1
260 LET G=G+1:LET T=.4:GOSUB 1400:IF C<10 THEN GOTO 160
270 LET T=2:GOSUB 1400:GOSUB 2800
280 PRINT:PRINT:PRINT " you completed ";STR$(G)
290 PRINT:PRINT " stages of the race"
300 PRINT:PRINT
310 IF G<40 THEN PRINT " you need lessons !":GOTO 340
320 IF G<100 THEN PRINT "{space*2}not bad for":PRINT:PRINT "{space*2}an amateur!":GOTO 340
330 PRINT "look out fittipaldi!"
340 PRINT:PRINT:PRINT:STOP
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
