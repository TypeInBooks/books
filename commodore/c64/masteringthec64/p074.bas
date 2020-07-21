1 print"{clear}":poke 53281,0:poke 53280,0
10 poke 2040,13:poke 2041,13:poke 2042,13:poke 2043,13
20 v=53248:poke v+21,255:poke v+39,2:poke v+40,3:poke v+41,10:poke v+42,12
30 poke v,100:poke v+2,200:poke v+4,100:poke v+6,200
40 poke v+l,100:poke v+3,100:poke v+5,100:poke v+7,200
50 poke v+23,6:poke v+29,3
60 for r=0 to 200:next:rem rest
70 poke v+23,1:poke v+29,4
80 for r=0 to 200:next
90 goto 50