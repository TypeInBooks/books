10 rem ** breakaway **
20 print"{clear}{white}":poke53280,6:poke53281,8:dimm%(9,11),t%(5,2):poke649,1
30 g=1024:h=55296:h$="{sh asterisk*4} {sh asterisk*4}"
40 fork=1to11
50 forj=0to9
60 readm%(j,k)
70 next:next
80 print"{down*2}";tab(18)"N{sh -}M"
90 printtab(17)"N {sh -} M":printtab(16)"N{space*2}{sh -}{space*2}M"
100 printtab(15)"N{space*3}{sh -}{space*3}M":printtab(15)h$
110 printtab(14)"{sh -}M{space*3}{sh -}{space*3}N{sh -}"
120 printtab(14)"{sh -} M{space*2}{sh -}{space*2}N {sh -}"
130 printtab(14)"{sh -}{space*2}M {sh -} N{space*2}{sh -}"
140 printtab(14)"{sh -}{space*3}M{sh -}N{space*3}{sh -}":printtab(15)h$
150 printtab(14)"{sh -}{space*3}N{sh -}M{space*3}{sh -}"
160 printtab(14)"{sh -}{space*2}N {sh -} M{space*2}{sh -}"
170 printtab(14)"{sh -} N{space*2}{sh -}{space*2}M {sh -}"
180 printtab(14)"{sh -}N{space*3}{sh -}{space*3}M{sh -}":printtab(15)h$
190 printtab(15)"M{space*3}{sh -}{space*3}N"
200 printtab(16)"M{space*2}{sh -}{space*2}N"
210 printtab(17)"M {sh -} N"
220 printtab(18)"M{sh -}N"
230 fork=1to11
240 pokeh+m%(9,k),m%(0,k)
250 pokeg+m%(9,k),81
260 next
270 print"{right}"
280 print"your colour? {up}"
290 c$=""
300 getc$
310 c=val(c$)
320 ifc<6orc>8then290
330 c=c-1
340 print"your move?{space*3}{up}"
350 getm$:ifm$=""then350
360 ifm$="y"thenm=8:goto420
370 ifm$="u"thenm=1:goto420
380 ifm$="i"thenm=5:goto420
390 ifm$="h"thenm=4:goto420
400 ifm$="j"thenm=3:goto420
410 goto350
420 k=1
430 ifm%(0,k)<>cthenk=k+1:goto430
440 v=m%(m,k)and15:ifv=0thenprint"not possible!{up}":forj=1to4000:next:goto280
450 v=m%(m,k)and15:ifm%(0,v)>0thenprint"place taken {up}":forj=0to4000:next:goto280
460 forl=0to2
470 forj=5to1step-1
480 t%(j,l)=t%(j-1,l)
490 next
500 t%(0,l)=0
510 next
520 d=c-5:q=m%(m,k)and15:t%(0,d)=q
530 ift%(2,d)=qandt%(4,d)=qandt%(1,d)=t%(3,d)andt%(3,d)=t%(5,d)then900
540 m%(0,k)=0:pokeh+m%(9,k),0:m%(0,m%(m,k)and15)=c:pokeh+m%(9,m%(m,k)and15),c
550 print"{reverse on}64's{reverse off} move{space*3}{up}"
560 forl=1to2000:next:k=1
570 ifm%(0,k)<>4thenk=k+1:goto570
580 ifk=1andm%(0,2)>4andm%(0,3)>4andm%(0,4)>4then1100
590 ifk=5andm%(0,2)>4andm%(0,6)>4andm%(0,8)>4then700
600 ifk=7andm%(0,4)>4andm%(0,6)>4andm%(0,10)>4then700
610 cr=64:gosub3000:ifw>0then650
620 cr=0:gosub3000:ifw>0then650
630 cr=16:gosub3000:ifw>0then650
640 cr=32:gosub3000
650 ifm%(0,nk)>0then610
660 m%(0,k)=0:pokeh+m%(9,k),0
670 m%(0,nk)=4:pokeh+m%(9,nk),4
680 x=m%(r,k)and16:ifx=0thenm%(r,k)=m%(r,k)+16
690 forj=5to1step-1
700 u%(j)=u%(j-1)
710 next
720 u%(0)=nk
730 ifnk=11then900
740 ifu%(2)=nkandu%(4)=nkandu%(1)=u%(3)andu%(3)=u%(5)then900
750 vv=0:fork=1to4:vv=vv+m%(0,k):next:ifvv>18andm%(0,1)<>4then900
760 goto280
900 print"{reverse on}the 64 wins{space*3}"
910 forj=1to3000:next
920 forj=0to4
930 forl=1to8
940 v=m%(l,u%(j+1))and15
950 ifv=u%(j)thenm%(l,u%(j+1))=v+64
960 next:next
970 vw=vw+1
980 goto1200
1100 forj=0to4
1110 forl=1to8
1120 v=m%(l,u%(j+1))and15
1130 ifv=u%(j)thenm%(l,u%(j+1))=v+32
1140 next
1150 next
1160 vl=vl+1
1170 print"{reverse on}the 64 loses{space*3}"
1180 forj=1to3000
1190 next
1200 print"{clear}{down*2}{right*2}"
1210 poke53280,2:poke53281,13
1220 print"{right*2}the computer has won";vw;"games"
1230 print"{down}{right*2}out of";vw+vl
1240 print"{down*4}{right*2}press the space bar to continue"
1250 geta$:ifa$<>" "then1250
1260 print"{clear}{white}":poke53280,6:poke53281,8
1270 fork=1to11
1280 m%(0,k)=0
1290 next
1300 m%(0,3)=4:m%(0,8)=5:m%(0,9)=6:m%(0,10)=7
1310 forj=0to5
1320 u%(j)=0
1330 next
1340 forj=1to8
1350 forl=1to11
1360 v=m%(j,l)and112:x=m%(j,l)and15
1370 ifv=16thenm%(j,l)=x
1380 ifv=48thenm%(j,l)=x+32
1390 ifv=80thenm%(j,l)=64
1400 next:next
1410 goto80
3000 w=0:nk=0:forj=1to8
3010 v=m%(j,k)andcr
3020 x=m%(j,k)and15
3030 ifv=crandm%(0,x)=0thenw=1
3040 next
3050 ifw=0thenreturn
3060 r=int(rnd(1)*8)+1
3070 v=m%(r,k)andcr
3080 x=m%(r,k)and15
3090 ifv=crandm%(0,x)=0thennk=m%(r,k)and15
3100 ifnk=0then3050
3110 return
4000 data 0,0,3,0,0,0,4,2,0,99,0,0,5,3,0,1,6,0,0,294
4010 data 4,1,6,4,2,0,0,0,0,299,0,0,7,0,3,0,0,6,1,304
4020 data 0,2,8,6,0,0,0,0,0,494,0,3,9,7,5,4,10,8,2,499
4030 data 0,4,10,0,6,0,0,0,0,504,5,5,0,9,0,6,11,0,0,694
4040 data 6,6,11,10,8,0,0,0,0,699,7,7,0,0,9,0,0,11,6,704
4050 data 0,9,0,0,0,10,0,0,8,899
