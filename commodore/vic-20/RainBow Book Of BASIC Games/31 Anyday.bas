100 REM ANYDAY
110 GOSUB 1100
120 PRINT "{space*5}any day"
130 LET T=2:GOSUB 1400:GOSUB 2800
140 PRINT:PRINT"what is today's date"
150 PRINT:PRINT"day{space*3}month{space*3}year"
160 PRINT:PRINT"1-31{space*2}1-12{space*4}19--"
170 LET X=0:LET Y=8:GOSUB 1700:GOSUB 2100:LET D1=K
180 LET X=6:GOSUB 1700:GOSUB 2100:LET M1=K
190 LET X=15:GOSUB 1700:GOSUB 2100:LET Y1=K
200 IF Y1<100 THEN LET Y1=1900+Y1
210 GOSUB 2800:PRINT:PRINT"date of interest"
220 PRINT:PRINT"day{space*3}month{space*3}year"
230 LET X=0:LET Y=7:GOSUB 1700:GOSUB 2100
240 LET D2=K:LET X=7:GOSUB 1700:GOSUB 2100:LET M2=K
250 LET X=15:GOSUB 1700:GOSUB 2100:LET Y2=K
260 IF Y2<100 THEN LET Y2=1900+Y2
270 GOSUB 2800:PRINT:PRINT
280 DIM D(12)
290 FOR Z=1 TO 12:READ D(Z):NEXT Z
300 DATA 0,31,59,90,120,151,181,212,243,273,304,334
310 LET Y3=Y1-1900:LET Y4=Y2-1900
320 LET T1=365*Y3+INT(Y3/4)+D(M1)+D1
330 LET T2=365*Y4+INT(Y4/4)+D(M2)+D2
340 IF Y3=4*INT(Y3/4) AND M1<3 THEN LET T1=T1-1
350 IF Y4=4*INT(Y4/4) AND M2<3 THEN LET T2=T2-1
360 PRINT:PRINT "time interval is "
370 PRINT:PRINT;ABS(T2-T1);" days"
380 LET T=ABS(T2-T1)
390 LET Y=INT(T/365)
400 LET T=T-365*Y
410 LET M=INT(T/30.5)
420 LET D=INT(T-30.5*M)
430 PRINT:PRINT "which is":PRINT
440 PRINT STR$(Y);" years ";M;" months"
450 PRINT "and ";D;" days":PRINT
460 PRINT:PRINT STR$(D2);"/";STR$(M2);"/";STR$(Y2);" ";
470 IF T1<T2 THEN PRINT "will be"
480 IF T1=T2 THEN PRINT "is"
490 IF T1>T2 THEN PRINT "was"
500 LET R=T2-7*INT(T2/7)+1
510 FOR I=1 TO R:READ D$:NEXT I
520 PRINT:PRINT "a ";D$
530 PRINT:STOP
540 DATA "sunday","monday","tuesday"
550 DATA "wednesday","thursday","friday","saturday"
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