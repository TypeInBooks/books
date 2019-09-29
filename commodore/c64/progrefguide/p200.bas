5 s=54272
10 for l=s to s+24:poke l,0:next
15 poke s+22,128:poke s+21,0:poke s+23,1
20 poke s+5,9:poke s+6,0
30 poke s+24,79
40 read hf,lf,dr
50 if hf<0 then end
60 poke s+1,hf:poke s,lf
70 poke s+4,33
80 for t=1 to dr:next
90 poke s+4,32:for t=1 to 50:next
100 goto 40
110 data 25,177,250,28,214,250
120 data 25,177,250,25,177,250
130 data 25,177,125,28,214,125
140 data 32,94,750,25,177,250
150 data 28,214,250,19,63,250
160 data 19,63,250,19,63,250
170 data 21,154,63,24,63,63
180 data 25,177,250,24,63,125
190 data 19,63,250,-1,-1,-1
