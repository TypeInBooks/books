***requires 6.20***

10 prnt=49305:switch=49152:lngth=49153:decpts=49154:chr=49155:ldgchr=49250
15 forj=-10 to 100 step 10:print
20 poke switch,0:poke lngth,4:poke chr,42:poke ldgchr,42:sys (pr) j
30 poke switch,1:poke lngth,7:poke chr,32:poke ldgchr,32
31 poke decpts,4: sys (pr) 1/(1+j)
40 poke ldgchr,asc("$"):poke decpts,2: sys (pr) 100+j
50 next
100 rem sys 49305 (400.00) etc.