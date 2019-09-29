10 s=54272
20 for l=0 to 24:poke s+l,0:next
30 poke s+1,130
40 poke s+5,9
50 poke s+15,30
60 poke s+24,15
70 for l=1 to 12:poke s+4,21
80 for t=1 to 1000:next:poke s+4,20
90 for t=1 to 1000:next:next
