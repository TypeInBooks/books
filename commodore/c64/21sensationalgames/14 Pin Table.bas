10 rem ** pintable **
20 cn=12288:ch=53248:sg=54272:vc=56334
30 forl=1to24:pokesg+l,0:next
40 g=1024:h=55296:pokesg+5,8:pokesg+15,175:pokesg+24,15
50 print"{clear}";chr$(124);
60 poke53280,4:poke53281,7:poke52,48:poke56,48
70 pokevc,peek(vc)and254:poke1,peek(1)and251
80 forj=0to463
90 pokecn+j,peek(ch+j)
100 next
110 forj=12552to12559
120 pokej,255
130 next
140 forj=12568to12591:readx:pokej,x:next
150 forj=12752to13276:readx:pokej,x:next
160 poke1,peek(1)or4:pokevc,peek(vc)or1
170 poke53272,(peek(53272)and240)+12
180 forj=0to20
190 fork=0to24
200 pokeh+j+40*k,7:pokeg+j+40*k,37
210 next:next
220 d$="{purple}!!!!"
230 printtab(21)d$
240 printtab(21)d$;"{space*3}{blue}pin table"
250 printtab(10)"{black}#";spc(10);d$
260 printtab(21)d$;"{space*4}{black}#{space*2}1500"
270 printtab(21)d$;"{space*4}#{space*2}1000"
280 printtab(2)"{green}$";spc(4);"{red}$";spc(5);"$";spc(4);"{green}$";spc(2);d$;"{space*4}{blue}#{space*3}500"
290 printtab(21)d$;"{space*4}{red}${space*3}200"
300 printtab(10)"{green}$";spc(10);d$;"{space*4}{green}${space*3}100"
310 printtab(21)d$:printtab(7)"{purple}#";spc(5);"#";spc(7);d$;"{space*3}{red}*********"
320 printtab(21)d$:printtab(4)"{red}$";spc(11);"$";spc(4);d$;"{space*3}{blue}ball{space*4}1"
330 printtab(9)"{black}#";spc(1);"#";spc(9);d$
340 printtab(21)d$;"{space*3}{red}*********"
350 printtab(2)"{blue}#";spc(15);"#";spc(2);d$
360 printtab(8)"{green}$";spc(3);"$";spc(8);d$;"{space*3}{blue}score"
370 printtab(21)d$:printtab(4)"{red}$";spc(11);"$";spc(4);d$;"{space*6}000{space*2}"
380 printtab(21)d$:printtab(21)d$;"{space*3}{red}*********"
390 printtab(6)"$";spc(3);"{green}$";spc(3);"{red}$";spc(6);d$
400 printtab(21)d$;"{space*3}{blue}top":printtab(21)d$
410 printtab(1)"{blue}#";spc(1);"{red}$";spc(1);"{purple}#";spc(1);"{green}$";spc(1);"{black}#";spc(1);"#";
420 printspc(1);"{green}$";spc(1);"{purple}#";spc(1);"{red}$";spc(1);"{blue}#";spc(1);d$;"{space*6}000
430 printtab(21)d$;
440 forj=1to8
450 pokeg+476,j+48:vx=1:vy=1:z=0:nz=0
460 nz=z+vx
470 pokeh+z,7:pokeh+nz,6:z=nz
480 ifz=20andvx=1thenvx=-1:goto500
490 ifz=0thenvx=1
500 geta$:ifa$=""then460
510 q=z+12752:p=peek(q)and15:rn=int(rnd(1)*6)
520 ifp=12thengosub800:goto680
530 ifp=15thenpokeh+int(z/21)*40+z-int(z/21)*21,7:gosub900:goto680
540 ifp=0 and vy=-1 and rn<4thenvy=1:goto630
550 ifp=3 or p=7thenvx=0:goto630
560 ifp=4 and rn>2 and vx=0thenvx=4-rn
570 ifp=5 or p=6thend=1
580 ifd=1 and vy=1 and rn>3thenvx=0:goto630
590 r=peek(q)and1:ifr=1 and vx=1 or r=1 and vx=0thenvx=-1
600 r=peek(q)and2:ifr=2 and vx=-1 or r=2 and vx=0thenvx=1
610 r=peek(q)and4:ifr=4 and vy=1thenvy=-1
620 r=peek(q)and8:ifr=8 and vy=-1thenvy=1
630 nz=z+vx+21*vy:gosub810
640 pokeh+int(z/21)*40+z-int(z/21)*21,7
650 pokeh+int(nz/21)*40+nz-int(nz/21)*21,6
660 z=nz:d=0
670 goto510
680 next
690 ifsm<sthensm=s:s=0:sm$=str$(sm)
700 forl=1tolen(sm$):pokeg+948+l,asc(mid$(sm$,l,1)):next
710 gosub900:gosub900
720 forl=708to716:pokeg+l,32:next
730 goto440
800 pokeh+int(z/21)*40+z-int(z/21)*21,7
810 sp=peek(q)and240:sn=int(sp*100/16)
820 ifsn>200 and p<>12thengosub900:return
830 ifsn=0thenreturn
840 s=s+sn:s$=str$(s)
850 forl=1tolen(s$):pokeg+708+l,asc(mid$(s$,l,1)):next
860 gosub900
870 return
900 poke53280,rn+6:pokesg+1,90+sn/100
910 pokesg+4,21
920 forl=1to200:next
930 poke53280,4:pokesg+4,20
940 return
1000 data0,24,60,189,189,189,153,126,60,66,189,165,165,189,66,60
1010 data0,60,126,126,126,126,60,0
1020 data10,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,9
1030 data2,0,0,0,0,0,0,0,0,5,252,6,0,0,0,0,0,0,0,0,1
1040 data2,0,0,0,0,0,0,0,0,1,0,2,0,0,0,0,0,0,0,0,1
1050 data2,0,0,0,0,0,0,0,0,9,8,10,0,0,0,0,0,0,0,0,1
1060 data2,1,20,22,0,0,37,36,38,0,0,0,37,36,38,0,0,21,20,22,1
1070 data2,17,0,18,0,0,33,0,34,0,0,0,33,0,34,0,0,17,0,18,1
1080 data2,25,24,6,0,0,41,40,42,21,20,22,41,40,42,0,0,25,24,26,1
1090 data2,0,0,0,0,0,0,0,0,17,0,18,0,0,0,0,0,0,0,0,1
1100 data2,0,0,0,0,0,5,172,6,25,24,26,5,172,6,0,0,0,0,0,1
1110 data2,0,0,0,0,0,1,0,2,0,0,0,1,0,2,0,0,0,0,0,1
1120 data2,0,0,37,36,38,9,8,10,0,0,0,9,8,10,37,36,38,0,0,1
1130 data2,0,0,33,0,34,0,0,5,252,7,252,6,0,0,33,0,34,0,0,1
1140 data2,0,0,41,40,42,0,0,1,0,3,0,2,0,0,41,40,42,0,0,1
1150 data2,5,92,6,0,0,0,0,9,8,8,8,10,0,0,0,0,5,92,6,1
1160 data2,1,0,2,0,0,0,21,20,22,0,21,20,22,0,0,0,1,0,2,1
1170 data2,9,8,10,0,0,0,17,0,18,0,17,0,18,0,0,0,9,8,10,1
1180 data2,0,0,37,36,38,0,25,24,26,0,25,24,26,0,37,36,38,0,0,1
1190 data2,0,0,41,40,42,0,0,0,0,0,0,0,0,0,41,40,42,0,0,1
1200 data2,0,0,31,30,32,0,0,0,0,0,0,0,0,0,31,30,32,0,0,1
1210 data2,0,0,0,0,37,36,38,0,21,20,22,0,37,36,38,0,0,0,0,1
1220 data2,0,0,0,0,33,0,34,0,17,0,18,0,33,0,34,0,0,0,0,1
1230 data2,0,0,0,0,33,0,34,0,17,0,18,0,33,0,34,0,0,0,0,1
1240 data3,92,39,36,39,172,23,20,23,252,4,252,23,20,23,172,39,36,39,92,3
1250 data3,0,35,0,35,0,19,0,19,0,3,0,19,0,19,0,35,0,35,0,3
1260 data15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
