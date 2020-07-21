100 rem **race! by john white **
125 gosub 1500
130 gosub 260
140 ao=+1:gosub 360
150 gosub 410
160 if qq=-999 then 180
170 gosub 530
180 if die=6 then 140
190 ao=-1:gosub 360
200 gosub 640
210 if j=0 then 230
220 gosub 530
230 if die=6 then 190
240 goto 140
250 rem ** initialise **
260 dim a(24),n(3)
270 for i=1 to 24:a(i)=0:next i
280 for i=1 to 5:a(i)=5:next i
290 n(1)=0:n(3)=0:a$="0000000000000000":v$="your{space*2}my"
300 print chr$(147):poke 53281,7:poke 53280,7
301 for i=2 to 18:poke 251,i:poke 252,12:sys 49152:print chr$(129);"+":next i
310 poke 251,19:poke 252,12:sys 49152:print"*"
320 for i=1 to 4:poke 251,0:poke 252,12+i:sys 49152:print chr$(28);i:next i
321 for i=1 to 4
322 poke 251,0:poke 252,12-i:sys 49152:print chr$(31);i:next i
330 poke 251,10:poke 252,1:sys 49152:print chr$(144);"race!"
340 return
350 rem ** throw dice **
360 die=int(6*rnd(1)+1)
370 poke 251,3:poke 252,19:sys 49152:print mid$(v$,(ao+1)*2+1,4);" throw=";die
380 if die=6 then gosub 1020
390 return
400 rem ** computer move **
410 qq=-999:for k=1 to 250:next k
420 for i=1 to 4
430 y=val(mid$(a$,2*i-1,2))
440 if y=61 then 500:rem piece is home
450 v=y+die
460 ng=0:gosub 780
470 if ng<>0 then 500
480 gosub 860
490 if q>qq then qq=q:j=i:x=y:u=v
500 next i
510 return
520 rem ** move piece **
530 z$=str$(u):u$=right$(z$,len(z$)-1)
531 if len(z$)-1=1 then u$="0":u$=u$+right$(z$,len(z$)-1)
540 if a(u)=-ao then a(u)=0:gosub 960
550 a(u)=ao+a(u)
560 a(x)=a(x)-ao:if a(x)*ao<0 then a(x)=0
570 a$=left$(a$,2*j-2)+u$+right$(a$,16-(2*j))
580 if u=23 then gosub 1120:return
590 if x=0 then x=5
600 if ao=1 then 2000
610 if ao=-1 then 2050
620 return
630 rem ** your move **
640 poke 251,3:poke 252,23:sys 49152:input"which piece ";i$
650 i=asc(i$)-48
660 if i=0 then poke 251,3:poke 252,23:sys 49152:print"no moves{space*11}":j=0:return
670 if i<1 or i>4 then gosub 1050:poke 251,3:poke 252,21:sys 49152:goto 3000
680 y=val(mid$(a$,2*i+7,2))
690 if y=0 or y=61 then 710
700 if a(y)>=0 then gosub 1050:goto 640
710 v=y+die
720 ng=0:gosub 780
730 if ng<>0 then gosub 1050:goto 640
740 j=i+4:u=v:x=y
750 i=i*ao
760 return
770 rem ** testmove **
780 if v>23 then ng=1:return
790 for n=y+1 to v
800 if a(n)=5 then 820
810 if a(n)*ao<-1 then ng=1
820 next n
830 if a(v)=5 then ng=1
840 return
850 rem ** evaluate **
860 q=0
870 if a(v)=-1 then q=q+40
880 if a(v)=+1 then q=q+20
890 if a(y)=+1 then q=q-10
900 q=q+v
910 if v=6 then q=q+5
920 if v=23 then q=q+40
930 q=q+rnd(1)
940 return
950 rem ** clear captured piece **
960 m1=0:if ao=+1 then m1=4
970 for m=1+m1 to 4+m1
980 b$=mid$(a$,2*m-1,2)
981 if  b$=u$ then a$=left$(a$,2*m-2)+"00"+right$(a$,16-(2*m)):gosub 1080
990 next m
1000 return
1010 rem ** beep **
1020 poke 54296,15:poke 54277,17:poke 54278,129:poke 54273,54:poke 54272,111
1021 poke 54276,33:for t=1 to 250:next
1022 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
1030 return
1040 rem ** boop **
1050 poke 54296,15:poke 54277,17:poke 54278,129:poke 54273,8:poke 54272,147
1051 poke 54276,33:for t=1 to 250:next
1052 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
1060 return
1070 rem ** replace captured piece **
1080 if ao=1 then 3050
1090 if ao=-1 then 4000
1100 return
1110 rem ** piece home **
1120 poke 251,3:poke 252,23:sys 49152:print" piece home{space*13}"
1121 a(23)=0:a$=left$(a$,2*j-2)+"61"+right$(a$,16-(2*j)):n(ao+2)=n(ao+2)+1
1130 gosub 1050
1140 if ao=1 then 4050
1150 if ao=-1 then 5000
1160 if n(ao+2)<4 then return
1170 poke 251,3:poke 252,23:sys 49152
1171 print chr$(18);"{space*10}game over{space*11}"
1180 gosub 1050
1190 poke 251,0:poke 252,0:sys 49152:end
1200 gosub 1050:goto 640
1500 for i=0 to 8:read h:poke 49152+i,h:next i:return
1510 data 166,252,164,251,24,32,240,255,96
2000 poke 251,u-5:poke 252,12+j:sys 49152:print chr$(28);j
2001 poke 251,x-4:poke 252,12+j:sys 49152:print chr$(158);" ";chr$(144)
2002 goto 620
2050 poke 251,u-5:poke 252,12+i:sys 49152:print chr$(31);j-4
2051 poke 251,x-4:poke 252,12+i:sys 49152:print chr$(158);" ";chr$(144)
2052 goto 620
3000 print"select no. from 1 - 4"
3001 for z=0 to 700:next z:poke 251,3:poke 252,21:sys 49152
3002 print"{space*25}":goto 640
3050 poke 251,0:poke 252,12-m+4:sys 49152:print chr$(31);m-4
3051 poke 251,u-4:poke 252,12-m+4:sys 49152:print chr$(158);" ";chr$(144)
3052 goto 1100
4000 poke 251,0:poke 252,12+m:sys 49152:print chr$(31);m
4001 poke 251,u-4:poke 252,12+m:sys 49152:print chr$(158);" ";chr$(144)
4002 goto 1100
4050 poke 251,19:poke 252,16+j:sys 49152:print chr$(28);j
4051 poke 251,x-4:poke 252,12+j:sys 49152:print chr$(158);" ";chr$(144)
4052 goto 1160
5000 poke 251,19:poke 252,8+i:sys 49152:print chr$(31);j-4
5001 poke 251,x-4:poke 252,12+i:sys 49152:print chr$(158);" ";chr$(144)
5002 goto 1160