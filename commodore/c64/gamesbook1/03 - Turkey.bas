1 POKE 53281,0:POKE 53280,9
2 CO=54272:P=150:X=150:Y=190:V=53248:SC=0:LI=3:XD=INT(RND(1)*9-4):YD=-1
3 POKE V+21,3:POKE 2040,13:POKE 2041,14
4 FOR I=0 TO 126:READ Q: POKE 832+I,Q:NEXT
5 POKE V,P:POKE V+1,200:POKE V+2,X:POKEV+3,Y
7 PRINT "{clear}{white}super waiter!{space*2}{blue}score:"
8 FORI=55381TO55406:POKEI,5:POKEI-CO,86:NEXT:FORI=55381TO56156STEP40
9 POKEI,5:POKEI-CO,86:POKEI+25,5:POKEI+25-CO,86:NEXT
10 PRINT"{home}{right*21}{white}";S;"{space*5}";LI
20 PE=PEEK(197)
22 IF PE<>12ANDPE<>36THEN 50
26 IF PE= 12ANDP > 70THEN P=P-2
32 IF PE= 36ANDP <240THEN P=P+2
40 POKE V,P
50 Y1=Y:X1=X:M=0
60 Y1=Y1+YD:X1=X1+XD
70 IF X1<70 OR X1>240 THEN XD=-XD:S=S+1:M=1
80 IF Y1>220THENX=P:Y=200:XD=INT(RND(1)*9-4):YD=-1:LI=LI-1:GOTO 110
90 IF Y1<70 THEN YD=1:XD=INT(RND(1)*9-4):S=S+1:M=1
95 IF Y1<210 AND PEEK(V+30)<>0 THEN YD=-1:XD=INT(RND(1)*9-4):S=S+2
100 IF M=0THENX=X1:Y=Y1:POKEV+2,X:POKEV+3,Y
110 IF LI>0 THEN GOTO 10
120 PRINT "{home}{down*8}{right*6}the turkey is inedible!!"
130 PRINT "{down*2}{green}{right*6}{purple}{space*3}want to try again?"
140 GET A$:IF A$="y" THEN RUN
150 IFA$<>"n"THEN140
160 END
9000 DATA0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,255,240,7,255,240,0,62,0,0
9010 DATA64,128,0,92,128,0,92,128,0,73,0,0,62,0,0,30,0,0,30,0,0,18,0,0,17,0,0,17
9020 DATA 0,0,49,128
9030 DATA0,0,,0,0,0,0,0,0,0,0,0,192,0,7,240,0,15,240,0,31,252,0,63,254,0,127,254
9040 DATA0,255,127,1,248,63,9,224,14,7,128,14,15,240,15,3,14,30,6,1,248,0,0,112
9050 DATA 0,0,0,0,0,0,0,0,0,0,0,0,0
