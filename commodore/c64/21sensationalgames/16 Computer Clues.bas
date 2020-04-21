10 rem ** computer clues **
20 dimc%(5,2),p%(5,3):g=1024:gc=g+142:h=55296:hc=h+142
30 forj=1to8:readcc%(j):next:forj=0to4:readsc%(j):next
40 deffnr(x)=int(rnd(1)*x)+1
50 print"{clear}":poke53280,6:poke53281,1:input"{blue}{down} pieces (3-6)";np$
60 np=val(np$):ifnp<3ornp>6then50
70 input"{down} colours (3-8)";nc$
80 nc=val(nc$):ifnc<3ornc>8then50
90 input"{down} shapes (1-4)";ns$
100 ns=val(ns$):ifns<1orns>4then50
110 forj=0tonp-1
120 c%(j,0)=fnr(nc)
130 c%(j,1)=fnr(ns)
140 p%(j,2)=0:p%(j,3)=0
150 next
160 print"{clear}"
170 j=0
180 print"{home}{down}{right*3}{blue}guess no.";j+1
190 fork=0tonp-1
200 ln=20:gosub1000
210 printtab(4)"{blue}colour?"
220 geta$:ifa$=""then220
230 p%(k,0)=asc(a$)-48
240 ifp%(k,0)<1orp%(k,0)>ncthen200
250 gosub2000
260 ln=22:gosub1000
270 printtab(10)p$
280 ifns=1then420
290 ln=20:gosub1000
300 printtab(4)"{blue}shape? "
310 geta$:ifa$=""then310
320 ifa$<>"a"anda$<>"s"anda$<>"z"anda$<>"x"then310
330 ifns=3anda$="x"then310
340 ifns=2anda$="z"orns=2anda$="x"then310
350 ifa$="a"thenp%(k,1)=1
360 ifa$="s"thenp%(k,1)=2
370 ifa$="z"thenp%(k,1)=3
380 ifa$="x"thenp%(k,1)=4
390 gosub2000
400 ln=22:gosub1000
410 printtab(10)p$
420 next
430 ln=20:gosub1000
440 printtab(4)"{red}ok? y/n"
450 geta$:ifa$=""then450
460 ln=22:gosub 1000:printtab(10)"{space*8}"
470 ifa$="y"then490
480 fork=0tonp-1:p%(k,1)=0:next:goto190
490 ln=j+3:gosub1000
500 printtab(10)p$
510 fork=0tonp-1
520 ifp%(k,0)=c%(k,0)thenp%(k,2)=1:p%(k,3)=6:c%(k,2)=1
530 ifp%(k,1)=c%(k,1)thenp%(k,2)=1:p%(k,3)=p%(k,3)or5:c%(k,2)=1
540 next
550 fork=0tonp-1
560 ifp%(k,2)=1then620
570 pc=p%(k,0):ps=p%(k,1)
580 m=0
590 ifc%(m,2)=1then610
600 ifpc=c%(m,0)andps=c%(m,1)thenp%(k,2)=1:p%(k,3)=3:c%(m,2)=1:goto620
610 m=m+1:ifm<npthen590
620 next
630 fork=0tonp-1
640 ifp%(k,2)=1then710
650 pc=p%(k,0):ps=p%(k,1)
660 m=0
670 ifc%(m,2)=1then700
680 ifpc=c%(m,0)thenp%(k,2)=1:p%(k,3)=2:c%(m,2)=1:goto710
690 ifps=c%(m,1)thenp%(k,2)=1:p%(k,3)=4:c%(m,2)=1:goto710
700 m=m+1:ifm<npthen670
710 next
720 x=0:fw=0:fork=7to1step-1
730 form=0tonp-1
740 ifk=p%(m,3)thenpokehc+j*40+x,k:pokegc+j*40+x,225:x=x+1:fw=fw+k
750 next:next
760 ff=7:ifns=1thenff=6
770 iffw=ff*npthenln=20:gosub1000:printtab(4)"{red}you win!!":goto820
780 gosub3000
790 j=j+1:ifj<16then180
800 ln=20:gosub1000
810 printtab(4)"{black}{reverse on}the computer wins"
820 o$=""
830 fork=0tonp-1
840 ifns=1thenc%(k,1)=0
850 p$=p$+chr$(cc%(c%(k,0)))+chr$(sc%(c%(k,1)))
860 next
870 print"{down}";tab(16)p$
880 geta$:ifa$=""then880
890 gosub3000
900 fork=0tonp-1:c%(k,1)=0:next
910 goto50
1000 print"{home}";:forl=1toln
1010 print"{down}";
1020 next
1030 return
2000 p$="":form=0tok
2010 p$=p$+chr$(cc%(p%(m,0)))+chr$(sc%(p%(m,1)))
2020 next
2030 return
3000 fork=0tonp-1
3010 form=0to3
3020 p%(k,m)=0
3030 next
3040 c%(k,2)=0
3050 next
3060 return
4000 data 144,129,28,159,156,30,31,158,113,97,115,122,120
