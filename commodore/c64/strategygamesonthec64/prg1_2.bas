10 poke 160,0:poke 161,0:poke 162,0
20 print chr$(147):print
30 t=256*256*peek(160)+256*peek(161)+peek(162)
40 print tab(8) chr$(145);"elapsed time=";int(t/60);" seconds"
50 goto 30