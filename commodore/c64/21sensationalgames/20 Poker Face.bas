10 rem ** poker-face **
20 poke251,100:poke252,100
30 print"{clear}";:poke53280,13:poke53281,13:ps=peek(251):ys=peek(252)
40 dimp%(12,3),h%(12,7),d%(12,1)
50 forj=1to10
60 d=int(rnd(1)*13):s=int(rnd(1)*4)
70 ifp%(d,s)=1then60
80 p%(d,s)=1
90 ifj>5thens=s+4
100 h%(d,s)=1
110 next
120 print"{down}{right*2}your hand is:{down*2}"
130 printtab(5)"{black}a{space*2}";:s=4:gosub1000
140 print"{down}":printtab(5)"{red}s{space*2}";:s=5:gosub1000
150 print"{down}":printtab(5)"z{space*2}";:s=6:gosub1000
160 print"{down}":printtab(5)"{black}x{space*2}";:s=7:gosub1000
170 forj=0to12:forh=0to1:fork=0+h*4to3+h*4
180 ifh%(j,k)=1thend%(j,h)=d%(j,h)+1
190 next:next:next
200 forh=0to1:fork=h*4to3+h*4:forj=0to12
210 ifh%(j,k)=1thens%(k)=s%(k)+1
220 next:next:next
230 s=0:forh=0to1
240 fork=h*4to3+h*4
250 ifs%(k)=5thens=k
260 next:ifs=0then360
270 r=0:forj=12to4step-1
280 f=1:forl=jtoj-4step-1
290 ifh%(l,s)<>1thenf=0
300 next
310 iff=1thenr=j
320 next
330 ifr=122thens(h)=1:goto360
340 ifr>0andr<12thens(h)=2:goto360
350 s(h)=5
360 next
370 forh=0to1
380 ifs(h)>0then500
390 forj=0to12
400 c%(d%(j,h),h)=1
410 next
420 f=0:forj=0to12
430 ifd%(j,h)=2thenf=f+1
440 next
450 iff=2thenc%(2,h)=2
460 ifc%(4,h)=1thens(h)=3:goto500
470 ifc%(3,h)=1andc%(2,h)=1thens(h)=4:goto500
480 ifc%(3,h)=1thens(h)=7:goto500
490 ifc%(2,h)>0thens(h)=10-c%(2,h)
500 next
510 forh=0to1
520 ifs(h)>0then570
530 forj=0tos
540 f=1:forl=jtoj+4:ifd%(l,h)=0thenf=0
550 next:iff=1thens(h)=6
560 next
570 next
580 forh=0to1
590 ifs(h)>0then630
600 f=0:forj=12to0step-1
610 ifd%(j,h)=1andf=0thens(h)=10+j:f=1
620 next
630 next
640 print:print"{down}{right*2}poker-face is ";
650 ifrnd(1)>.9thenm=int(rnd(1)*11):goto680
660 m=s(0)+int(rnd(1)*3)-2
670 ifm<1thenm=1
680 ifm>10thenm=10
690 forj=0to12:readd$:next
700 forj=1tom:readm$:next
710 printm$
720 print"{down*2}{right*2}what will you do?"
730 geta$:ifa$=""then730
740 ifa$="t"thenps=ps+1:ys=ys-1:goto910
750 ifa$="s"then770
760 goto730
770 ifm=10then790
780 forj=m+1to10:readm$:next
790 m=s(0):ifm>10thenm=10
800 forj=1tom:readh$:next:restore
810 print"{home}";tab(20)"{down}poker-face holds:{down}":print:printtab(22)"{black}a{space*2}";:s=0:gosub1000
820 print:printtab(22)"{red}{down}s{space*2}";:s=1:gosub1000
830 print:printtab(22)"{down}z{space*2}";:s=2:gosub1000
840 print:printtab(22)"{down}{black}x{space*2}";:s=3:gosub1000
850 print"{down*7}":print"{right*2}poker-face has ";
860 printh$
870 ifs(0)>9ands(1)>9thens(0)=-s(0):s(1)=-s(1)
880 ifs(0)<s(1)thenprint"{right*2}and wins":ps=ps+2:ys=ys-2:goto910
890 ifs(0)>s(1)thenprint"{right*2}and loses":ps=ps-3:ys=ys+3:goto910
900 print"{right*2}so it's a null hand"
910 print:printtab(5)"you: ";ys;tab(25)"p-f: ";ps
920 geta$:ifa$<>" "then920
930 poke251,ps:poke252,ys:clr:goto30
1000 forj=12to0step-1
1010 readd$
1020 ifh%(j,s)<>0thenprintd$;" ";
1030 next
1040 restore
1050 return
3000 data a,k,q,j,10,9,8,7,6,5,4,3,2
4000 datalaughing his head off,gasping for breath,smiling serenely, inscrutable
4010 data obviously perplexed,watching you,gripping the table
4020 data looking grim,turning pale,gasping for breath
5000 data a royal straight flush,a straight flush,fours,a full house
5010 data a flush hand,a straight hand,threes,two pairs,a pair,his top card
