5 REM *** POTS AND PANS *** 
10 FOR M = 54272 TO 54286 : POKE M,0 : NEXT 
20 POKE 54296,15 
30 POKE 54277,7 : POKE 54278,0 
40 READH,L,DR 
50 IF H<0 THEN 900 
60 POKE 54287,H : POKE 54273,L 
70 POKE 54276,21 
80 FOR T = 1 TO DR : NEXT 
90 POKE 54276,20 
95 FOR B = 1 TO 34 : NEXT 
100 GOTO 30 
200 DATA 18,209,75,21,31,75,23,181,150,28,49,150,28,49,225,31,165,75 
210 DATA 28,49,150,23,181,150,18,209,225,21,31,75,23,181,150,23,181,150 
220 DATA 21,31,150,18,209,150,21,31,450 
250 DATA -1,-1,-1 
900 RESTORE : I = 1+ 1 : IF I = 2 THEN POKE 54296,0 : END 
910 GOTO 30 