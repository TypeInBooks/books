100 M = 54272 
110 FOR Z = 54272 TO 54300 : POKE Z,0 : NEXT 
120 POKE M + 24, 143 
130 POKE M+ 19,255 
140 POKE M + 6,240: POKE M + 4,33 
145 POKE M+ 18,1 
150 FOR T = 1 TO 300 
160 N = 5728 
170 FQ = N + PEEK(M + 28)* 10 
180 HF = INT(FQ/256) : LF = FQ-HF*256 
190 POKE M,LF: POKE M+1,HF 
200 NEXT 
210 POKE M + 24,0 
