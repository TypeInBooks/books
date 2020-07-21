1 rem ** book opening **
5 poke 53281,7:poke 53280,7
10 print chr$(147);tab(10)"book opening"
20 print tab(5)"transfering character set"
30 print tab(5)"s to ring positions"
40 poke 52,56:poke 56,56:rem reserve space for character set
50 for i=0 to 55:read a:poke 49152+i,a:next i:sys 49152
60 rem ** transfer character set to ram **
70 data 169,142,32,210,255,173,14,220,41,254,141,14,220,165,1,41,251,133,1,162
80 data 8,160,0,185,0,208,153,0,56,200,208,247,238,25,192,238,28,192,202,208
90 data 236,165,1,9,4,133,1,173,14,220,9,1,141,14,220,96
100 rem ** read chess character data **
110 for i=0 to 47:read a:poke 14600+i,a:next i
115 poke 53272,(peek(53272) and 240) or 14:rem ** switch to new character set **
120 rem ** pawn **
125 data 0,0,16,56,56,16,124,0
130 rem ** knight **
135 data 0,16,56,120,24,56,124,0
140 rem ** bishop **
145 data 0,16,40,68,108,56,124,0
150 rem ** rook **
155 data 0,84,124,56,56,124,124,0
160 rem ** queen **
165 data 0,84,40,16,108,124,124,0
170 rem ** king **
175 data 0,16,56,16,56,124,124,0
180 dim a(8,8),c$(10,10),d$(10,10),x(4),y(4),x$(4),y$(4)
190 rem ** setting up board **
200 for i=1 to 8:read a(i,8):a(i,1)=-a(i,8):a(i,7)=33:a(i,2)=-33:next i
210 rem **data in 220 are ascii values for  r,n,b,q,k,b,n,r
220 data 36,34,35,37,38,35,34,36
230 z=10:rem ** z=no of openings stored **
240 for j=1 to z:for i=1 to 8
250 read d$(i,j):read c$(i+1,j)
260 next i:next j
270 data 5254,3735,7163,4746,4244,3544,6344,7866,2133,2836,3175,3847,4142
280 data 1838,5131,2644
290 data 5254,3735,7163,4746,4244,3544,6344,7866,2133,7776,3153,6877,6152
300 data 2836,5171,5878
310 data 5254,5755,7163,2836,6125,1716,2514,7866,5171,6857,6151,2725,1423
320 data 4746,3233,5878
330 data 5254,5755,7163,2836,6134,6835,3233,7866,4244,5544,3344,3524,3142
340 data 2442,2142,4745
350 data 5254,5755,6264,5564,7163,7775,6134,4746,5171,8786,4244,6877,3233
360 data 2836,7273,7574
370 data 5254,5756,4244,4745,2133,6824,5455,3735,1213,2433,2233,7857,4174
380 data 3544,7477,8878
390 data 4244,4745,3234,5756,2133,7866,3175,6857,7163,5878,5253,2847,1131
400 data 3736,6143,4534
410 data 4244,7866,3234,5756,2133,6824,5253,2726,6143,3827,7163,2433,2233
420 data 4745,3113,2847
430 data 4244,7866,3234,7776,2133,6877,5254,4746,6152,5878,7163,5755,5171
440 data 2847,4445,4735
450 data 3234,3735,2133,2836,7273,7776,6172,6877,7163,7866,5171,5878,4244
455 data 3544,6344,3644
460 for i=0 to 8:read a:poke 49152+i,a:next i
470 data 166,252,164,251,24,32,240,255,96
475 mo=0:print chr$(147)
500 input "choose your opening";b:if b<0 or b>z then 500
505 if b=0 then b=int(rnd(1)*10)+1
510 bo=1:print chr$(147)
520 mo=mo+1
530 if bo<>0 then gosub 910:if bo<>0 then 600
540 poke 251,2:poke 252,22:sys 49152:print"{space*36}"
550 poke 251,6:poke 252,23:sys 49152:print"{space*33}"
560 poke 251,8:poke 252,23:sys 49152:print chr$(31);"end of book":gosub 1300
570 poke 251,0:poke 252,22:sys 49152:end
580 x$(1)="0":x$(2)="0":x$(3)="0":x$(4)="0"
600 poke 251,8:poke 252,1:sys 49152
610 print chr$(30);"from ";x$(1);",";x$(2);",";" to ";x$(3);",";x$(4)
620 if a(x(3),x(4))=-38 then r=1:r1=x(3):gosub 880:rem castling
630 rem ** screen display **
640 for j=8 to 1step-1:for i=1 to 8
650 poke 251,(2*i+6):poke 252,22-(j*2+2):sys 49152
660 if a(i,j)=0 then print chr$(30);chr$(123)
670 if a(i,j)>0 then print chr$(5);chr$(a(i,j))
680 if a(i,j)<0 then print chr$(31);chr$(-a(i,j))
685 next i
690 poke 251,(2*i+5):poke 252,22-(j*2+2):sys 49152:print chr$(31);j:next j
695 poke 251,8:poke 252,20:sys 49152:print chr$(31);"a b c d e f g h "
700 poke 251,2:poke 252,22:sys 49152:print"{space*36}"
710 poke 251,6:poke 252,23:sys 49152:print"{space*33}"
711 gosub 1300
712 poke 251,8:poke 252,23:sys 49152:print"your move from "
713 gosub 1200
714 a1=asc(l$)-64:if a1=17 then 800
715 if a1<1 or a1>8 then 713
716 poke 251,24:poke 252,23:sys 49152:print chr$(a1+64)
717 gosub 1200
718 b1=asc(l$)-48:if b1<1 or b1>8 then 717
719 poke 251,25:poke 252,23:sys 49152:printb1
720 poke 251,27:poke 252,23:sys 49152:print" to "
725 gosub 1200
730 a2=asc(l$)-64:if a2<1 or a2>8 then 720
740 poke 251,32:poke 252,23:sys 49152:print chr$(a2+64)
750 gosub 1200
760 b2=asc(l$)-48:if b1<1 or b2>8 then 750
780 poke 251,33:poke 252,23:sys 49152:printb2
790 goto 830
800 poke 251,2:poke 252,22:sys 49152
810 print"book library suggests from"
820 poke 251,29:poke 252,22:sys 49152:printy$(1);y$(2);" to ";y$(3);y$(4):goto 710
830 m$=str$(a1):n$=str$(a2):o$=str$(b1):p$=str$(b2)
840 a1$=right$(m$,len(m$)-1):a2$=right$(n$,len(n$)-1)
845 b1$=right$(o$,len(o$)-1):b2$=right$(p$,len(p$)-1)
850 if a(a1,b1)<33 or a(a1,b1)>38 then 700
852 if a(a2,b2)>32 then 700
855 a(a2,b2)=a(a1,b1):a(a1,b1)=0
856 poke 251,a1*2+6:poke 252,22-(b1*2+2):sys 49152:print chr$(30);chr$(123)
857 poke 251,a2*2+6:poke 252,22-(b2*2+2):sys 49152
858 print chr$(5);chr$(a(a2,b2))
860 if a(a2,b2)=38 then r=8:r1=a2:gosub 880
870 goto 520
875 rem **castling**
880 if r1=3 then a(4,r)=a(1,r):a(1,r)=0
890 if r1=7 then a(6,r)=a(8,r):a(8,r)=0
900 return
910 bo$="":bp$=a1$+b1$+a2$+b2$
920 if b>0 then bo=b:if bp$=c$(mo,bo) then 1010
930 for i=1 to z:rem **z=no of book openings**
940 if (bp$=c$(mo,i)) and (bq$=d$(mo-1,i)) then 960
950 goto 970
960 if br$=c$(mo-1,1) then w$=str$(i):bo$=bo$+right$(w$,len(w$)-1)
970 next i
980 if bo$="" then bo=0:return
990 bs=int(len(bo$)*rnd(1)+1)
1000 bo=val(mid$(bo$,bs,1))
1010 if val(d$(mo,bo))=0 then bo=0:return
1020 x(1)=val(left$(d$(mo,bo),1))
1030 x(2)=val(mid$(d$(mo,bo),2,1))
1040 x(3)=val(mid$(d$(mo,bo),3,1))
1050 x(4)=val(right$(d$(mo,bo),1))
1055 if a(x(1),x(2))<-38 or a(x(1),x(2))>-33 then bo=0:return
1060 w1$=str$(x(1)):z1$=right$(w1$,len(w1$)-1)
1070 w2$=str$(x(2)):z2$=right$(w2$,len(w2$)-1)
1080 w3$=str$(x(3)):z3$=right$(w3$,len(w3$)-1)
1090 w4$=str$(x(4)):z4$=right$(w4$,len(w4$)-1)
1100 bq$=z1$+z2$+z3$+z4$:br$=bp$
1110 a(x(3),x(4))=a(x(1),x(2)):a(x(1),x(2))=0
1120 y$(1)=left$(c$(mo+1,bo),1)
1130 y$(2)=mid$(c$(mo+1,bo),2,1)
1140 y$(3)=mid$(c$(mo+1,bo),3,1)
1150 y$(4)=right$(c$(mo+1,bo),1)
1160 for k=1 to 3step2
1170 h$=str$(x(k)):g=asc(right$(h$,len(h$)-1)):x$(k)=chr$(g+16)
1180 v=asc(y$(k)):y$(k)=chr$(v+16)
1185 h$=str$(x(k+1)):x$(k+1)=right$(h$,len(h$)-1)
1190 next k
1195 return
1200 get l$:if l$="" then 1200
1210 if asc(l$)=81 then 1250
1220 if asc(l$)>49 or asc(l$)<56 then 1250
1230 if asc(l$)>65 or asc(l$)<72 then 1250
1240 goto 1200
1250 return
1300 poke 54296,15:poke 54277,17:poke 54278,129:poke 54273,14:poke 54272,107
1310 poke 54276,17:for t=1 to 50:next t
1320 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
1340 return