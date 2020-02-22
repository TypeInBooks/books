!- 10 dim n(10):dim n$(5,16)                            [ZX]
10 dimn(10):dimn$(5)
!- 20 home                                              [Apple]
!- 20 cls                                               [BBC/ZX/TRS]
20 printchr$(147)
30 gosub510
40 letw$=""
50 letd=5
60 letg=0
70 fori=1to10:letn(i)=0:nexti
80 leti=1
90 gosub430
!- 100 let m=int(rnd*99+1)                              [ZX]
!- 100 let m=rnd(99)                                    [TRS]
100 letm=int(rnd(1)*99+1)
110 print:print"where will you put ";m
120 print:inputp$
130 ifp$="d"andg<dthenletg=g+1:goto90
140 ifp$="d"thenprint"you can't":goto120
150 letp=val(p$)
160 ifp<1orp>10thengoto120
170 ifn(p)>0thenprint"already full":goto120
180 letn(p)=m
190 letf=0
200 forl=pto10
210 ifn(l)<mandn(l)<>0thenletf=1
220 nextl
230 forl=1top
240 ifn(l)>mandn(l)<>0thenletf=1
250 nextl
260 iff=1thengoto360
270 leti=i+1:ifi<11thengoto90
280 letd=d-1:ifd=0thengoto330
290 print"well done, go to grade ";d
300 print:print"you are now a ";n$(d)
310 letw$=""
320 goto400
330 print"terrific - you have reached"
340 print"the grade of super spy"
350 stop
360 print"wrong! not good enough"
370 print:print"you are still a ";
380 printn$(d)
390 letw$="still"
400 print:print"do you want to try again? (y/n)"
410 inputa$:ifa$="y"thengoto60
420 stop
!- 430 home                                             [Apple]
!- 430 cls                                              [BBC/ZX/TRS]
430 printchr$(147)
440 print:print"you are ";w$;" a ";n$(d)
450 print
460 forj=1to10
470 printj;
480 ifn(j)>0thenprintn(j);
490 print:nextj
500 return
510 fori=1to5:readn$(i)
520 nexti
530 return
540 data"vis","spy","junior spy"
550 data"spying assistant","trainee spy"
