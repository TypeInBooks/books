10 a=56576:v=53248
20 poke a,peek(a) and 254
30 poke v+24,8
40 poke v+17,peek(v+17) or 32
58 for x=0 to 1000:poke 16384+x,1:next
60 for x=0 to 8000:poke 24576+x,0:next
70 d=100
80 for s=0 to 3 step 0.01:x=160:y=s*d
90 x=int(x+.5):y=int(y+.5):gosub 1000
100 next
1000 y1=int(y/8):y2=y-y1*8
1010 x1=int(x/8):x2=x-x1*8
1020 ch=(y1*320)+(x1*8)+y2:bi=2^(7-x2)
1030 poke 24576+ch,peek(24576) or bi
1040 return