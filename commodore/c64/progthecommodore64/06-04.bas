10 n$="forx=1to5:print x:next x"+chr$(0)
20 for j=1 to len(n$)
30 poke 511+j,asc(mid$(n$,j)): next
40 poke 781,255: poke 782,1
50 sys 42118