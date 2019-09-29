5 base=2*4096:poke 53272,peek(53272) or 8:rem put bit map at 8192
10 poke 53265,peek(53265) or 32:rem enter bit map mode
20 for i=base to base+7999:poke i,0:next:rem clear bit
30 for i=1024 to 2023:poke i,3:next:rem set color to cyan and black
50 for x=0 to 319 step .5:rem wave will fill the screen
60 y=int(90+80*sin(x/10))
70 ch=int(x/8)
80 ro=int(y/8)
85 ln=y and 7
90 by=base+ro*320+8*ch+ln
100 bi=7-(x and 7)
110 poke by,peek(by) or (2^bi)
120 next x
125 poke 1024,16
130 goto 130
