10 poke 56,8192/256:poke 55,0:clr
11 print "background?";:gosub 50000:ba=g
12 print "      aux1?";:gosub 50000:a1=g
13 print "      aux2?";:gosub 50000:a2=g
14 print " character?";:gosub 50000:cc=g
15 poke 53265,peek(53265) or 32
16 poke 53272,peek(53272) or 8
17 poke 53270,peek(53270) or 16
20 poke 53281,ba
26 for j=49152 to 49205:read x:poke j,x:next
28 ce=16*a1+a2:poke 49188,cc:poke 49192,ce
30 sys 49152
80 for j=0 to 7:p2(j)=2^j:next
90 b=3:x=160:y=100
100 get g$:g=asc(g$+chr$(0))
110 if g>48 and g<53 then b=g-49:goto 500
200 if g$=" " then move=1-move
210 if g$="{right}" then x=x+2:if x>318 then x=318
220 if g$="{left}" then x=x-2:if x<0 then x=0
230 if g$="{up}" then y=y-1:if y<0 then y=0
240 if g$="{down}" then y=y+1:if y>199 then y=199
250 if g$="{f1}" then ba=(ba+1) and 15:poke53281,ba
260 if g$="{f3}" then a1=(a1+1) and 15:ce=(ce+16) and 255
270 if g$="{f5}" then a2=(a2+1) and 15:ce=(ce+1) and 255
280 if g$="{f7}" then cc=(cc+1) and 15
500 screenchr=40*int(y/8)+int(x/8)
510 row=y and 7:bit=6-(x and 7)
520 ch=8192+8*scr+row:pe=peek(ch)
530 poke ch,(pe and (255-3*p2(bit))) and not b*2^bit 
540 poke ch,(pe and (255-3*p2(bit))) or b*2^bit
550 if move=1 then poke ch,pe
590 if move=0 then poke 1024+sc,ce:poke 55296+sc,cc
600 goto 100
20000 data 162,32,138,133,252,169,0,133,251
20001 data 145,251,200,208,251,230,252,202,208
20005 data 246,134,252,134,254,169,216,133,253
20006 data 169,4,133,255,162,4,160,0,169,3
20010 data 145,252,169,53,145,254,200,208
20011 data 245,230,253,230,255,202,208,238,96
50000 get g$:if g$="" goto 50000
50010 print g$ "{reverse on}{space*8}"
50020 g=peek(646):print "{white}":return