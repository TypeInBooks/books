10 rem ** black hole **
20 print"{clear}":poke 53280,6:poke 53281,0:g=1024:h=55296:v=53248:s=54272
30 poke 52,48:poke 56,48
40 for j=0 to 38:read x:poke 12288+j,x:next
50 for j=0 to 23:poke 12338+j,0:next
60 poke 2040,192:poke v+28,1:poke v+37,10:poke v+0,13:poke v+39,0
70 gosub 1500
80 poke s+3,8:poke s+14,164:poke s+18,32:poke s+24,143
90 fr=10000:poke s+5,133:poke s+6,240
100 print"{clear}{white}"
110 input"level (1-10)";l$
120 l=val(l$)
130 if l<1 or l>10 then 100
140 x=rnd(-ti):n=1:l=(10-l)/2
150 def fnr(x)=int(rnd(1)*(x+1))
160 print"{clear}{yellow}":poke h+38,7:poke h+39,7
170 poke 53280,0:poke 53281,6
180 for j=1 to 25
190 printspc(fnr(60));"Q";
200 next
210 r=fnr(24):c=fnr(39)
220 rc=fnr(24):cc=fnr(39)
230 if abs(r-rc)<13 or abs(c-cc)<21 then 220
240 poke v+21,1
250 gosub 1050
260 ti$="000000"
270 poke g+38,asc(mid$(ti$,5,1))
280 poke g+39,asc(right$(ti$,1))
290 if val(right$(ti$,3))=100 then 690
300 gosub 900
310 poke v+37,0:poke v+38,13
320 for k=0 to 5*l:next
330 gosub 900
340 poke v+37,10:poke v+38,0
350 for k=0 to 150:next
360 get a$
370 if a$=";" then rc=rc-n
380 if a$="/" then rc=rc+n
390 if a$="z" then cc=cc-n
400 if a$="x" then cc=cc+n
410 gosub 1000
420 ra=abs(r-rc):ca=abs(c-cc)
430 if ra<2 and ca<2 then t$=right$(ti$,2):goto 520
440 if ra>12 or ca>20+l then n=1:goto 270
450 n=3
460 if ra<6 then rc=rc+sgn(r-rc)
470 if ra<13 then rc=rc+sgn(r-rc)
480 if ca<11 then cc=cc+sgn(c-cc)
490 if ca<21+l then cc=cc+sgn(c-cc)
500 gosub 1000
510 goto 270
520 print"{clear}":poke 53281,0:gosub 1500
530 poke s+24,15:poke s+6,248:poke s+4,129
540 for fq=10 to 20000 step 100
550 hf=int(fq/256):lf=fq-hf*256
560 poke s,lf:poke s+1,hf
570 next
580 poke v+21,0:gosub 1500
590 sc=int(sc*60/val(t$))-10
600 if sc>bs then bs=sc
610 print"{down*3}{right*3}your score =";sc
620 print"{down}{right*3}best score =";bs
630 print"{down}{right*3}time = ";t$;" seconds"
640 print"{down*5}{right*3}press space bar to continue"
650 sc=0
660 get a$:if a$<>" " then 660
670 print"{clear}":poke 53281,6
680 poke v+21,0:goto 60
690 print"{clear}":poke 53280,7:poke 53281,6
700 poke v+21,1:poke v,174:poke v+1,200:poke v+38,13
710 poke s+6,252
720 gosub 900
730 for k=1 to 1000:next
740 gosub 1500
750 t$="60"
760 print"{yellow}":goto 600
900 fq=fr+peek(s+27)*4
910 hf=int(fq/256):lf=fq-hf*256
920 poke s+4,33
930 poke s,lf:poke s+1,hf
940 poke s+4,32
950 return
1000 if rc<0 then rc=0
1010 if rc>24 then rc=24
1020 if cc<0 then cc=0
1030 if cc>39 then cc=39
1040 x=cc*8+16:y=rc*8+50
1050 poke v+16,int(x/255)
1060 poke v,x-int(x/255)*255
1070 poke v+1,y
1080 z=cc+40*rc:if peek(g+z)=81then sc=sc+n:poke h+z,6
1090 return
1500 forj=0 to 24:poke s+j,0:next:return
2000 data 0,168,0,2,170,0,10,186,128
2010 data 170,170,168,153,185,152,170,170,168
2020 data 34,186,32,170,170,168,153,185,152
2030 data 170,170,168,10,186,128,2,170,0,0,168,0
