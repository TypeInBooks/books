5 REM *** HI LOW PULSE *** 
10 FOR M = 54272 TO 54296 : POKE M,0 : NEXT 
20 PRINT CHR$(147) 
30 PRINT "enter number then hit return" 
40 PRINT "enter (-1) to end" 
50 INPUT "high pw#(0-15)";A 
60 IF A = -1 THEN END 
70 INPUT "low pw # (0-255)";B 
80 POKE 54274,B : POKE 54275,A 
90 POKE 54296,15 
100 POKE 54273,28 : POKE 54272,49 
110 POKE 54278,240 
120 POKE 54276,65 
130 FOR T = 1 TO 1000 : NEXT 
140 POKE 54276,64 
150 POKE 54296,0 
160 GOTO 20 