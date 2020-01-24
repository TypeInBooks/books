5 print chr$ (147);"......"
10 rem this program will make it easier to enter machine code programs
20 read a
30 if a=-1 then goto 70
40 poke 49152+x,a
50 x=x+1
60 goto 20
70 print "before...-location 1024";peek(1024)
80 sys 49152
90 print "after... -location 1024";peek(1024)
100 end
1000 data 169,24:rem lda#24
1010 data 141,0,4:rem sta 1024
1020 data 96:rem rts
9999 data -1