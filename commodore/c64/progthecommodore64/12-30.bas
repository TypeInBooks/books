10 poke 55,0:poke 56,48:clr
20 poke 53272,29
30 for j=12288 to 12288+31:read x:poke j,x:next
40 data 0,0,0,0,0,0,0,0
50 data 1,3,7,31,31,63,63,127
60 data 255,255,255,255,255,255,255,255
70 data 128,128,224,240,240,254,255,255
80 for j=1 to 5:m1$=m1$+"@@@ac@@@":next
85 for j=1 to 5:m2$=m2$+"@@abbc@@":next
90 for j=1 to 5:m3$=m3$+"@abbbbc@":next
95 for j=1 to 5:m3$=m3$+"abbbbbbc":next
100 poke 53280,14:poke 53281,14
110 for j=1 to 40:sp$=sp$+"@":bl$=bl$+"b":next
120 print "{clear}'":for j=1 to 6:print sp$;:next
130 print "{blue}" m1$ m2$ m3$ m4$;
140 for j=1 to 5:print bl$;:next
150 for j=1 to 8:print "{red}" b1$;:next
200 data 1,255,224, 0,7,240, 0,3,96, 192,54,195,227,252,251
210 data 255,255,255, 111,255,251, 0,127,3, 0,14,0
220 for j=14336 to 14362:read x:poke j,x:next
230 for j=14363 to 14400:poke j,0:next
240 poke 53269,3
250 poke 2040,224:poke 2041,224
260 poke 53277,1:poke 53271,1
270 poke 53287,0:poke 53288,11
280 poke 53275,2
300 x0=0
310 poke 53249,50+150*rnd(1)
320 poke 53251,100+30*rnd(1)
330 x0=x0+2:if x0>255 then poke 53264,peek(53264) or 1
340 if x0<256 then poke 53264,peek(53264) and 254
350 if x0>360 goto 300
360 poke 53250,x0/3
370 poke 53248,x0 and 255:goto 330