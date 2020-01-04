10 open 1
20 for j=8*4096 to 10*4096-1
30 get#1,p$
40 poke j,asc(p$+chr$(0))
50 next
60 close 1