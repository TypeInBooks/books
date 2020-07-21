100 PRINT "{clear}" : REM *** CLEAR SCREEN *** 
110 PRINT "***donald's chromatic chord organ***" 
120 PRINT "***by donald kahn & jim vogel***" 
125 PRINT "***********************************" 
135 PRINT "***press top row keys for voice i***" 
145 PRINT "***press 2nd row keys for voice ii***" 
155 PRINT "***press 3rd row keys for voice iii***" 
160 PRINT "***********************************" 
165 PRINT "press f1 to turn off voice i" 
170 PRINT 
175 PRINT "press f3 to turn off voice ii" 
180 PRINT 
185 PRINT "press f5 to turn off voice iii" 
190 PRINT 
195 PRINT "press f7 to turn off all voices" 
200 PRINT 
205 PRINT "press f2 for triangle waveform" 
210 PRINT 
220 PRINT "press f4 for sawtooth waveform" 
230 PRINT 
240 PRINT "press f6 for lower octave" 
250 PRINT 
260 PRINT "press f8 for higher octave" 
270 PRINT 
280 PRINT "press space bar to end" 
400 FOR W = 54272 TO 54296 : POKE W,0 : NEXT 
410 Z = 54272 
420 P = 0
430 DIM A(12),B(12),C(12),D(12,3) 
440 FOR N = 0 TO 12 : READ D(N,0) : READ D(N,1) : NEXT 
450 FOR N = 0 TO 12 : READ D(N,2) : READ D(N,3) : NEXT 
460 FOR N = 0 TO 12 : READ A(N) : NEXT 
470 FOR N = 0 TO 12 : READ B(N) : NEXT 
480 FOR N = 0 TO 12 : READ C(N) : NEXT 
490 POKE Z + 24, 15 
500 POKE Z + 5,0: POKE Z + 6,240 
510 POKE Z+ 12,0: POKE Z+ 13,240 
520 POKE Z + 19,0 : POKE Z + 20,240 
530 POKEZ + 4,17 : POKE Z+ 11,17 : POKE Z+ 18,17 
540 GET M$ : IF M$ = "" THEN 540 
550 M = ASC(M$) 
560 IF M = 32 THEN 900 
570 IF M = 136 THEN POKEZ+1,0:POKEZ,0:POKEZ+8,0:POKEZ+7,0:POKEZ+15,0:POKEZ+14,0 
580 IF M = 136 THEN GOTO 540 
600 IF M = 139 THEN P = 0: GOTO 540 
610 IF M = 140 THEN P = 2 : GOTO 540 
620 IF M = 133 THEN POKE Z+ 1,0 : POKE Z,0 : GOTO 540 
630 IF M = 134 THEN POKE Z + 8,0 : POKE Z + 7,0 : GOTO 540 
640 IF M = 135 THEN POKE Z+ 15,0 : POKE Z+14,0 : GOTO 540 
650 IF M = 138 THEN POKE Z+4,33 : POKE Z+ 11,33 : POKE Z+ 18,33 : GOTO 540 
660 IF M = 137 THEN POKE Z+4,17 : POKE Z+ 11,17 : POKE Z+ 18,17 : GOTO 540 
670 I = 0
680 IF M = A(I) THEN POKE Z + 1 ,D(I,P) : POKE Z,D(I,P + 1) : GOTO 540 
690 IF M = B(I) THEN POKE Z + 8,D(I,P) : POKE Z + 7,D(I,P + 1) : GOTO 540 
700 IF M = C(I) THEN POKE Z + 15,D(I,P) : POKE Z + 14,D(I,P + 1) : GOTO 540 
710 I = I + 1 
720 IF I < = 12 THEN 680 
730 GOTO 540 
900 FOR L = 54272 TO 54296 : POKE L,0 : NEXT 
1000 DATA 16,195,17,195,18,209,19,239,21,31,22,96,23,181,25,30,26,156,28,49 
1010 DATA 29,223,31,165,33,135 
1020 DATA 33,135,35,134,37,162,39,223,42,62,44,193,47,107,50,60,53,57,56,99 
1030 DATA 59,190,63,75,67,15 
1040 DATA 95,49,50,51,52,53,54,55,56,57,48,43,45 
1050 DATA 81,87,69,82,84,89,85,73,79,80,64,42,94 
1060 DATA 65,83,68,70,71,72,74,75,76,58,59,61,13 