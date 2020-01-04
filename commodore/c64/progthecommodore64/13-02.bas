2 data "freq control lo  {reverse on}voice 1",frecontrol hi
3 data pulse width bits 7-0,pulse width xxxx 11-8
4 data "n OL{cm g}N{cm g}NM tst ring syn gate"
5 data attack  decay, sustain release
6 data "freq control lo  {reverse on}voice 2",frecontrol hi
7 data pulse width bits 7-0,pulse width xxxx 11-8
8 data "n OL{cm g}N{cm g}NM tst ring syn gate"
9 data attack  decay, sustain release
10 data "freq control lo  {reverse on}voice{sh space}3",freq control hi
11 data pulse width bits 7-0,pulse width xxxx 11-8
12 data "n OL{cm g}N{cm g}NM tst ring syn gate"
13 data attack  decay, sustain release
16 data "xxxxx fc2-fc0  {reverse on}filter",filter bits fc10-fc3
18 data resonance fx f3 f2 fl, v3off hp bp lp vol3-vol0
20 dim rv(24)
25 for x=0 to 23:poke 54272+x,0:next
30 rv(1)=32:rv(4)=33:rv(6)=136:rv(24)=15
40 print "{clear}{white}";:for y=0 to 24:for x=0 to 7
50 print chr$(49+((rv(y) and (2^(7-x)))=0));
60 next:poke 54272+y,rv(y)
70 read m$:print y; m$;:if y<24 then print
80 next y
100 x=0:y=0:ol=55296:goto 1100
1000 get x$:if x$="" then 1000
1010 if x$=" " then gosub 2000:goto 1000
1020 if x$="{right}" then x=x+1:if x=8 then x=0
1030 if x$="{left}" then x=x-1:if x=-l then x=7
1040 if x$="{down}" then y=y+1:if y=25 then y=0
1050 if x$="{up}" then y=y-1:if y=-l then y=24
1100 nw=55296+x+y*40:poke ol,1:poke nw,4:ol=nw:goto 1000
2000 sp=1024+x+y*40:if peek(sp)=48 goto 2020
2010 poke sp,asc("0"):rv(y)=rv(y) and (not 2^(7-x)):goto 2030
2020 poke sp,asc("1"):rv(y)=rv(y) or 2^(7-x)
2030 poke 54272+y,rv(y):return