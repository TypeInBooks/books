5 data 120,160,0,132,252,132,253,132,254,162,3,142,74,192,169,254,141
6 data 0,220,162,8,72,173,1,220,205,1,220,208,248,74,176,21,72,142,75
7 data 192,174,74,192,185,129,235,149,251,206,74,192,240,20,104,174,75
8 data 192,200,192,65,176,12,202,208,224,56,104,42,141,0,220,208,205
9 data 104,104,88,96
20 for j=49152 to 49225:read x:poke j,x:next
40 gosub 3000
45 pw=400:gosub 2000
50 gosub 4000
60 gosub 5000
70 poke 53281,8
74 bl$="{space*3}{black}{reverse on}{right}1{right}2{right}3{right*3}5{right}6{right*3}8{right}9{right}0{right*3}-{right}£"
75 print "{clear}" bl$:print bl$
79 wh$="{space*4}{white}{reverse on}{right}q{right}w{right}e{right}r{right}t{right}y{right}u{right}i{right}o{right}p{right}@{right}*{right}^"
80 print "{up}" wh$:print wh$:print wh$
90 l1=252:l2=253:l3=254:sr=49152
95 wn=33:wf=32
100 sys sr
110 n1=ma%(peek(l1)):n2=ma%(peek(l2)):n3=ma%(peek(l3))
115 if n1<>0 then poke si+ 4,wn:poke si,lq%(n1):poke si+1,hq%(n1)
116 if n2<>0 then poke si+11,wn:poke si+7 ,lq%(n2):poke si+8,hq%(n2)
117 if n3<>0 then poke si+18,wn:poke si+14,lq%(n3):poke si+15,hq%(n3)
131 if peek(197)=4 then wn=33:wf=32
132 if peek(197)=5 then wn=17:wf=16
133 if peek(653)=1 then wn=65:wf=64:gosub 2000
150 if peek(l1)=0 then poke si+4,wf
152 if peek(l2)=0 then poke si+11,wf
153 if peek(l3)=0 then poke si+18,wf
160 goto100
2000 rem **** alter pulse width ****
2005 pw=(pw+50) and 4095:pl=pw and 255:ph=pw/256
2010 for i=2 to 16 step 7:poke si+i,pl:poke si+i+1,ph:next
2020 return
3000 rem
3003 si=54272
3005 for j=si to si+24:poke j,0:next
3010 poke si+ 5,16*5+11
3011 poke si+12,16*5+11
3012 poke si+19,16*5+11
3020 poke si+6,16*15+12
3021 poke si+13,16*15+12
3022 poke si+20,16*15+12
3030 poke si+24,3
3040 poke si+ 4,0
3041 poke si+11,0
3042 poke si+18,0
3050 return
4000 rem
4005 dim fq(95),lq%(95),hq%(95)
4010 fq(95)=64814
4020 for j=94 to 84 step -1:fq(j)=fq(j+l)/(2^(1/12)):next
4030 for j=6 to 0 step -1:for k=1 to 12
4040 p1=j*12+k-1:fq(p1)=fq(p1+12)/2:next:next
4045 for p1=1 to 95
4050 lq%(p1)=fq(p1)-256*int(fq(p1)/256):hq%(p1)=fq(p1)/256
4060 next:return
5000 rem
5005 dim ma%(255)
5010 for j=0 to 22:read v$,v:ma%(asc(v$))=v:next
5020 return
5500 data 1,42,q,43,2,44,w,45,3,46,e,47,r,48,5,49,t,50,6,51,y,52,u,53,8,54,1,55
5510 data 9,56,o,57,0,58,p,59,@,60,-,61,*,62,£,63,^,64