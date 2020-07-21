10 a=56576:v=53248
20 poke a,peek(a) and 254
30 poke v+24,8
40 poke v+17,peek(v+17) or 32
50 for x =0 to 1000:poke 16384+x,1:next
60 for x=0 to 8000:poke 24576+x,0: next
62 c=160:d=100
63 for s=0 to 1.999 step 0.01:x=s*c:y=100
64 x=int(x+.5):y=int(y+.5):gosub1000
65 next
66 d=100
67 for s=0 to 2 step 0.01:x=30:y=s*d
68 x=int(x+.5):y=int(y+.5):gosub1000
69 next
70 c=160:d=100
80 for s=3 to 12 step 0.01:x=s*c/5-65:y=sin(s)*d/1.3+87
90 x=int(x+.5):y=int(y+.5):gosub1000
100 next
200 stop
1000 y1=int(y/8):y2=y-y1*8
1010 x1=int(x/8):x2=x-x1*8
1020 ch=(y1*320)+(x1*8)+y2:bi=2^(7-x2)
1030 poke 24576+ch,peek(24576+ch) or bi
1040 return