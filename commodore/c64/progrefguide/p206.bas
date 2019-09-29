10 s=54272
20 for l=0 to 24:poke s+l,0:next
30 poke s+0,240:poke s+1,33
40 poke s+5,8
50 poke s+22,104
60 poke s+23,1
70 poke s+24,79
80 for n=1 to 15
90 poke s+4,129
100 for t=1 to 250:next:poke s+4,128
110 for t=1 to 30:next:next
120 poke s+24,0
