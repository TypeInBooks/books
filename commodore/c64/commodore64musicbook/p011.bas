5 REM *** FOUR ENVELOPES *** 
10 FOR M = 54272 TO 54296 : POKE M,0 : NEXT 
20 AD(0) = 144 : AD(1) = 8 : AD(2) = 65 : AD(3) = 0
30 SR(0) = 243 : SR(1) = 9 : SR(2) = 0 : SR(3) = 128 
40 POKE 54296,15 
50 POKE 54277, AD(I) : POKE 54278,SR(I) 
60 READH,L,DR 
70 IFH<0THEN900 
80 POKE 54273,H : POKE 54272,L 
90 POKE 54276,17 
100 FOR T = 1 TO DR : NEXT 
110 POKE 54276,16 
120 GOTO 50 
200 DATA 7,12,300,7,233,300,8,225,300,9,247,250,11,48,250,12,143,250, 14,24,200 
210 DATA 15,210,200,17,195,200,19,239,150,22,96,150,25,30,150,28,49,100 
220 DATA 31,165,100,35,134,100,39,223,50,44,193,50,50,60,50,56,99,1750 
230 DATA -1,-1,-1 
900 RESTORE : I = I + 1 : IF I = 4 THEN POKE 54296,0 : END 
910 GOTO 50 