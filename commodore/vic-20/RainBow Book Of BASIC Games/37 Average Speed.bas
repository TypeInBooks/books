100 REM SPEED
110 DIM T(2)
120 GOSUB 1100
130 LET X=3:LET Y=D/2:GOSUB 1700:PRINT "average speed"
140 LET T=3:GOSUB 1400:GOSUB 2800
150 LET X=0:LET Y=3:GOSUB 1700
160 PRINT"starting time"
170 PRINT:PRINT "hours : ";:GOSUB 2100:LET T(1)=60*K
180 PRINT:PRINT "minutes : ";:GOSUB 2100:LET T(1)=T(1)+K
190 PRINT:PRINT "arrival time"
200 PRINT:PRINT "hours : ";:GOSUB 2100:LET T(2)=60*K
210 PRINT:PRINT "minutes : ";:GOSUB 2100:LET T(2)=T(2)+K
220 IF T(2)<T(1) THEN LET T(2)=T(2)+720
230 LET U=T(2)-T(1)
240 LET H=INT(U/60):LET M=U-60*H
250 GOSUB 2800:LET X=0:LET Y=2:GOSUB 1700
260 PRINT "time travelled = ":PRINT:PRINT ;H;" hours{space*2}";M;" minutes"
270 PRINT:PRINT:PRINT "distance travelled"
280 PRINT:PRINT "miles : ";:GOSUB 2100
290 LET S=INT(60*K/U+0.5)
300 PRINT:PRINT "average speed = ":PRINT:PRINT S;" mph "
310 PRINT:STOP
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