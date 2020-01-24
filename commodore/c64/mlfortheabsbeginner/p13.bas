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
1000 data 169,8
1010 data 141,0,4
1020 data 169,5
1030 data 141,1,4
1040 data 169,12
1050 data 141,2,4
1060 data 141,3,4
1070 data 169,15
1080 data 141,4,4
1090 data 96
9999 data -1