10 for j=0 to 62:poke 832+j,7:next
20 poke 2040,13:poke 2041,13
30 v=53248
40 poke v+21,3
50 poke v+39,1:poke v+40,0
60 poke v,135:poke v+l,70
100 poke v+3,60
110 print "{clear}{white} sprite-sprite{space*3}sprite-data{space*3}int reg"
120 for j=0 to 255: poke v+2,j
130 print spc(8) peek(v+30) spc(11) peek(v+31);
140 print spc(8) peek(v+25) and 6:print"{up}";
150 poke v+25,6
160 next:goto 20