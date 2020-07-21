90 rem ** warp trog **
100 screen=1024
101 print chr$(147):gosub 3500
110 goto 2800
120 for a=-cd to cd step 2:u=i:v=j+a:gosub 160:next a
130 for a=-cd to cd step 2:v=j:u=i+a:gosub 160:next a
140 return
150 v=j-ao:u=i
160 if (u<1)or(u>6) then return
170 if (v<1)or(v>6) then return
180 if sgn(a(u,v))=ao then return
190 if a(i,j)=cz*ao then 210
200 if (sgn(a(u,v))=-ao)and((sgn(a(u-cd,v))=-ao)or(sgn(a(u+cd,v))=-ao)) then return
210 n=n+1
220 gosub 1860
230 aa(n)=u:bb(n)=v:ab(n)=i:bc(n)=j
240 poke 251,14:poke 252,20:sys 49152:print"{space*25}"
245 poke 251,1:poke 252,1:sys 49152:print flag+1;"{space*4}"
250 q(n)=q
260 if q(n)>s0 then s0=q(n):s1=aa(n):s2=bb(n):s3=ab(n):s4=bc(n)
270 if flag=0 then s(1)=s1:s(3)=s3:gosub 1820:goto 290
280 goto 300
290 poke 251,7:poke 252,1:sys 49152
291 print" from ";mid$(s$,3,1);",";s4;" to ";mid$(s$,1,1);",";s2
300 if qa(k)-s0<=r(0) then ab=1
310 return
320 dim aa(25),bb(25),q(25),e(20),f(20)
330 dim c(20),d(20),ab(25),bc(25),qa(25)
340 dim b(5,2),a(8,8),r(5),s(5)
350 r$="0000":s$="0000":h$=" "
370 a(1,2)=-1:a(2,2)=-1:a(3,2)=-3:a(5,2)=-1:a(6,2)=-1
380 a(1,5)=1:a(2,5)=1:a(4,5)=3:a(5,5)=1:a(6,5)=1
390 x$="12223252621525455565"
400 cd=1:cz=3
420 a$=chr$(122)+" "+chr$(97)+chr$(123)+chr$(115)+" "+chr$(122)
440 cu=20
450 gosub 2910
460 poke 251,2:poke 252,23:sys 49152
461 print"do you want to go first? (y/n)"
470 get c$:if c$="" then 470
471 poke 251,34:poke 252,23:sys 49152:print c$
472 if c$="y" then ao=1:gosub 2770:goto 1100
480 if c$="n" then gosub 2770:goto 500
490 goto 470
500 t0=-100:mo=mo+cd:r(0)=-100
510 ao=1:s0=-99:ab=0:flag=0:pa=1
520 if fbo=0 then gosub 2410:if bo=0 then 960
530 goto 580
540 i=s(3):j=s(4):s0=-99:ab=0:u=s(1):v=s(2)
550 if k=1 then 630
560 on a(i,j)+4 gosub 210,210,200
570 goto 630
580 for j1=1 to 5
590 i=val(mid$(x$,j1*2+9,1)):j=val(mid$(x$,j1*2+10,1))
600 on a(i,j)+4 gosub 140,140,140,140,150,150,120,120
610 next j1
620 goto 680
630 for jk=1 to 5
640 if ab=1 then 670
650 i=val(mid$(x$,jk*2-1,1)):j=val(mid$(x$,jk*2,1))
660 on a(i,j)+4 gosub 120,120,150,140,140,140,140
670 next jk
680 if n<>0 then 710
690 if flag=0 then poke 251,14:poke 252,20:sys 49152:print"you win":goto 2750
700 if flag=1 then poke 251,14:poke 252,20:sys 49152:print"i win!":goto 2710
710 if flag=1 then return
720 m=n:flag=1:ao=-1:pa=6
730 if m=1 then gosub 2780:goto 930
740 gosub 1560
750 r(0)=-99
760 for k=1 to m
770 e(m-k+1)=aa(k):f(m-k+1)=bb(k):c(m-k+1)=ab(k):d(m-k+1)=bc(k)
780 qa(m-k+1)=q(k):q(k)=0:aa(k)=0:bb(k)=0:bc(k)=0:ab(k)=0
790 next k
800 for k=1 to m
810 n=0
820 ry=a(e(k),f(k)):a(e(k),f(k))=a(c(k),d(k)):a(c(k),d(k))=0
830 gosub 540
840 qz=qa(k)-s0
850 if qz>r(0) then 870
860 goto 910
870 r(0)=qz:r(1)=e(k):r(2)=f(k):r(3)=c(k):r(4)=d(k)
880 s(1)=s1:s(2)=s2:s(3)=s3:s(4)=s4
890 gosub 1820
900 poke 251,7:poke 252,1:sys 49152
901 print" from ";mid$(r$,3,1);",";r(4);" to ";mid$(r$,1,1);","r(2)
910 a(c(k),d(k))=a(e(k),f(k)):a(e(k),f(k))=ry
920 next k
930 if r(0)<-0.9 and r(0)>-7 and wa<6 then wa=wa+1:gosub 2290:goto 970
940 if rnd(1)>0.2 or r(0)>0.1 then 960
950 if (qt<7 or qt>12)and qy<-6 and wa<6 then wa=wa+1:gosub 2290:goto 970
960 gosub 1820:goto 1000
970 s$="warp":s(2)=0:s(4)=0
980 poke 251,14:poke 252,20:sys 49152
981 print"warp"
990 goto 1100
1000 poke 251,7:poke 252,1:sys 49152
1001 print" from ";mid$(r$,3,1);",";r(4);" to ";mid$(r$,1,1);",";r(2)
1010 if r(2)=1 and a(r(3),r(4))=1 then a(r(3),r(4))=3
1020 if abs(r(1)-r(3))=1 and r(2)=3 and a2=r(1) and b2=r(2)+1 then a(a2,b2)=0
1030 ry=a(r(1),r(2)):a(r(1),r(2))=a(r(3),r(4)):a(r(3),r(4))=0:if bo=0 then 1080
1040 for i=1 to 5
1041 w$=h$+mid$(x$,2*i+9,2)
1042 l$=str$(r(3)*10+r(4))
1043 z$=str$(r(1)*10+r(2))
1044 if w$=l$ then x$=left$(x$,2*i+8)+right$(z$,2)+right$(x$,20-(2*i+10)):qf=i
1050 next i
1060 for i=1 to 5
1061 w$=mid$(x$,2*i-1,2):l$=mid$(x$,2*qf+9,2)
1062 if w$=l$ then x$=left$(x$,2*i-2)+"00"+right$(x$,20-(2*i))
1070 next i
1080 poke 251,r(1)*2+9:poke 252,(7-r(2))*2+2:sys 49152
1081 t=a(r(1),r(2))+4
1082 print chr$(28);chr$(asc(mid$(a$,t,1)))
1090 poke 251,r(3)*2+9:poke 252,(7-r(4))*2+2:sys 49152
1091 print chr$(30);mid$(a$,4,1);chr$(144)
1100 flag=0:n=0:t0=-100:ao=cd
1110 poke 251,6:poke 252,23:sys 49152
1111 print chr$(18):for l=0 to 39
1112 poke 1944+l,160:poke 56216+l,6
1113 next l:poke 251,6:poke 252,23:sys 49152:print chr$(146)
1114 poke 54296,15:poke 54277,17:poke 54278,129:poke 54273,17:poke 54272,37
1116 poke 54276,33:for l=1 to 50:next l
1119 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
1120 poke 251,6:poke 252,23:sys 49152:print"move= ";mo
1130 a5$="your move"
1140 poke 251,16:poke 252,23:sys 49152:printa5$
1150 qt=0:qy=0
1151 for i=1 to 5
1152 i1=a(val(mid$(x$,i*2-1,1)),val(mid$(x$,i*2,1)))
1160 j1=a(val(mid$(x$,i*2+9,1)),val(mid$(x$,i*2+10,1)))
1162 qt=qt+i1:qy=qy+j1:next i
1170 if qt=0 then poke 251,14:poke 252,20:sys 49152:print"you win":goto 2750
1180 if qy=0 then poke 251,14:poke 252,20:sys 49152:print"i win":goto 2750
1190 gosub 3020
1200 a1=asc(z$):if a1=89 or a1=87 or a1=81 then goto 1250
1201 if a1<65 or a1>70 then gosub 2260:goto 1190
1210 poke screen+946,a1-64
1211 poke 56242,0
1220 gosub 3020
1230 b1=asc(z$):if b1<49 or b1>54 then gosub 2260:goto 1220
1240 poke screen+947,b1
1241 poke 56243,0
1250 if a1=89 and s(2)<>0 then a1=s(3)+64:b1=s(4)+48:a2=s(1)+64:b2=s(2)+48:goto 1350
1255 if a1=89 and s(2)=0 then gosub 2260:goto 1190
1260 if a1=87 and wb<6 then wb=wb+1:gosub 2290:goto 1540
1270 if a1=87 and wb>5 then a5$="no warps":goto 1140
1280 if a1=81 then goto 4000
1290 gosub 3020
1300 a2=asc(z$):if a2<65 or b2>70 then gosub 2260:goto 1290
1310 poke screen+950,a2-64
1311 poke 56246,0
1320 gosub 3020
1330 b2=asc(z$):if b2<49 or b2>54 then gosub 2260:goto 1320
1340 poke screen+951,b2
1341 poke 56247,0
1350 a1=a1-64:a2=a2-64:b1=b1-48:b2=b2-48
1360 if a(a2,b2)<0 then 1450
1370 if a(a1,b1)>-1 then 1450
1380 if a(a1,b1)=-cd then 1420
1390 if abs(b2-b1)=1 and abs(a2-a1)=0 then 1460
1400 if abs(b2-b1)=0 and abs(a2-a1)=1 then 1460
1410 goto 1450
1420 if b2-b1<>cd or a2<>a1 then 1450
1430 if a(a2,b2)>0 and (a(a2+cd,b2)>0 or a(a2-cd,b2)>0) then 1450
1440 goto 1460
1450 gosub 2260:goto 1140
1460 if b2=6 and a(a1,b1)=-1 then a(a1,b1)=-3
1470 poke 251,a2*2+9:poke 252,(7-b2)*2+2:sys 49152
1471 print chr$(144);chr$(asc(mid$(a$,a(a1,b1)+4,1)))
1480 poke 251,a1*2+9:poke 252,(7-b1)*2+2:sys 49152
1481 print chr$(30);mid$(a$,4,1);chr$(144)
1490 a(a2,b2)=a(a1,b1):a(a1,b1)=0
1500 qz=0:for i=1 to 5
1501 w$=h$+mid$(x$,2*i-1,2):l$=str$(a1*10+b1)
1502 z$=str$(a2*10+b2)
1503 if w$=l$ then x$=left$(x$,2*i-2)+right$(z$,2)+right$(x$,20-(2*i)):qz=2*i-1
1510 next i
1520 for i=1 to 5
1521 w$=mid$(x$,2*i+9,2):l$=mid$(x$,qz,2)
1522 if w$=l$ then x$=left$(x$,2*i+8)+"00"+right$(x$,20-(2*i+10))
1530 next i
1540 goto 500
1550 goto 500
1560 ss=1:poke 251,1:poke 252,1:sys 49152:print" #"
1570 b(1,1)=1:b(1,2)=m
1580 ll=b(ss,1):rr=b(ss,2):ss=ss-1
1590 ii=ll:jj=rr:xx=q(int(rnd(1)*(rr-ll)+0.5)+ll)
1600 if q(ii)>=xx then 1620
1610 ii=ii+1:goto 1600
1620 if xx>=q(jj) then 1640
1630 jj=jj-1:goto 1620
1640 if ii>jj then 1710
1650 ww=q(ii):q(ii)=q(jj):q(jj)=ww
1660 ww=aa(ii):aa(ii)=aa(jj):aa(jj)=ww
1670 ww=bb(ii):bb(ii)=bb(jj):bb(jj)=ww
1680 ww=ab(ii):ab(ii)=ab(jj):ab(jj)=ww
1690 ww=bc(ii):bc(ii)=bc(jj)=bc(jj)=ww
1700 ii=ii+1:jj=jj-1
1710 if ii<=jj then 1600
1720 if jj-ll>=rr-ii then 1760
1730 if ii>=rr then 1750
1740 ss=ss+1:b(ss,1)=ii:b(ss,2)=rr
1750 rr=jj:goto 1790
1760 if ll>=jj then 1780
1770 ss=ss+1:b(ss,1)=ll:b(ss,2)=jj
1780 ll=ii
1790 if ll<rr then 1590
1800 if ss>0 then 1580
1810 return
1820 for ki=1 to 3 step 2
1830 r$=left$(r$,ki-1)+chr$(r(ki)+64)+right$(r$,4-ki)
1831 s$=left$(s$,ki-1)+chr$(s(ki)+64)+right$(s$,4-ki)
1840 next ki
1850 return
1860 q=rnd(1)/40
1870 q=q+abs(a(u,v))
1880 if a(u,v-ao)=-cz*ao then q=q-2
1890 if a(u,v-ao)=-ao then q=q-0.75:goto 1910
1900 goto 1920
1910 if (sgn(a(u+cd,v))=ao or sgn(a(u-cd,v))=ao) and abs(j-v)=1 then q=q+0.75
1920 if a(u,v+ao)=-cz*ao then q=q-0.6*abs(a(i,j))
1930 if a(u-cd,v)=-cz*ao or a(u+cd,v)=-cz*ao then q=q-0.6*abs(a(i,j))
1940 if a(i,j+ao)=-cz*aoora(i-cd,j)=-cz*ao or a(i+cd,j)=-cz*ao then q=q+0.35
1950 if a(i,j)=ao then 2160
1960 q=q+u/100+v/100
1970 if qt-qy<10 then q=q+(1/(abs(u-a2)+8))+(1/(abs(v-b2)+8))
1980 if (i=3ori=4)and (j=3orj=4) then q=q-0.1
1990 q=q-((u=1)+(u=6)+(v=1)+(v=6))/18
2000 q=q+((i=1)+(i=6)+(j=1)+(j=6))/10
2010 if a(u,v+ao)=-ao then q=q+0.3
2020 for ca=-2 to 2 step 4
2030 if u+ca<cd then next ca
2040 if sgn(a(u+ca,v))=-ao then q=q+0.15*abs(a(u+ca,v))/2
2050 if v+ca<cd then next ca
2060 if sgn(a(u,v+ca))=-ao then q=q+0.15*abs(a(u,v+ca))/2
2070 next ca
2080 for ca=-1 to 1 step 2
2090 if (a(i+ca,j-ca)=-cz-ao)or(a(i+ca,j+ca)=-cz*ao) then q=q-0.22
2100 if sgn(a(u+ca,v-ca))=-ao then q=q+0+0.1*abs(a(u+ca,v-ca))
2110 if sgn(a(u+ca,v+ca))=-ao then q=q+0.1+0.1*abs(a(u+ca,v+ca))
2120 if a(u+ca,v)=-ao then q=q+0.3
2130 if a(u+ca,v)=ao then q=q+0.1
2140 next ca
2150 return
2160 if v=pa then q=q+0.5
2170 if v=pa+ao then q=q+0.3
2180 if v=pa+2*ao then q=q+0.2
2190 if sgn(a(u-cd,v))=ao then q=q+0.2
2200 if sgn(a(u+cd,v))=ao then q=q+0.2
2210 qx=0:for ca=v to pa step -ao
2220 qx=qx+a(u,ca)
2230 next ca
2240 if sgn(qx)=0 or sgn(qx)=ao then q=q+0.15
2250 return
2260 a5$="illegal{space*2}"
2261 poke 53281,2:poke 54296,15:poke 54277,17:poke 54278,129
2262 poke 54273,10:poke 54272,60:poke 54276,33
2263 for l=1 to 100:next l:poke 54277,0:poke 54276,0:poke 54278,0:poke 54296,0
2270 poke 53281,7
2280 return
2290 for i=6 to 1 step -1:for j=6 to 1 step -1
2300 poke 53281,i:poke 53280,j
2310 poke 54296,15:poke 54272,5+i:poke 54273,5*i:poke 54277,129:poke 54278,129
2311 poke 54276,60
2312 poke 54279,5+j:poke 54280,5*j:poke 54284,68:poke 54285,130:poke 54283,33
2320 qy=int(6*rnd(1)+1):qz=int(6*rnd(1)+1)
2330 if a(i,j)=-cz*ao then 2350
2340 goto 2370
2350 if sgn(a(qy,qz))=ao then 2352
2351 goto 2360
2352 poke 54290,17:poke 54287,7:poke 54286,163:poke 54292,129:poke 54291,129
2353 for l=0 to 100:next l:poke 54290,0:poke 54291,0:poke 54292,0
2360 if sgn(a(qy,qz))<>-ao then a(qy,qz)=a(i,j):a(i,j)=0:gosub 2840
2370 next j:next i
2380 poke 53281,7:poke 53280,7
2390 poke 54296,0:poke 54276,0:poke 54283,0:poke 54277,0:poke 54284,0
2391 poke 54278,0:poke 54285,0
2400 gosub 2930:bo=1:return
2410 if mo=1 then j$="4445344":goto 2680
2420 if mo=2anda(4,4)=czanda(4,2)<>-czanda(3,3)<>-cz then 2440
2430 goto 2460
2440 if a(3,4)=-cz then j$="3444334":goto 2680
2450 j$="4344343":goto 2680
2460 if mo=2 then qz=a2
2470 if qz=0 then bo=1:return
2480 on qz goto 2490,2530,2560,2590,2620,2650
2490 if mo=2 then j$="2425224":goto 2680
2500 if mo=3 and a2=2 and b2=3 then j$="1415114":goto 2680
2510 if mo=3 and a2=3 and b2=3 then j$="5455454":goto 2680
2520 bo=1:return
2530 if mo=2 then j$="1415114":goto 2680
2540 if mo=3 and a2=1 and b2=3 then j$="2425224":goto 2680
2550 bo=1:return
2560 if mo=2 then qz=int(rnd(1)*2):if a(6-qz,3)=0 then 2580
2570 bo=1:return
2580 r(1)=6-qz:r(2)=4:r(3)=6-qz:r(4)=5
2581 z$=str$(10*r(1)+r(2))
2582 x$=left$(x$,(5-qz)*2+8)+right$(z$,2)+right$(x$,20-((5-qz)*2+10))
2583 return
2590 if mo=2 and a(4,5)=cz then j$="4445344":goto 2680
2600 if mo=2 and a(4,4)=cz and a(6,3)=0 then j$="6465564":goto 2680
2610 bo=1:return
2620 if mo=2 and a(6,3)=0 then j$="6465564":goto 2680
2630 if mo=3 and a(5,3)=-cd then j$="5455454":goto 2680
2640 bo=1:return
2650 if mo=2 then j$="1415114":goto 2680
2660 if mo=3 and a(1,3)=-cd then j$="5455454":goto 2680
2670 bo=1:return
2680 for i=1 to 5:r(i)=val(mid$(j$,i,1)):next i
2690 x$=left$(x$,r(5)*2+8)+mid$(j$,6,2)+right$(x$,20-(r(5)*2+10))
2700 return
2710 r(3)=c(k):r(1)=e(k):gosub 1820:r(2)=f(k):r(4)=d(k)
2720 poke 251,7:poke 252,1:sys 49152
2721 print" from ";mid$(r$,3,1);",";r(4);" to ";mid$(r$,1,1);",";r(2)
2730 poke 251,r(1)*2+9:poke 252,(7-r(2))*2+2:sys 49152
2731 t=a(r(1),r(2))+4
2732 print chr$(28);chr$(asc(mid$(a$,t,1)))
2740 poke 251,r(3)*2+9:poke 252,(7-r(4))*2+2:sys 49152
2741 print chr$(30);mid$(a$,4,1);chr$(144)
2750 for i=33 to 17 step -16:poke 54296,15:poke 54277,17:poke 54278,129
2751 poke 54273,25:poke 54272,177:poke 54276,i
2752 for k=1 to 100:next k:next i
2753 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
2760 poke 251,0:poke 252,0:sys 49152:end
2770 return
2780 r(0)=s0:r(1)=s1:r(2)=s2:r(3)=s3:r(4)=s4
2790 s(1)=0:s(2)=0:s(3)=0:s(4)=0:return
2800 poke 251,15:poke 252,10:sys 49152:print chr$(18);"warp"
2810 poke 251,15:poke 252,12:sys 49152
2820 print chr$(18);"trog"
2825 for i=0 to 1000:next i
2830 goto 320
2840 on ao+2 goto 2880,2850,2850
2850 for k=1 to 5
2851 w$=h$+mid$(x$,2*k+9,2):l$=str$(qy*10+qz)
2852 if w$=l$ then x$=left$(x$,2*k+8)+"00"+right$(x$,20-(2*k+10))
2860 w$=h$+mid$(x$,2*k-1,2):l$=str$(10*i+j):z$=str$(10*qy+qz)
2862 if w$=l$ then x$=left$(x$,2*k-2)+right$(z$,2)+right$(x$,20-(2*k))
2870 next k:return
2880 for k=1 to 5
2881 w$=h$+mid$(x$,2*k-1,2):l$=str$(qy*10+qz)
2882 if w$=l$ then x$=left$(x$,2*k-2)+"00"+right$(x$,20-(2*k))
2890 w$=h$+mid$(x$,2*k+9,2):l$=str$(10*i+j):z$=str$(10*qy+qz)
2891 if w$=l$ then x$=left$(x$,2*k+8)+right$(z$,2)+right$(x$,20-(2*k+10))
2900 next k:return
2910 print chr$(147):poke 53281,7:poke 53280,7
2930 for i=1 to 6:for j=6 to 1 step -1
2940 poke 251,22:poke 252,j*2+2:sys 49152:print chr$(31);7-j
2950 poke 251,i*2+9:poke 252,(7-j)*2+2:sys 49152
2960 w=a(i,j):if w<0 then print chr$(144);chr$(asc(mid$(a$,w+4,1)))
2970 if w>0 then print chr$(28);chr$(asc(mid$(a$,w+4,1)))
2980 if w=0 then print chr$(30);mid$(a$,4,1)
2990 next j:next i
3000 poke 251,11:poke 252,16:sys 49152:print chr$(31);"a b c d e f";chr$(144)
3001 poke 251,6:poke 252,23:sys 49152
3002 print chr$(18):for l=0 to 159
3003 poke 1864+l,160:poke 56136+l,6
3004 next l:poke 251,6:poke 252,23:sys 49152:print chr$(146)
3010 return
3020 getz$:if z$="" goto 3020
3030 if z$>chr$(48) and z$<chr$(55) then 3080
3040 if z$>chr$(64) and z$<chr$(71) then 3080
3050 if z$=chr$(81) or z$=chr$(87) or z$=chr$(89) then 3080
3070 goto 3020
3080 return
3200 gosub 2260:goto 1140
3500 for p=0 to 8:read h
3501 poke 49152+p,h
3502 next p:for l=54272 to 54272+24:poke l,0:next:return
3503 data 166,252,164,251,24,32,240,255,96
4000 poke 251,7:poke 252,23:sys 49152
4001 print chr$(18):for l=0 to 39
4002 poke 1944+l,160:poke 56216+l,6
4003 next l:poke 251,6:poke 252,23:sys 49152:print chr$(146)
4004 poke 251,7:poke 252,23:sys 49152
4010 print"try ";mid$(s$,3,1);s(4);"{space*2}";mid$(s$,1,1);s(2)
4020 goto 1190