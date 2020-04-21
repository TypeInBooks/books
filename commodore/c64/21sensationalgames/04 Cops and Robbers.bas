10 rem ** cops and robbers **
20 g=1024:h=55296:c=160:b=219:s=54272:lm=1e6
30 forj=0to24:pokes+j,0:next
40 pokes+24,15:pokes+5,18:pokes+6,242:poke53280,5:poke53281,8:m=0:mc=0:pokes+3,1
50 input"{clear}{white}{down*2}{right*2}speed (1 to 10)";a$
60 l=11-val(a$):ifl<1orl>10then50
70 print"{clear}":poke53281,7
80 forj=0to999
90 pokej+g,b
100 pokej+h,0
110 next
120 hx=int(rnd(1)*21)+10
130 hy=int(rnd(1)*12)
140 pokeh+hx+hy*40,4
150 rm=0:rx=0:ry=24:rd=0
160 cm=0:cx=39:cy=24:cd=0
170 rp=960:pokeg+rp,c
180 pokeh+rp,2
190 cp=999:pokeg+cp,c
200 pokeh+cp,6
210 geta$:ifa$=""then210
220 ifa$<>"g"then210
230 ifmc=31thenmc=0:pokes+4,64:pokeg+cp,b:pokeh+cp,0:goto150
240 j=0:m=m+1
250 pokes+4,64:pokes,135:pokes+1,33:pokes+4,65
260 geta$:ifa$=""andj<20*lthenj=j+1:goto260
270 ifj=20*lthenrm=1:goto290
280 ifa$<>"a"anda$<>"z"anda$<>"s"anda$<>" "then260
290 pokeg+rp,b:pokeh+rp,0
300 ifa$="a"thenrm=1:rd=rd+1:gosub1000
310 ifa$="z"thenrm=1:rd=rd+2:gosub1000
320 ifa$="s"thenrm=1:rd=rd-1:gosub1000
330 ifa$=" "thenrm=0
340 ifrd=0thenry=ry-rm
350 ifrd=1thenrx=rx-rm
360 ifrd=2thenry=ry+rm
370 ifrd=3thenrx=rx+rm
380 ifrx=hxandry=hythen650
390 ifrx=cxandry=cyandcd<>rdthen790
400 ifrx<0orrx>39orry<0orry>24thenm=m+1:mc=mc+1:goto440
410 rp=rx+ry*40
420 pokeg+rp,c
430 pokeh+rp,2
440 j=0
450 pokes+4,64:pokes,30:pokes+1,25:pokes+4,65
460 geta$:ifa$=""andj<20*lthenj=j+1:goto460
470 ifj=20*lthencm=1:goto490
480 ifa$<>chr$(134)anda$<>chr$(135)anda$<>chr$(136)then460
490 pokeg+cp,b:pokeh+cp,0
500 ifcx=hxandcy=hythenpokeh+cp,4
510 ifa$=chr$(134)thencm=2:gosub1100
520 ifa$=chr$(135)thencm=1:cd=cd+1:gosub1100
530 ifa$=chr$(136)thencm=0
540 ifcd=0thency=cy-cm
550 ifcd=1thencx=cx-cm
560 ifcd=2thency=cy+cm
570 ifcd=3thencx=cx+cm
580 ifrx=cxandry=cyandcd=rdthen760
590 ifrx=cxandry=cyandcd<>rdthen790
600 ifcx<0orcx>39orcy<0orcy>24then640
610 cp=cx+cy*40
620 pokeg+cp,c
630 pokeh+cp,6
640 goto230
650 poke53280,2:poke53281,2
660 print"{clear}{down*2}{right*2}robbers escape
670 pokes+4,64:pokes+24,0
680 ifmm<mthenmm=m
690 iflm>mthenlm=m
700 print"{down*2}{right*2}game lasted ";m;" moves"
710 print"{down*2}{right*2}longest game is ";mm;" moves"
720 print"{down*2}{right*2}shortest game is ";lm;" moves"
730 print"{down*4}{right*4}press space bar to continue"
740 geta$:ifa$<>" "then740
750 goto30
760 poke53280,6:poke53280,6
770 print"{clear}{down*2}{right*2}robbers captured"
780 goto670
790 poke53280,2:poke53281,6
800 print"{white}{clear}{down*2}{right*2}cops and robbers crashed head-on"
810 goto670
1000 ifrd>3thenrd=rd-4
1010 ifrd<0thenrd=rd+4
1020 return
1100 ifcd>3thencd=cd-4
1110 return
