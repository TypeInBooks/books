10 poke 56,8192/256:clr
14 poke 53265,peek(53265) or 32
15 poke 53272,peek(53272) or 8
24 ce=16*0+3
25 for j=1024 to 2023:poke j,ce:next
29 for j=49152 to 49171:read x:poke j,x:next
30 sys 49152
80 for i=0 to 7:p2(7-i)=2^i:next
90 x=160:y=100
100 pe=peek(56320)
101 r=pe and 8
102 d=pe and 2
103 l=pe and 4
104 u=pe and 1
105 b=pe and 16
200 if b=0 then del=1-del
210 if b=0 and u*d*l*r=0 then mov=1
220 if b<>0 then mov=0
340 if l=0 then x=x-1:if x<0 then x=0
350 if r=0 then x=x+1:if x>319 then x=319
360 if u=0 then y=y-1:if y<0 then y=0
370 if d=0 then y=y+1:if y>199 then y=199
500 of=40*(y and 248)+(x and 504)+(y and 7)
510 screenchr=int(of/8)
520 bit=x and 7
530 ch=8192+of
540 pe=peek(ch)
550 poke ch,peek(ch) or p2(bit)
560 if del then poke ch,peek(ch) and not p2(bit)
570 if move then poke ch,pe:rem restore value if move
580 if move=0 then poke 1024+sc,ce
600 get x$
610 if x$="{f3}" then ce=((ce+1) and 15) or (ce and 240)
620 if x$="{f5}" then ce=(ce+16) and 255
700 goto 100
20000 data 162,32,138,133,252,169,0,133,251,145
20010 data 251,200,208,251,230,252,202,208,246,96