10 rem ** snorkel **
20 print"{clear}":poke53280,1:poke53281,3:poke53265,peek(53265)and239
30 poke56334,peek(56334)and254:poke1,peek(1)and251
40 forj=0to79:x=peek(53632+j):poke14720+j,x:next
50 poke1,peek(1)or4:poke56334,peek(56334)or1
60 poke52,48:poke56,48:poke53272,(peek(53272)and240)+14
70 poke649,1:poke650,128
80 forj=0to7:poke14368+j,255:next
90 forj=0to7:poke14376+j,0:next
100 forj=12288to12734:readx:pokej,x:next
110 forj=14334to14365:readx:pokej,x:next
120 g=1024:h=55296:v=53248:vc=v+30:vs=v+21:vx=v+16:u=1:z=0:gb=g+170:sy=63:by=256
130 forj=0to199:pokeg+j,4:pokeh+j,6:next
140 forj=200to919:pokeg+j,5:next
150 forj=920to959:pokeg+j,3:pokeh+j,10:next
160 forj=960to999:pokeg+j,4:pokeh+j,7:next
170 forj=1to5:pokeg+920+2^j,1:pokeh+920+2^j,0:next
180 forj=0to5:poke2040+j,192+j:next
190 forj=0to2:poke2045+j,196+j:next
200 pokev+39,1:pokev+40,0:pokev+41,6:pokev+42,2:pokev+43,1:pokev+44,4
210 pokev+45,0:pokev+46,0
220 pokev,72:pokev+1,74:pokev+29,5:pokegb,0
230 xp=255:zp=2:yp=rnd(1)*60+106:pokev+2,xp:pokev+3,yp
240 pokev+4,rnd(1)*232+24:pokev+5,rnd(1)*80+126:pokev+23,4:sf=600
250 fm=255:fw=-1:pokev+6,fm:pokev+7,82
260 f1=344:pokev+8,88:pokev+9,rnd(1)*45+122
270 f2=344:pokev+10,88:pokev+11,rnd(1)*45+122
280 pokevx,50:pokevs,63
290 ti$="000000":poke53265,peek(53265)or16
300 gosub1500:b=peek(v+31):ifti<tpthenpoke53280,15:goto330
310 tp=z:poke53280,u
320 geta$:ifa$<>""thena=asc(a$)
330 ifd<90thenfs=z:fc=z
340 iffs=uthena$=";":a=59
350 ifa=47andd=zthengosub1200
360 ifa=47andd>zandd<222thend=d+8:pokev+13,d:pokev+15,d:pokevs,(peek(vs)andsy)+64
370 ifd<94andd<>zthend=z:pokevs,peek(vs)and127:pokegb,z:pokevx,peek(vx)andsy
380 ifa=59andd>93andd<230thend=d-8:pokev+13,d:pokev+15,d:pokevs,(peek(vs)andsy)+128
390 ifa=59ord=zorrnd(u)<.6ortp>zthen430
400 x=x+8:ifx>336thenx=24
410 ifx>255thenpokevx,(peek(vx)andsy)+192:pokev+12,x-by:pokev+14,x-by:goto430
420 pokevx,peek(vx)andsy:pokev+12,x:pokev+14,x
430 gosub1500
440 ifcf=zthen480
450 ifcc=32orcc=16thenfs=u:tp=ti+600
460 ifcc=8orcc=4then920
470 ifcc=2thenfs=u:tp=ti+1800
480 ifd<222then520
490 bg=g+917+x/8
500 ifpeek(bg)=uthenpokebg,2:fc=u:tp=ti+600
510 ifpeek(bg)=3thenpokebg+h-g,3:pokebg,4:fs=u:p=p+u
520 ifti>18000thenft=u:goto920
530 pokeg,asc(mid$(ti$,4,u)):pokeg+u,5
540 pokeg+2,asc(mid$(ti$,5,u)):pokeg+3,asc(right$(ti$,u))
550 p$=str$(p):pokeg+39,asc(right$(p$,u))
560 iflen(p$)=2thenpokeg+38,asc(left$(p$,1))
570 ifp=35then920
580 xp=xp-2:ifxp<zandzp=2thenxp=255:zp=z
590 ifxp<zandzp=zthenxp=255:zp=2
600 yp=yp+2:ifyp>180thenyp=126
610 pokev+2,xp:pokevx,(peek(vx)and253)+zp:pokev+3,yp
620 gosub1500
630 ifcf=zthen650
640 ifcc=2thenfs=u:tp=ti+1800
650 ifti<sfthen700
660 ifti>sfandti<sf+2400thenpokevs,peek(vs)and251:goto730
670 ifti<1800+sfthen730
680 pokev+4,rnd(u)*232+24:pokev+5,rnd(u)*80+126:pokevs,(peek(vs)and251)+4
690 sf=800+ti
700 gosub1500
710 ifcf=zthen730
720 ifcc=4then920
730 fm=fm+fw:iffm=-uthenfm=z:fw=u
740 iffm>255thenfm=255:fw=-u
750 pokev+6,fm
760 gosub1500
770 ifcf=zthen790
780 ifcc=8then920
790 f1=f1-10:iff1<10thenf1=344
800 iff1>255thenpokevx,(peek(vx)and239)+16:pokev+8,f1-by:goto820
810 pokevx,(peek(vx)and239):pokev+8,f1
820 gosub1500
830 ifcf=zthen850
840 ifcc=16thenfs=u:tp=ti+600
850 f2=f2-20:iff2<10thenf2=344
860 iff2>255thenpokevx,(peek(vx)and223)+32:pokev+10,f2-by:goto880
870 pokevx,(peek(vx)and223):pokev+10,f2
880 gosub1500
890 if cf=zthen910
900 ifcc=32thenfs=u:tp=ti+600
910 goto300
920 poke53280,2
930 forj=1to4000:next
940 print"{clear}{red}":pokevs,0:poke53272,21
950 ifp>10thenprint"{down*2}{right*2}a good day's work!"
960 ifcc=8thenprint"{right*2}the man-of-war stung you"
970 ifcc=4thenprint"{right*2}the sea-serpent caught you"
980 iffc=1thenprint"{right*2}badly injured by a clam"
990 ifft=1thenprint"{right*2}time to rest"
1000 print"{down*3}{right*2}you collected";p;"pearl oysters"
1010 geta$:ifa$<>" "then1010
1020 tp=0:a=0:fs=0:ft=0:p=0:fc=0:d=0
1030 print"{clear}":poke53280,1:poke53281,3
1040 poke53272,(peek(53272)and240)+14
1050 poke53265,peek(53265)and235
1060 goto130
1200 d=94:pokegb,4:x=128:pokev+12,x:pokev+14,x
1210 pokev+13,d:pokev+15,d:pokevs,peek(vs)+64
1220 return
1500 c=peek(vc):cc=(c-pc)andsy:pc=candsy
1510 cf=z:ifc>sythencf=u
1520 return
2000 data8,0,0,8,0,0,28,0,0,8,0,0,8,0,0,8,0,0,8,0,0,8,0,0
2010 data 8,192,0,8,128,0,9,255,0,9,85,0,9,255,3,255,255,255,127,255,255
2020 data 63,255,254,31,255,253,15,255,253,0,0,0,0,0,0,0,0,0,0
2030 data 4,124,48,56,254,8,65,247,4,65,242,2,65,255,2,33,255,4,31,254,248
2040 data 195,85,0,133,82,240,74,81,12,50,144,130,4,136,66,4,136,34
2050 data 25,4,17,33,4,8,65,2,8,66,66,8,34,132,34,17,40,72,72,32,48,48,0,0,0
2060 data 0,0,0,33,128,0,34,64,0,228,32,0,24,16,12,0,8,18,0,4,33,0,2,65
2070 data 0,1,2,17,0,4,32,128,56,127,192,64,68,96,64,85,112,32,127,248,32
2080 data 127,207,192,117,199,128,53,128,0,31,0,0,12,0,0,0,0,0,0
2090 data 0,63,0,0,255,0,1,215,0,3,215,0,3,215,0,3,214,0,3,214,0,7,214,0
2100 data 7,255,0,7,255,0,5,37,0,5,37,0,8,168,128,8,168,128,17,69,0
2110 data 17,69,0,8,168,128,8,168,128,5,20,64,5,20,64,24,168,48,0
2120 data 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,6,1,0,14,3,63,254,7,103,255,135
2130 data 247,255,254,255,255,254,3,255,206,63,64,199,0,96,135,0,112,7
2140 data 0,120,3,0,28,1,0,0,0,0,0,0,0,0,0,0
2150 data 48,0,0,48,0,0,48,0,0,208,0,0,208,0,0,208,0,0,80,0,0,120,0,0,24,0,0,24
2160 data 0,0,63,0,0,41,0,0,45,0,0,45,0,0,33,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0
2170 data 0,0,0,0,48,0,0,48,0,0,16,0,0,56,0,0,92,0,0,154,0,0,154,0,0,154,0,0
2180 data 90,0,0,40,0,0,68,0,0,36,0,0,52,0,0,54,0,0,54,0,0,6,0,0,0,0,0,0,0,0,0
2190 data 0,0,0,0,0,0,0,0,0
2200 data 199,199,231,199,131,255,255,16,24,12,198,99,51,31,15
2210 data 56,124,62,63,31,31,15,15,24,60,189,219,102,60,60,24
