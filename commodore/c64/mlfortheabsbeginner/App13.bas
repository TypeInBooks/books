0 rem
100 rem ************ alpa ***********
110 rem *    p.rosham, 12/4/1984    *
111 rem *       and danny davis     *
112 rem *                           *
115 rem *     assembly language     *
116 rem *      programming aid      *
118 rem *                           *
120 rem *****************************
150 goto 9000
1000 rem
1010 rem process line
1020 rem
1030 f=0:fm=0:er=0
1040 for j=p1 to p2
1050 if c$(j,1)="  " then 1110
1053 co$=c$(j,1):ifc$(j,2)<>"  "then co$=co$+c$(j,2)
1054 ifc$(j,3)<>"  "then co$=co$+c$(j,3)
1055 gosub 30000
1056 if er>0 then 1110
1061 if j<100 thenprint" ";
1062 if j<10 thenprint" ";
1069 printj;": ";
1070 if left$(c$(j,2),1)="l" then 1075
1071 goto 1080
1075 printc$(j,1)+" "+c$(j,2)+c$(j,3);" ";:goto 1090
1080 printc$(j,1);" ";c$(j,2);" ";c$(j,3);
1090 f=f+1
1095 printspc(8);di$
1100 if f=22 thengoto1120
1110 next j
1120 return
2000 rem
2010 rem main routine
2020 a$="":input"command or line(###) : ";a$
2040 if left$(a$,1)>"9" goto 3000
2042 print"{up}";:for i=1 to 36:print" ";:nexti:printchr$(13);"{up}";
2045 if left$(a$,1)<"0"goto 2020
2050 k$="":for k=1 to 4
2060 if mid$(a$,k,1)=" " goto 2090
2065 if mid$(a$,k,1)=""thena$"         ":j=val(k$):n=j:goto 2170
2067 if mid$(a$,k,1)>"9" or mid$(a$,k,1)<"0"thenprint"invalid line #":goto 2020
2070 k$=k$+mid$(a$,k,1)
2080 next k
2090 if k=5 or val(k$)=ze or val(k$)>ln goto 2020
2100 j=val(k$):n=j
2110 a$=right$(a$,(len(a$)-k))
2120 let k$=""
2130 for k=1 to len(a$)
2140 if mid$(a$,k,1)<>" "thenk$=k$+mid$(a$,k,1)
2150 next k
2160 a$=k$
2162 if left$(a$,1)="l" then goto 2020
2170 for i=1 to 5 step 2
2180 k=int(i/2+1)
2190 c$(j,k)=mid$(a$,i,2)
2195 c$(j,k)=left$(c$(j,k)+"  ",2)
2200 next i
2210 if c$(n,oe)="  " then 2250
2220 if n<tp then tp=n
2230 if n>bp then bp=n
2240 goto 2320
2250 if n<>bp goto 2280
2260 if bp=1 or c$(bp,1)<>"  " goto 2320
2270 bp=bp-oe:goto 2260
2280 if n<>tp goto2320
2290 ifc$(tp,oe)<>"  " then goto 2320
2300 if tp<>bp and tp<>ln then tp=tp+oe:goto 2290
2310 tp=oe
2320 pp=n
2330 if n<tp then pp=tp:goto 2380
2340 nu=ze
2350 if pp=tp or nu=0 then goto 2380
2360 if c$(pp,oe)<>"  "then nu=nu+oe
2370 pp=pp-oe:goto 2350
2380 p1=pp:p2=pp
2385 if c$(n,1)="  " then 2020
2390 gosub 1000
2391 if er=1 then print"illegal op-code"
2392 if er=2 then print"invalid op-code"
2393 if er=3 then print"invalid length operand"
2394 if er=4 then print"illegal operand"
2400 goto 2020
2590 rem ****** watch/nowatch
2600 input"watch what address : ";qz$:xq$=right$(("0000"+qz$),4)
2610 gosub 15000:if er=1 then 2600
2620 wq=xq:wq$=xq$:goto 2020
2630 ifwa<>1 then 2640
2635 print"address ";wq$;"=  <before> $";:et=peek(wq):gosub 40000
2636 print right$(hb$,2)
2640 if peek(r)=0 then print"no program in memory":print:goto 2645
2641 sys r
2645 if wa<>1 then 2660
2650 print"address ";wq$;"=  <after > $";:et=peek(wq):gosub 40000
2655 print right$(hb$,2)
2660 goto 2020
2700 rem ********** dump memory
2710 dc$="0000"
2720 input"dump from what address ";dm$
2730 xq$=right$((dc$+dm$),4):gosub 15000:if er=1 then 2720
2740 dm=xq
2750 print"{clear}dumping from address $";xq$
2755 g=dm
2760 for mm=g to (g+176) step 8:f$=""
2765 et=mm:gosub 40000:print hb$;" : ";
2770 for mw=0 to 7:mq(mw)=peek(mm+mw)
2775 a=mq(mw):if a<32 or a>127 or a>159 then f$=f$+chr$(32):goto 2780
2776 f$=f$+chr$(a)
2780 h=int(mq(mw)/16):l=mq(mw)-16*h
2785 print mid$(d$,h+1,1)+mid$(d$,l+1,1);
2789 next mw:print spc(8);f$
2790 next mm
2795 get k$:if k$="" then 2795
2800 if k$<>"m" then g=mm:goto 2760
2810 goto 2020
3000 rem
3005 if a$="" goto 2020
3010 rem ****** commands ******
3020 k$=left$(a$,tw)
3030 if k$="en" then 5000
3040 if k$="qu" then stop
3044 if k$="wa" then wa=1:goto 2600
3046 if k$="nw" then wa=0:goto 2020
3050 if k$="li" then 4000
3060 if k$="lo" then 7000
3070 if k$="me" then 6000
3080 if k$="ne" then run
3090 if k$="ru" then goto 2630
3100 if k$="sa" then 8000
3110 if k$="ch" then 9150
3115 if k$="du" then 2700
3119 print"invalid command "
3120 goto 2000
4000 rem
4010 rem **** list rountine ******
4020 p1=tp:p2=bp
4025 if len(a$)<5 then 4040
4030 n1=asc(mid$(a$,6,1))
4040 if len(a$)>fr and n1>47 and n1<58 then p1=val(mid$(a$,5,3))
4045 print"{clear}"
4050 gosub 1000
4060 goto 2020
5000 rem
5010 rem dunproutine *******
5020 g=r:print"entering at address $";:et=g:gosub 40000:printhb$
5040 for j=tp to bp
5050 if c$(j,oe)="  " then goto 5470
5060 if mid$(c$(j,tw),1,1)<>"l" then 5380
5070 poke g,ze:poke g+oe,ze:poke g+tw,ze:poke g+tr,ze
5080 j1=val(mid$(c$(j,tw),tw,1)+c$(j,tr))
5090 ifleft$(c$(j,2),1)="l"thenprintj;" : ";c$(j,1)+" "+c$(j,2)+c$(j,3):goto5100
5095 printj;" : ";c$(j,1);" ";c$(j,2);c$(j,3)
5100 if j1<ze or j1>ln then 5460
5110 jj$=c$(j,1):gosub 20000:cj=jj
5120 if left$(c$(j,2),1)<>"l" then 5125
5121 printj1;" : ";c$(j1,1)+" "+c$(j1,2)+c$(j1,3):goto5130
5125 printj1;" : ";c$(j1,1);" ";c$(j1,2);" ";c$(j1,3)
5130 if abs(cj)<>oe then goto 5460
5140 dd=(j1<j)-(j1>j)
5150 ja=g:dp=ze
5160 if j1=j then goto 5270
5170 cl=j+dd
5180 n1=ze:if c$(cl,oe)="  " then goto 5220
5190 if left$(c$(cl,2),1)="l" goto 5200
5192 n1=oe-(c$(cl,tw)<>"  ")-(c$(cl,tr)<>"  "):goto 5220
5200 jj$=c$(cl,1):gosub 20000:tj=jj
5210 n1=((tj=oe)*tr+(tj=-oe)*tw)*-1
5220 if cl=j1 and dd>0 goto 5270
5230 dp=dp+n1
5240 if cl=j1 then goto 5270
5250 cl=cl+dd
5260 goto 5180
5270 if cj=1 then ja=ja+dd*dp+(dd>0)*-3:goto 5310
5280 if dd>ze then dp=dp+2
5290 if dp>126 and dd<ze then goto 5460
5300 if dp>129 and dd>ze then goto 5460
5310 xq$=mid$(c$(j,1),1,2):gosub 10000:v=xq
5320 poke g,v:g=g+oe
5330 if cj=oethenpoke g,ja-int(ja/qk)*qk:g=g+oe:pokeg,int(ja/qk):g=g+oe:goto5360
5340 if dd<ze then dp=256-dp
5345 if dp=0 then dp=256
5350 dp=dp-tw:poke g,dp:g=g+1
5360 print"ok"
5370 goto 5470
5380 for i=1 to 5 step2
5390 k=int(i/tw+oe)
5400 xq$=mid$(c$(j,k),1,2):gosub 10000:v=xq
5410 if er=1 or v=-1 then goto 5440
5420 poke g,v
5430 g=g+oe
5440 next i
5450 goto 5470
5460 print"** error-branch out of range **"
5470 next j
5480 goto 2020
6000 co$=""
6010 rem *********disemble
6020 dc$="0000"
6030 input "disassemble from what address ";dm$
6035 xq$=right$((dc$+dm$),4):gosub 15000:if er=1 then 6030
6038 dm=xq
6039 print "{clear}disassembling from address  $";xq$
6040 g=dm:f=0:fm=0
6050 f=f+1:co$=""
6060 for i=1 to 3
6070 v(i)=peek(g):h=int(v(i)/16):l=v(i)-16*h
6080 r$(i)=mid$(d$,h+1,1)+mid$(d$,l+1,1)
6090 g=g+1:next i
6100 for i=1 to pc(v(1)+1):co$=co$+r$(i):next i
6110 gosub 30000
6115 et=dm:gosub 40000:print hb$;": ";
6117 for i=1 to pc(y)
6120 print r$(i);" ";
6130 next i
6134 ww=15-(len(co$)+pc(y)):printspc(ww);di$
6138 g=(g-3)+pc(y):dm=g
6140 if f<>22 then goto 6050
6150 get k$:if k$="" then 6150
6160 if k$<>"m" then f=ze:goto 6050
6200 goto 2020
7000 rem
7010 rem ********load
7020 print"{clear}"
7030 print"load program"
7035 input"input file name: ";n$
7037 if n$="" then 7035
7040 open1,1,0,n$
7041 t=0:ff=0
7045 for i=1 to 200:cd$(i)="":j$(i)=""
7046 t=t+1
7047 get#1,i$(i)
7048 if i$(i)=chr$(13) then ff=0:goto 7058
7049 if i$(i)="," then ff=1:goto 7047
7050 if ff=1 goto 7057
7051 if i$(i)>chr$(47) andi$(i)<chr$(58) and ff=0 thenj$(i)=j$(i)+i$(i):goto7047
7054 if i$(i)="*" then 7059
7055 if i$(i)=" " then 7047
7057 cd$(i)=cd$(i)+i$(i):goto 7047
7058 next i
7059 close 1
7060 for i=1 to t-1
7061 x(i)=val(j$(i)):y=1
7062 for j=1 to 3
7063 c$(x(i),j)=mid$(cd$(i),y,2)
7066 c$(x(i),j)=left$(c$(x(i),j)+"  ",2)
7067 y=y+2
7068 next j:next i
7069 for i=1 to 200
7070 tp=i
7080 if c$(i,1)<>"  " then 7100
7090 next i
7100 for i=200 to 1 step-1
7110 bp=i
7120 if c$(i,1)<>"  " then 7140
7130 next i
7140 goto 2020
8000 rem
8010 rem *********save
8020 input"enter name : ";n$
8030 if n$="" then 8020
8035 r$=","
8040 open1,1,1,n$
8050 for i=1 to 200
8052 if c$(i,1)="  " then 8080
8055 co$=c$(i,1)+c$(i,2)+c$(i,3)
8060 print#1,i;r$co$
8080 next i
8090 print#1,"*":close1
8100 goto 2020
9000 rem
9010 rem initialisation
9020 ze=0:oe=1:tw=oe+oe:tr=oe+tw:fr=tw+tw:qk=256:mr=2020:ln=200
9030 dim a$(15),j$(200),x(200)
9040 tp=ln:bp=oe:rem line buffer
9050 dim c$(ln,tr),i$(1200)
9060 print"{cyan}{clear}            initialising"
9070 for i=oe to ln
9080 for j=oe to tr
9090 c$(i,j)="  "
9100 next j
9120 next i
9125 dim pc(256),ds$(256),r$(7),cd$(200),mq(176)
9126 for a=1 to 256:read pc(a),ds$(a):next a
9130 d$="0123456789abcdef"
9150 print"{clear}"
9160 input"locate program at address: ";xq$:xq$=left$(xq$+"0000",4)
9170 gosub 15000:if er=1 or xq=0 then 9160
9175 r=xq:poker,0
9180 print"{clear}"
9185 et=r:gosub 40000
9190 print"program to be located at address ";hb$
9191 goto 2020
9198 rem all spaces in data statements must be typed in
9199 data1,brk,2,"ora ($  ,x)",1,???,1,???,1,???,2,ora $,2,asl $,1,???
9200 data1,php,2,ora #$,1,asl a,1,???,1,???,3,ora $,3,asl $,1,???
9201 data2,"bpl "
9202 data2,"ora ($  ),y",1,???,1,???,1,???,2,"ora $  ,x",2,"asl $  ,x"
9203 data1,???,1,clc,3,"orc $    ,y",1,???,1,???,1,???,3,"ora $    ,x"
9204 data3,"asl $    ,x",1,???,3,jsr ,2,"and ($  ,x)",1,???,1,???,2,"bit $"
9205 data2,and $,2,rol $,1,???,1,plp,2,and #$,1,rol a,1,???,3,"bit $"
9206 data3,and $,3,rol $,1,???,2,bmi $,2,"and ($  ),y"
9207 data1,???,1,???,1,???,2,"and $  ,x"
9208 data2,"rol $  ,x",1,???,1,sec,3,"and $    ,y",1,???,1,???,1,???
9209 data3,"and $    ,x",3,"rol $    ,x",1,???,1,rti,2,"eor ($  ,x)",1,???
9210 data1,???,1,???,2,eor $,2,lsr $,1,???,1,pha,2,eor #$,1,lsr a,1,???
9211 data3,jmp ,3,eor$,3,lsr $,1,???,2,"bvc "
9212 data2,"eor ($  ),y",1,???
9213 data1,???,1,???,2,"eor $  ,x",2,"lsr $  ,x",1,???,1,cli,3,"eor $    ,y"
9214 data1,???,1,???,1,???,3,"eor $    ,x",3,"lsr $    ,x",1,???,1,rts
9215 data2,"adc ($  ,x)",1,???,1,???,1,???,2,adc $,2,ror $,1,???,1,pla
9313 data2,adc #$,1,ror a,1,???,3,jmp (,3,adc $,3,ror $,1,???
9314 data2,bvs ,2,"adc ($  ),y"
9315 data1,???,1,???,1,???,2,"adc $  ,x",2,"ror $  ,x",1,???,1,"sei"
9316 data3,"adc $    ,y",1,???,1,???,1,???,3,"adc $    ,x",3,"ror $    ,x"
9317 data1,???,1,???,2,"sta ($  ,x)",1,???,1,???,2,sty $,2,sta $,2,"stx $"
9318 data1,???,1,dey,1,???,1,txa,1,???,3,sty $,3,sta $,3,stx $,1,???
9319 data2,bcc ,2,"sta ($  ,x)"
9320 data1,???,1,???,2,"sty $  ,x",2,"sta $  ,x"
9321 data2,"stx $  ,y",1,???,1,tya,3,"sta $    ,y"
9322 data1,txs,1,???,1,???,3,"sta $    ,x",1,???,1,???,2,"ldy #$"
9323 data2,"lda ($  ,x)",2,ldx #$,1,???,2,ldy $,2,lda $,2,ldx $,1,???
9324 data1,tay,2,lda #$,1,tax,1,???,3,ldy $,3,lda $,3,ldx $,1,???
9325 data2,bcs ,2,"lda ($  ),y",1,???,1,???,2,"ldy $  ,x",2,"lda $  ,x"
9326 data2,"ldx $  ,y",1,???,1,clv,3,"lda $    ,y",1,tsx,1,???,3,"ldy $    ,x"
9327 data3,"lda $    ,x",3,"ldx $    ,y",1,???,2,cpy #$,2,"cmp ($  ,x)"
9329 data1,???,1,???,2,cpy $,2,cmp $,2,dec $,1,???,1,iny,2,cmp #$,1,dex
9331 data1,???,3,cpy $,3,cmp $,3,dec $,1,???,2,"bne ",2,"cmp ($  ),y"
9333 data1,???,1,???,1,???,2,"cmp $  ,x",2,"dec $  ,x",1,???,1,cld
9335 data3,"cmp $    ,y",1,???,1,???,1,???,3,"cmp $    ,x",3,"dec $    ,x"
9337 data1,???,2,cpx #$,2,"sbc ($  ,x)",1,???,1,???,2,cpx $,2,"sbc $"
9339 data2,inc $,1,???,1,inx,2,sbc #$,1,nop,1,???,3,cpx $,3,"sbc $"
9341 data3,inc $,1,???,2,beq ,2,"sbc ($  ),y",1,???,1,???,1,???
9343 data2,"sbc $  ,x",2,"inc $  ,x",1,???,1,sed,3,"sbc $    ,y",1,???,1,???
9345 data1,???,3,"sbc $    ,x",3,"inc $    ,x",1,???
10000 if xq$="" then xq=-1:er=1:return
10005 as=asc(left$(xq$,1))-48:if as>22 then er=1:return
10006 if as<10 and as>-1 then goto 10010
10007 as=as-7:if as<10 then er=1:return
10010 xq=asc(right$(xq$,1))-48:if xq>22 then er=1:return
10016 if xq<10 and xq>-1 then goto 10020
10017 xq=xq-7:if xq<10 then er=1:return
10020 xq=xq+16*as:er=0:return
15000 qq$=left$(xq$,2):qw$=right$(xq$,2)
15005 xq$=qq$:gosub 10005:qq=256*xq
15007 if er=1 then return
15010 xq$=qw$:gosub 10005
15020 xq=xq+qq:xq$=qq$+qw$
15030 return
20000 jj=(jj$="90")+(jj$="b0")+(jj$="f0")+(jj$="30")+(jj$="d0")+(jj$="10")
20010 jj=(jj+(jj$="50")+(jj$="70"))-((jj$="4c")+(jj$="6c")+(jj$="20"))
20020 return
30000 xq$=left$(co$,2):if xq$="  " then di$="":return
30001 fl=0:sh=0:er=0
30002 gosub 10000:y=xq+1:xq=0
30003 gosub 32000
30004 if er=2 and fm=1 then 30011
30005 if er>0 or xq=-1 then c$(j,1)="  ":return
30010 jj$=xq$:gosub 20000
30011 if pc(y)=1 then di$=ds$(y):return
30015 di$=left$(ds$(y),5)
30020 if jj<>0 then 30140
30030 if right$(di$,1)="(" or right$(di$,1)="#" then di$=di$+"$"
30040 if pc(y)=2 then di$=di$+right$(co$,2)
30050 if pc(y)=3 then 30090
30060 if len(ds$(y))=9 then di$=di$+right$(ds$(y),2)
30070 if len(ds$(y))=11 then di$=di$+right$(ds$(y),3)
30080 return
30090 op$=right$(co$,2)+mid$(co$,3,2)
30100 if len(ds$(y))=5 then di$=di$+op$
30110 if len(ds$(y))=10 then di$=di$+op$+right$(ds$(y),1)
30120 if len(ds$(y))=11 then di$=di$+op$+right$(ds$(y),2)
30130 return
30140 op$=right$(co$,2)+mid$(co$,3,2)
30150 ifmid$(co$,3,1)="l" then di$=ds$(y)+right$(co$,(len(co$)-2)):sh=1
30157 if jj=1 and fm=1 then di$=di$+op$
30170 if jj=1 and fm=0 and sh=0 and len(ds$(y))=4 then di$=di$+op$
30175 if jj=1 and fm=0 and sh=0 and len(ds$(y))=5 then di$=ds$(y)+op$+")"
30180 if jj<>-1 or fm<>1 then return
30190 xq$=right$(co$,2):gosub 10000:zz=(g-3)+pc(y)
30200 if xq>127 then xq=-1*(256-xq)
30210 et=zz+xq:gosub 40000
30220 di$=di$+hb$:return
32000 if er=1 goto 32090
32010 ifds$(y)="???" then er=2:goto 32090
32020 iflen(co$)<>pc(y)*2 and mid$(co$,3,1)<>"l" then er=3:goto 32090
32030 for fi=2 to len(co$)
32040 if mid$(co$,3,1)="l" then 32080
32050 if mid$(co$,fi,1)<chr$(48) then er=4
32060 if mid$(co$,fi,1)>chr$(57)and mid$(co$,fi,1)<chr$(65)then er=4
32070 if mid$(co$,fi,1)>chr$(70)then er=4
32080 next fi
32090 return
40000 hb$="":if et>65535 then et=et-65536:goto 40000
40003 for rr=3 to 0 step-1
40005 rt=int(et/(16^rr))
40010 et=et-rt*16^rr:rt=(rt+48)-7*(rt>9)
40015 hb$=hb$+chr$(rt):next rr
40020 return