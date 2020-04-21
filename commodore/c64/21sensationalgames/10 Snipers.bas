10 rem ** snipers **
20 g=1024:h=55296:s=54272:dims%(2,60):poke649,1:poke650,128
30 forj=0to24:pokes+j,0:next:pokes+24,15:pokes,50:pokes+1,4:pokes+6,240
40 print"{clear}{white}":a=g-1:b=h-1:su=0
50 x=3:xx=3:y=3:yy=3
60 ti$="000000"
70 input"{down*2}{right*2}level (1-10)";l$
80 l=val(l$):ifl<0orl>10then30
90 poke53281,1:forj=1to209
100 readn
110 readc
120 fork=1ton
130 pokea+k,160
140 pokeb+k,c
150 next
160 a=a+n:b=b+n
170 next
180 fork=1to60
190 reads%(0,k)
200 next
210 fork=1to30-l*2
220 j=int(rnd(1)*61)
230 s%(1,j)=1
240 next
250 forj=1to60
260 ifs%(1,j)=0thensu=su+1
270 next
280 pokeg+x+40*y,219
290 sp=int(rnd(1)*60)+1
300 ifs%(1,sp)=1then380
310 s%(2,sp)=ti
320 pokeg+s%(0,sp),174
330 pokes+4,129
340 fork=1to30:next
350 pokes+4,128
360 pokeg+s%(0,sp),160
370 ss=ss+1
380 t=ti
390 geta$
400 ifa$=" "then530
410 ifa$="z"thenxx=xx-1
420 ifa$="x"thenxx=xx+1
430 ifxx<0thenxx=0
440 ifxx>39thenxx=39
450 ifa$=";"thenyy=yy-1
460 ifa$="/"thenyy=yy+1
470 ifyy<0thenyy=0
480 ifyy>24thenyy=24
490 pokeg+x+40*y,160
500 x=xx:y=yy
510 pokeg+x+40*y,219
520 goto600
530 z=x+40*y
540 pokes+1,2:forj=1to60
550 pokes+4,129
560 ifs%(0,j)=zandti-s%(2,j)<500-46*lthens%(1,j)=1:sn=sn+1
570 pokes+4,128:pokes+1,3
580 next
590 ifsn=suthen760
600 ifti-t>25-l*2then380
610 ifss<150then290
620 print"{clear}":poke53280,5:poke53281,15
630 print"{down*2}{right*2}they got you at last!"
640 print"{down}{right*2}but you hit";sn;"of them"
650 ifsm<snthensm=sn
660 print"{down*3}{right*2}the best score is";sm
670 print"{down*3}{right*2}press 'y' to continue"
680 geta$:ifa$<>"y"then680
690 forj=1to60
700 s%(1,j)=0
710 next
720 restore
730 poke53280,14:poke53281,6
740 ss=0:sn=0
750 print"{clear}":poke53280,14:poke53281,6:goto30
760 print"{clear}":poke53280,5:poke53281,15
770 print"{down*2}{right*2}well done!"
780 print"{down}{right*2}you hit all";su;"snipers"
790 goto650
4000 data146,6,2,2,2,6,1,2,34,6,4,2,1,6,1,2,33,6,7,2,9,6,5,11,5,6,1,5,11,6
4010 data10,2,3,6,2,5,3,6,6,11,4,6,2,5,2,6,1,13,8,6,1,2,2,0,2,2,2,0,1,2,2,6
4020 data5,5,2,6,7,11,2,6,3,5,1,6,3,13,7,6,8,2,2,6,7,5,8,11,1,6,4,5,3,13,7,6
4030 data8,2,2,6,7,5,7,2,2,6,4,5,3,13,7,6,1,2,2,0,2,2,2,0,1,2,2,6,7,5,1,2
4040 data2,0,1,2,2,0,1,2,2,6,4,5,3,13,4,6,1,2,2,6,8,2,2,6,7,5,1,2,2,0,1,2
4050 data2,0,1,2,2,6,3,5,5,13,2,6,3,2,1,6,8,2,2,6,7,5,7,2,1,6,4,5
4060 data5,13,1,6,2,2,1,0,3,2,2,0,2,2,2,0,1,2,3,6,6,5,7,2,1,6,4,5,5,13,1,6
4070 data13,2,3,6,5,5,1,6,1,2,2,0,1,2,2,0,1,2,1,6,4,5,5,13,1,6,1,2,1,0,1,2
4080 data1,0,9,2,5,6,2,9,2,6,1,2,2,0,1,2,2,0,1,2,3,6,2,5,5,13,1,6,6,2,2,0
4090 data2,2,2,0,1,2,5,6,2,9,2,6,7,2,4,6,1,9,2,6,1,9,3,6,18,2,2,9,9,2,4,6
4100 data1,9,2,6,1,9,3,6,18,2,2,9,4,2,2,0,3,2,4,8,1,9,2,8,1,9,3,8,1,2,2,0
4110 data5,2,2,0,8,2,2,9,4,2,2,0,3,2,4,8,1,9,2,8,1,9,3,8,1,2,2,0,5,2,2,0
4120 data8,2,2,9,4,2,2,0,3,2,4,8,1,9,2,8,1,9,3,8,1,2,2,0,5,2,2,0,8,2,2,9
4130 data2,2,36,7,2,9,82,7
5000 data189,202,223,231,304,305,308,309,330,355,375,398,411,424,425,428,429
5010 data434,445,478,481,502,530,533,540,544,545,548,549,555,605,615,619,621
5020 data641,642,645,664,665,668,669,673,679,728,735,755,772,779,787,798
5030 data802,803,813,826,850,860,867,915,927,988
