10 print chr$(147)
20 x=1154:y=0:xc=55426
30 for i=1 to 20:for j=1 to 25
40 poke x+j+y*40,43:poke xc+j+y*40,1
50 next j
60 y=y+1
70 next i