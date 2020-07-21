5 print"{clear}"
10 v=53248:poke v+21,255:poke v+28,255:poke v+33,0:poke v+32,0
20 for a=0 to 62:readb:poke 832+a,b:next:for a=0to7:poke2040+a,13:next
22 poke v+37,5:poke v+38,2:for a=3 to 10:poke v+39+a-2,a:next
25 poke v+1,50:poke v+5,100:poke v+9,150:poke v+13,200
30 for x=0 to 255:poke v,x:poke v+4,x:poke v+8,x:poke v+12,x
40 poke v+2,50:poke v+6,100:poke v+10,150:poke v+14,200
50 poke v+3,x:poke v+7,x:poke v+11,x:poke v+15,x
60 next
70 goto 22
100 data 0,0,0,0,0,0,20,0,80,5,69,64,5,69,64,1,69,0,0,68,0,3,87,0,15,255
110 data 192,59,251,176,255,255,252,254,239,188,255,255,252,239,251,236,255,255
120 data 252,63,190,240,63,255,240,15,187,192,3,255,0,0,204,0,0,0,0