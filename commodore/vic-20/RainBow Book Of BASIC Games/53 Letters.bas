100 REM LETTERS
110 GOSUB 1100
120 LET X=0:LET Y=1
130 GOSUB 1700
140 PRINT"{space*2}1 2 3 4 5"
150 FOR N=1 TO 5
160 PRINT
170 PRINT;STR$(N)
180 NEXT N
190 LET N=26
200 FOR T=13 TO 1 STEP -1
210 GOSUB 1300
220 GOSUB 2500:LET K$=R$
230 LET X=0:LET Y=12:GOSUB 1700
240 PRINT"my choice is ";K$;"{space*5}"
250 GOSUB 410
260 LET X=0:LET Y=12:GOSUB 1700
270 PRINT"your choice is? ";
280 GOSUB 2200
290 GOSUB 410
300 NEXT T
310 FOR C=1 TO 5
320 GOSUB 480
330 PRINT"line ";C;" score?"
340 GOSUB 2100
350 PRINT"column ";C;" score?"
360 GOSUB 2200
370 LET T=T+K+VAL(K$)
380 NEXT C
390 PRINT"your score is ";T
400 STOP
410 LET L$=K$:PRINT"line{space*3}";
420 GOSUB 2100
430 LET Y=1+K*2
440 PRINT "column ";:GOSUB 2100
450 LET X=K*2
460 GOSUB 1700
470 PRINT L$;
480 LET X=0:LET Y=12:GOSUB 1700
490 FOR N=1 TO 3
500 PRINT"{space*19}"
510 NEXT N
520 RETURN
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