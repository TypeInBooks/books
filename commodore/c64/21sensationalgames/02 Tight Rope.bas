10 rem ** tight-rope **
20 g=0:h=0:d=0:pd=0:s=0:b=0:bp=0
30 w=0:ns=0:ff=0:poke 649,1
40 print"{clear}":poke 53280,7:poke 53281,1
50 poke 52,48:poke 56,48:clr:poke 56334,peek(56334)and254:poke 1,peek(1) and 251
60 for j=0 to 111:read x:poke 12416+j,x:next
70 poke 1,peek(1) or 4:poke 56334,peek(56334) or 1
80 input"{clear}{blue}{down}{right*2}level (1-10)";l$
90 l=val(l$):if l<1 or l>10 then 80
100 print"{clear}";:poke53272,(peek(53272) and 240)+12
110 dim a(24),s(24),b(24):ft=1e6:g=1024:h=55296:lr=-1
120 for j=0 to 24
130 read a(j)
140 read s(j)
150 read b(j)
160 next
170 d$="{red}zzz{blue}zrr{red}zzzrrrzzzrrrzzzrrrzzzrrrzzzrrr{blue}z{red}zzz"
180 for j=0 to 5
190 print d$;
200 next
210 print "zz{blue}zzzr{red}zzzrrrzzzrrrzzzrrrzzzrrrzzzrr{blue}zzz{red}zz";
220 for j=0 to 13
230 print d$;
240 next
250 print "{black}{[*4}r[{red}z{black}{[*2}r{[*3}{red}zz{black}{[*5}{red}z{black}{[*3}{red}z{black}{[*2}r{[*2}{red}z{black}{[*5}{blue}z{black}{[*2}{red}z";
260 for j=0 to 39
270 print "{purple}z{green}{pound}";
280 next
290 for j=0 to 22
300 poke g+968+j,29
310 next
320 poke h+979,2
330 poke h+164,9:poke h+204,9:poke g+164,16:poke g+204,17
340 for j=165 to 195
350 poke h+j,1:poke g+j,18:poke h+j+40,9:poke g+j+40,19
360 next
370 ti$="000000"
380 j=0
390 d=a(j)+s*s(j)+b*b(j)+bp+w
400 gosub 1000
410 if ff=1 then 740
420 j=j+1:if j<25 then 390
430 gosub 2000
440 if ns=31 then 680
450 j=0
460 d=a(24-j)+s*s(j)+b*b(j)+bp+w
470 gosub 1000
480 if ff=1 then 740
490 j=j+1:if j<25 then 460
500 gosub 2000
510 if ns=31 then 680
520 j=0
530 d=-a(j)+s*s(j)+b*b(j)+bp+w
540 gosub 1000
550 if ff=1 then 740
560 j=j+1:if j<25 then 530
570 gosub 2000
580 if ns=31 then 680
590 j=0
600 d=-a(24-j)+s*s(j)+b*b(j)+bp+w
610 gosub 1000
620 if ff=1 then 740
630 j=j+1:if j<25 then 600
640 gosub 2000
650 if ns=31 then 680
660 w=(l-1)*(int(rnd(1)*7)-3)
670 goto 380
680 print"{clear}":poke 53280,6:poke 53281,9:poke 53272,21
690 t=int(ti/60)
700 print"{white}{down*3}{right*2}successful crossing in ";t;" seconds"
710 if t<ft then ft=t
720 print"{down*2}{right*2}fastest time is ";ft;" seconds"
730 goto 780
740 print"{clear}":poke 53280,4:poke 53281,13:poke 53272,21
750 if ms<ns then ms=ns
760 print"{red}{down*3}{right*2}you fell, after ";ns;"steps"
770 print"{down*2}{right*2}longest walk is";ms;" steps"
780 print"{green}{down*5}{right*5}press space bar to continue"
790 get a$:if a$<>" " then 790
800 restore:clr:goto 40
1000 if abs(d)>200-7*l then ff=1
1010 poke h+979+pd/20,1:poke h+979+d/20,2:pd=d
1020 return
2000 s=s*-.5
2010 if b<>0 then bp=bp+10*sgn(b):b=0
2020 get a$
2030 if a$="s" then s=lr:lr=-sgn(lr):ns=ns+1:gosub 3000
2040 if a$="x" then b=1
2050 if a$="z" then b=-1
2060 return
3000 poke g+163+ns,22:poke g+164+ns,24:poke g+203+ns,23:poke g+204+ns,25
3010 poke h+164+ns,9:poke h+204+ns,9
3020 for k=1 to 400:next
3030 poke g+163+ns,18:poke g+164+ns,20:poke g+203+ns,19:poke g+204+ns,21
3040 if ns=31 then poke g+195,16:poke g+235,17:for k=1 to 5000:next
3050 return
4000 data 129,153,189,153,90,60,24,24,24,24,36,36,36,36,102,255
4010 data 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255
4020 data 0,48,96,120,112,34,25,160,160,32,80,72,72,72,108,255
4030 data 3,6,7,39,18,15,2,2,2,5,4,4,4,4,2,255
4040 data 0,0,128,0,0,0,128,64,32,128,64,128,128,64,0,255
4050 data 255,255,255,255,255,255,255,255
4060 data 0,60,60,126,126,60,24,24,24,60,126,255,255,126,60,24
4070 data 24,126,219,153,24,24,24,24
5000 data 3,2,25,9,12,46,16,21,50,22,30,49,28,38,47
5010 data 34,46,44,40,55,41,45,60,37,51,65,33,56,69,28
5020 data 61,72,25,66,74,23,71,75,21,75,74,18,79,72,17
5030 data 83,69,15,86,65,13,89,60,12,92,55,17,94,46,11
5040 data 96,38,10,98,30,10,99,21,10,100,12,10,100,2,10
