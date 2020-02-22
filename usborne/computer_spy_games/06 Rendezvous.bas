!- 10 fna(x)=int(rnd*x)+1                                       [ZX]
!- remove line 10 for [TRS]
10 def fna(x)=int(rnd(1)*x)+1
20 gosub1010:gosub1130
30 letp=1:lety=0:letx=1:letep=10
40 letu=0:letnm=0
50 lets$=""
60 letb$=""
!- 70 home:print:print"rendezvous"                              [Apple]
!- 70 cls:print:print"rendezvous"                               [BBC/ZX/TRS]
70 printchr$(147):print:print"rendezvous"
80 print"=========="
90 letnm=nm+1
100 print:print
110 printb$:print
120 print:print"you are at the ";
130 printr$(p)
140 ifep=pthenprint"enemy agent is here":letne=ne+1
150 ifep<>pthenletne=0
160 ifp=mpandf(1)=0thenprint"message for you here"
170 letf(3)=0
180 lett1=h+m/100
190 iff(4)=1andr$(p)=s$andu<=t1andu+.15>t1thenprintt$:letf(3)=1
200 ifp=1andh<fhandf(7)=1thengoto890
210 print:print:print"what next"
220 letb$=""
230 inputi$
!- 235 if len(i$)<7 then let i$=i$+" ":goto 235
240 letv=0:fori=1to11
250 ifi$=v$(i)thenletv=i
260 nexti
270 ifv=0thenletv=12
!- 280 ifne=3andrnd(10)>3andv<>1thenletb$="enemy agent sees you!":goto70        [TRS]
280 ifne=3andfna(10)>3andv<>1thenletb$="enemy agent sees you!":goto70
290 ifne=4thenprint"you are captured!":stop
!- 300 gosub 360*(v=1)+420*(v=2)+490*(v=3)+540*(v=4)+570*(v=5)+640*(v=6)+710*(v=7)+730*(v=8)+780*(v=9)+810*(v=10)+820*(v=11)+870*(v=12) [ZX]
300 onvgosub360,420,490,540,570,640,710,730,780,810,820,870
310 letm=m+dt:ifm>59thenletm=m-60:leth=h+1
320 iff(2)=1andh>=chthenletf(4)=1
330 ifh=fhthengoto880
!- 340 ifrnd(10)>9thenletep=10                                                  [TRS]
340 iffna(10)>9thenletep=10
350 goto70
360 print:print"where to":inputn$
!- 365 if len(n$)<14 then let n$=n$+" ":goto 365
370 letnp=0:fori=1to20
380 ifn$=r$(i)thenletnp=i
390 nexti:ifnp=0thengoto360
400 gosub950
410 letp=np:return
420 letdt=5
430 print:print"say what":inputq$
440 ifep=pthenletb$="you attracted the enemy agent!":return
450 iff(3)=0thenletb$="nobody hears you":return
460 ifq$<>p$thenletb$="contact ignores you!":return
470 iff(6)=1thenletb$="you made contact - he takes the case!"
480 letf(7)=1:return
490 letdt=5
500 print:print"what do you want to examine":inputq$
510 ifq$="case"thenletb$="top secret!":return
520 ifq$="key"thenletb$="a number - "+str$(nl):return
530 letb$="nothing special!":return
540 ifp<>mporf(1)=1thenletb$="nothing to read!":return
550 letb$="a word - '"+p$+"'"
560 letf(1)=1:return
570 letdt=5
580 ifp<>16thenletb$="nothing to open":return
590 iff(5)=0thenletb$="you have no key":return
600 print:print"what number locker":input yn
610 if nl<>yn thenletb$="the key does not fit":return
620 letb$="locker is open - you have the case!":letf(6)=1
630 return
640 letdt=5
650 ifep<>pthenletb$="follow who?":return
!- 660 letnp=rnd(20):gosub950:letp=np                                           [TRS]
660 letnp=fna(20):gosub950:letp=np
!- 670 if rnd(10)>8thenletp=kp                                                  [TRS]
670 if fna(10)>8thenletp=kp
!- 680 ifrnd(10)>7thenletb$="you lost him after a while!":return                [TRS]
680 iffna(10)>7thenletb$="you lost him after a while!":return
690 letep=p
700 letb$="you kept him in sight":return
710 print:print"how many minutes":input dt
720 return
730 print:print"where do you want to meet":inputs$
!- 735 if len(s$)<14 then let s$=s$+" ":goto 735
740 print:print"what time (hh.mm)"
750 input u
760 ifp=cpandt1<uandh<chthenletf(2)=1
770 letdt=5:return
780 letb$="nothing here":letdt=10
790 ifp=kpthenletb$="you found a key":let f(5)=1
800 return
810 letdt=0:letb$="time is now "+str$(h)+"."+str$(m):return
820 letdt=5
830 ifu=0thengoto860
840 print:print"meeting place is"
850 prints$;" at ";u
860 gosub1300:return
870 letdt=0:letb$="pardon?":return
880 print"too late ":stop
890 print:print"well done. your mission was a success!"
900 lettl=(fh-h)*60-m
910 lets=int((20/nm+tl/120)*50)
920 print:print"your spy rating"
930 print"is ";s
940 stop
950 letny=int((np-1)/5)
960 letnx=np-5*ny
970 letdx=abs(x-nx):letdy=abs(y-ny)
980 letx=nx:lety=ny
990 letd=sqr(dx^2+dy^2)
1000 letdt=int(5*d):return
!- 1010 dim r$(20,14):dim v$(11,7):dim f(7)
1010 dimr$(20),v$(11),f(7)
1020 fori=1to20:readr$(i)
1030 next i
1040 fori=1to11:readv$(i):nexti
1050 return
1060 data "airport","bus stop","bridge","canal","church"
1070 data "park","cafe","bank","cinema","hotel"
1080 data "casino","town square","post office","police station","fairground"
1090 data "station","town hall","embassy","gardens","castle"
1100 data "move","say","examine","read","open","follow","wait","leave","search"
1110 data "time","help"
1120 data "custard","kipper","koala","crumpet","crossword","kangaroo"
!- 1130 leth=rnd(2)+8:letm=0                                    [TRS]
1130 leth=fna(2)+8:letm=0
!- 1140 letfh=rnd(2)+14                                         [TRS]
1140 letfh=fna(2)+14
!- 1150 letch=rnd(2)+h                                          [TRS]
1150 letch=fna(2)+h
!- 1160 home:print:print                                        [Apple]
!- 1160 cls:print:print                                         [BBC/ZX/TRS]
1160 printchr$(147):print:print
1170 letne=0:lett$="contact is here"
!- 1180 letmp=rnd(18):let kp=rnd(18)                            [TRS]
1180 letmp=fna(18):let kp=fna(18)
!- 1190 letep=rnd(18):let cp=rnd(18)                            [TRS]
1190 letep=fna(18):let cp=fna(18)
!- 1200 fori=1tornd(6)                                          [TRS]
1200 fori=1tofna(6)
1210 readp$:nexti
!- 1220 letnl=rnd(900)+99                                       [TRS]
1220 letnl=fna(900)+99
1230 print"rendezvous"
1240 print"==========":print
1250 print"collect message from"
1260 print"the ";r$(mp)
1270 print"contact will collect"
1280 print"from the ";r$(cp)
1290 print"at ";ch;".00"
1300 print"last flight leaves"
1310 print"at ";fh;".00"
1320 print:print"press return to continue"
1330 inputq$:return
