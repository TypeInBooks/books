10 s=54272
20 for l=0 to 24:poke s+l,0:next
30 poke s+14,5
40 poke s+18,16
50 poke s+3,1
60 poke s+24,143
70 poke s+6,240
80 poke s+4,65
90 fr=5389
100 for t=1 to 200
110 fq=fr+peek(s+27)*3.5
120 hf=int(fq/256):lf=fq-hf*256
130 poke s+0,lf:poke s+1,hf
140 next
150 poke s+24,0
