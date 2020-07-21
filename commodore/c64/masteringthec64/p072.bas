10 for a=0 to 62
20 read b:poke 832+a,b:rem put sprite data into memory
30 next
40 poke 2042,13:print"{clear}":v=53248:poke v+21,4:poke v+41,2:poke 53281,0:poke53280,0
50 poke v+5,200:for x=0 to 255:poke v+4,x:next
60 for y=200 to 0 step-1:poke v+5,y:next
70 poke v+4,0:goto 50
1000 data 3,0,192,3,129,192,3,231,128,1,231,128,0,24,0,7,219,0,15,219,224
1010 data 15,255,240,31,255,240,57,255,156,63,156,252,63,255,252,21,243,248,15
1020 data 255,240,15,159,208,3,255,192,3,221,192,1,255,128,0,255,0,0,126,0,0,24,0