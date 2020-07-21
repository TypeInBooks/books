1 PRINT "{clear}" : REM *** CLEAR SCREEN *** 
2 PRINT "*** music by jim vogel ***" 
3 PRINT "*** program design ***" 
4 PRINT "*** jim vogel and nevin scrimshaw ***" 
5 PRINT "**********************************" 
6 PRINT "please wait: setting up arrays" 
7 PRINT "**********************************" 
10 FOR S = 54272 TO 54296 : POKE S,0 : NEXT 
15 M = 54272 
20 DIM H(500,2),L(500,2),D(500,2) 
30 V(0) = 17 : V(1) = 17 : V(2) = 17 
40 REM *** LOAD ARRAY *** 
100 FOR K = 0 TO 2 
110 I = 0
120 READ N,DR 
130 IF DR = 0 THEN 200 
140 WF = V(K) : WX = WF-1 
150 HF% = N/256 : LF% = N-256*HF% 
160 IF DR = 1 THEN H(I,K) = HF% : L(I,K) = LF% : D(I,K) = WF : I = I+1: GOTO 120 
170 FOR J = 1 TO DR-1 : H(I,K) = HF% : L(I,K) = LF% : D(I,K) =WF : I = I+1: NEXT 
180 H(I,K) = HF% : L(I,K) = LF% : D(I,K) = WX 
190 I = I+1: GOTO 120 
200 NEXTK 
250 REM *** SOUND SETTINGS *** 
300 POKE M + 5,0 : POKE M + 6,255 
310 POKE M+ 12,0 : POKE M+ 13,255 
320 POKE M + 19,0 : POKE M + 20,255 
330 POKEM + 24,15 
399 REM *** FACING THE MUSIC *** 
400 P1 = 0: P2 = 0: P3 = 0
410 POKE M,L(P1,0) : POKE M+ 1,H(P1,0) 
420 POKE M + 7,L(P2,1) : POKE M + 8,H(P2,1) 
430 POKE M + 14,L(P3,2) : POKE M + 15,H(P3,2) 
440 POKE M + 4,D(P1,0) : POKE M+ 11,D(P2,1) : POKE M+ 18,D(P3,2) 
445 FOR T = 1 TO 3 : NEXT T 
450 P1 = P1 + 1 :P2 = P2+1 : P3 = P3+1 
455 IF D(P1,0) = 0 THEN 2000 
460 IF D(P2,1) = 0 THEN 2500 
465 IF D(P3,2) = 0 THEN 3000 
470 GOTO 410 
600 REM *** LESS DATA! *** 
610 DATA 0,1,1432,2,3406,2,3215,2,2864,2,3215,2,3406,2 
620 DATA 2145,12 
630 DATA 1432,2,3406,2,3215,2,2864,2,3215,2,3406,2 
640 DATA 4291,6,2145,6,0,0 
700 DATA 0,1,0,48,5728,2,6812,2,5103,2,6430,2,5728,2,6812,2 
710 DATA 8583,2,7647,2,6812,2,6430,2,5728,2,5103,2,0,0 
800 DATA 0,1,0,96,17167,40,11457,4,17167,4,15294,4,11457,4,15294,40,11457,4 
810 DATA 15294,4,13625,24,11457,24,12860,40,11457,4,9634,4,8583,44,11457,4 
820 DATA 12860,40,11457,4,8583,4,7647,48,0,0 
2000 P1 = 1 : GOTO 460 
2500 P2 = 49 : GOTO 465 
3000 P3 = 1 : P2 = 1 : GOTO 410 