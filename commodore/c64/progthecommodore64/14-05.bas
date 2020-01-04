2 rem line 20 controls new start; example is 1024
10 open 1:rem loads header (or sys 63276)
20 s=1024:rem start address is screen
30 l=peek(831)-peek(829)+256*(peek(832)-peek(830))
40 e=s+l:rem compute new end address from length
50 poke 830,s/256:poke 829,s-int(s/256)*256:rem s in header
60 poke 832,e/256:poke 831,e-int(e/256)*256:rem e in header
70 poke 781,3:rem for forced load
80 sys 62820:rem load rest of program