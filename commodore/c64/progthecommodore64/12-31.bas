5 input "{clear}{down*3} which block of 64 bytes (eg 13)";b:sp=64*b
10 for j=0 to 3:poke 2040+j,b:next
15 v=53248:ss=1024
20 poke v+21,15
25 poke v+0,240:poke v+2,240:poke v+4,250:poke v+6,250
30 poke v+1,90:poke v+3,140:poke v+5,190:poke v+7,220
35 for j=39 to 42:poke v+j,6:next
40 poke v+37,0:poke v+38,13
45 poke v+32,1:poke v+33,1
50 poke v+29,3:poke v+23,3
55 poke v+28,5
60 for j=0 to 7:p(j)=2^(7-j):next
65 gosub 500
100 print "{clear}{down*2}{black}":gosub 3000
130 xc=0:yc=0:c=160:poke ss+c,peek(ss+c) or 128
140 gosub 20000
200 get x$:if x$="" then 200
210 if x$=" " then gosub 2000:goto 400
220 if x$="c" then gosub 1000:goto 100
230 if x$="{f1}" then cb=0:gosub 21000:goto 400
240 if x$="{f3}" then cb=1:gosub 21000:goto 400
250 if x$="{f5}" then cb=2:gosub 21000:goto 400
260 if x$="{f7}" then cb=3:gosub 21000:goto 400
270 if x$="{up}" and yc>0 then yc=yc-l:goto 400
280 if x$="{down}" and yc<20 then yc=yc+1:goto 400
290 if x$="{right}" and xc<23 then xc=xc+1:goto 400
300 if x$="{left}" and x>0 then xc=xc-1:goto 400
310 if x$="{f2}" then gosub 4000:goto 200
320 if x$="{f4}" then gosub 5000:goto 200
330 if x$="{f6}" then gosub 6000:goto 200
340 if x$="{f8}" then gosub 7000:goto 200
350 goto 200
400 poke ss+c,peek(ss+c) and 127:c=xc+40*yc+160
410 poke ss+c,peek(ss+c) or 128:goto 200
500 data "black ","white ","red   ","cyan  ","purple"
505 data "green ","blue  ","yellow","orange","brown "
510 data "lt red","d gray","m gray","lt grn","l blue","l gray"
520 dim co$(15):for j=0 to 15:read co$(j):next:return
1000 for j=sp to sp+62:poke j,0:next:return
2000 pt=sp+xc/8+yc*3:by=peek(pt)
2010 bp=xc-int(xc/8)*8:ms=p(bp)
2020 if (by and p(bp))=0 then poke pt,by+ms
2030 if (by and p(bp))>0 then poke pt,by-ms
2040 poke ss+c,254-peek(ss+c):return
3000 for yc=0 to 20:for xb=0 to 2
3010 pt=sp+xb+yc*3:by=peek(pt)
3020 for j=0 to 7
3030 if (by and p(j))>0 then print "Q";:goto 3050
3040 print "-";
3050 next:next:if yc<>20 then print:next
3060 return
4000 t=(peek(v+32)+1) and 15
4010 poke v+32,t:poke v+33,t:goto 20000
5000 poke v+37,(peek(v+37)+1) and 15:goto 20000
6000 t=(peek(v+39)+1) and 15
6010 for j=v+39 to v+42:poke j,t:next:goto 20000
7000 poke v+38,(peek(v+38)+1) and 15:goto 20000
20000 print "{home}{black}";
20010 print "background = "co$(peek(v+32) and 15)"  f2   f1=00"
20020 print "sprite mc0 = "co$(peek(v+37) and 15)"  f4   f3=01"
20030 print "spr color  = "co$(peek(v+39) and 15)"  f6   f5=10"
20040 print "sprite mc1 = "co$(peek(v+38) and 15)"  f8   f7=11" 
20050 return
21000 cp=(c+ss) and 2046:if cb>1 then poke cp,81:goto 21030
21010 poke cp,45
21030 cp=cp+1:if (cb and 1)=1 then poke cp,81:goto 21050
21040 poke cp,45
21050 pt=sp+xc/8+yc*3:by=peek(pt):mp=7-xc and 6:mk=2^mp*3
21060 by=(by and not mk)+cb*2^mp:poke pt,by:return