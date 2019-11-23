10 print"{clear}guess my number (1-99)":print
20 x=int(rnd(1)*99)+1:n=0
30 input"your guess";g:n=n+1
40 if g<x then print"too small":goto 30
50 if g>x then print"too large":goto 30
60 print"got it! in "n"tries"