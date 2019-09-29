10 s=54272
20 for l=0 to 24:poke s+l,0:next
30 poke s+1,100
40 poke s+5,219
50 poke s+15,28
60 poke s+24,15
70 poke s+4,19
80 for t=1 to 5000:next
90 poke s+4,18
100 for t=1 to 1000:next:poke s+24,0
