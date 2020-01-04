10 poke 56,88:clr:gosub 4500
20 input "is music data in ram";a$:if a$="y" then 1019
30 gosub 5000:gosub 4000
1000 for vn=0 to 2:ra(vn)=0.50:du=16:oc=4:p=22528+vn*6144 
1005 read va$:if va$="z" then poke p,255:next:goto 1019 
1007 if left$(va$,1)="o" then read ra(vn):goto 1005
1008 if left$(va$,1)="w" then poke p,253:p=p+1:read wv:pokep,wv:p=p+1:goto 1005
1009 if left$(va$,1)="p" then gosub 1400:goto 1005
1010 if left$(va$,1)="r" then va$=mid$(va$,2):gosub2130:pp=0:goto 1014
1012 gosub 2000:pp=pp+oc*12
1013 if p>40950 then print "too much data":end
1014 poke p,pp:p=p+1:poke p,du*ra(vn):p=p+1
1016 poke p,du-int(du*ra(vn)):p=p+1:goto 1005
1019 input "tempo (1-255)";tm:poke 56325,tm
1020 poke 56334,0:gosub 1500
1022 poke 165,0:poke 167,0:poke 169,0
1023 poke 166,88:poke 168,112:poke 170,136
1024 poke 788,208:poke 789,192:poke 254,0
1025 for j=49355 to 49359 step 2:poke j,32:next
1026 for j=49349 to 49354:poke j,0:next
1028 for j=0 to 2:poke 49344+j*2,j*7:next
1038 poke 56334,1
1039 if peek(254)=7 then 1020
1040 goto 1039
1400 poke p,254:p=p+1:read rg:poke p,rg
1410 p=p+1:read pa:poke p,pa:p=p+1:return
1500 si=54272:print "initializing sid"
1505 for j=si to si+28:poke j,0: next
1510 poke si+5,17:poke si+12,17:poke si+19,17
1520 poke si+6,177:poke si+13,177:poke si+20,177
1530 poke si+24,4
1550 return
2000 if left$(va$,1)="+" then oc=oc+1:va$=mid$(va$,2):goto 2040
2005 if left$(va$,1)="-" then oc=oc-1:va$=mid$(va$,2):goto 2040
2010 if left$(va$,1)<"0" or left$(va$,1)>"9" then 2040
2030 oc=asc(va$)-asc("0"):va$=mid$(va$,2) 
2040 pp=asc(va$)-asc("a")
2060 pp=pc(pp):if pp<=0 then pp=pp+2
2070 va$=mid$(va$,2):if va$="" then return
2090 if left$(va$,1)="#" then pp=pp+1:va$=mid$(va$,2)
2110 if left$(va$,1)="f" then pp=pp-1:va$=mid$(va$,2)
2130 if va$="" then return
2140 if left$(va$,1)>"9" or left$(va$,1)<"0" then print "?":end
2150 du=val(va$):return
4000 print "initializing frequency table"
4010 dim fq(95):fq(95)=64814
4040 for j=94 to 84 step -1:fq(j)=fq(j+1)/2^(1/12):next
4050 for j=6 to 0 step -1:for k=1 to 12
4060 p1=12*j+k-1:fq(p1)=fq(p1+12)/2:next:next
4070 for j=1 to 95:poke 49151+j,fq(j)-256*int(fq(j)/256)
4080 poke 49247+j,fq(j)/256:next:return
4500 print "loading ml"
4502 for j=49360 to 49537:read x:poke j,x:next:return
4504 data 162,0,32,226,192,162,2,32,226,192,162,4
4512 data 32,226,192,76,49,234,189,197,192,240,18
4524 data 222,197,192,240,1,96,188,192,192,189
4530 data 203,192,41,254,153,4,212,96,189,198
4542 data 192,240,6,222,198,192,240,1,96,161,165
4554 data 240,61,201,255,208,18,188,192,192,169
4566 data 0,153,4,212,138,208,2,232,138,5,254
4572 data 133,254,96,201,254,240,55,201,253,240
4584 data 71,168,138,72,189,192,192,170,185,255
4596 data 191,157,0,212,185,95,192,157,1,212
4608 data 138,168,104,170,189,203,192,9,1,153,4
4614 data 212,32,123,193,161,165,157,197
4626 data 192,32,123,193,161,165,157,198,192,32
4632 data 123,193,96,32,123,193,161,165,168,32
4644 data 123,193,161,165,153,0,212,32,123,193
4656 data 76,4,193,32,123,193,161,165,157,203,192
4662 data 32,123,193,76,4,193,246,165,208
4674 data 2,246,166,96
5000 print "initializing pitch array ptrs"
5010 for j=0 to 6:read pc(j):next:return
5020 data -2,0,1,3,5,6,8
10000 data w,64,p,3,3,o,0.9
10001 data r64,r,4bf8,5d,f16,4bf8,5ef,g20
10005 data bf4,a,g,f8,ef,d,c4,d,ef,d,c,4bf
10010 data 5c8,c,f20,ef4,d,ef,f,ef,d,c
10015 data d8,d,g24,c8,d4,ef,f16
10020 data 4bf8,5c4,d,ef12,4g4,af,5c,4bf,af,g,f
10025 data 5f8,d,ef20,g4,f,ef,d,c,4bf,5c
10030 data df,4af,g,f,ef,g,af,bf,5c,4bf,af,g,f,bf,5c,d
10035 data ef,c,-bf,af,g,+d,ef,f,-bf,+ef,f,g,c,f,-bf,af
10040 data g16,r8,g,f4,af,+d,c,d,-af,f,af
10045 data g,bf,+ef,-bf,g,bf,ef,g,d8,f,bf16
10050 data ef8,g,bf20,+c4,e,d,e,-bf,g,bf
10055 data a,+c,f,c,-a,+c,-f,a,e8,g,+c16
10060 data -f8,a,+c20,d4,f#,e,f#,c,-a,+c
10065 data -bf,+d,g,d,-bf,+d,-g,bf,+c8,-f,+f,ef4,d
10070 data c,-f,g,a,bf,+c,d,ef,f8,d,-bf16
10075 data +f8,d,-af16,+f8,d,-g,+f
10080 data ef,c,-g,+c4,d,ef8,c,-f,+ef
10085 data d8,-bf,f,bf4,+c,df8,-bf,e,+df
10090 data c4,-bf,a,g,f,ef,d,c,d8,bf,c,a
10100 data bf16,r,r,r
19999 data z
20000 data w,64,p,10,5,o,0.8
20001 data 4ef8,g,bf16,ef8,af,5c20
20005 data ef4,d,c,4bf8,af,g,f4,g,af,g,f,ef
20010 data f,ef,d,c,3bf,4d,ef,f,g,f,ef,d,c,f,g,a
20015 data bf12,5c4,4a12,bf4,bf8,f,bf20
20020 data af4,g,af,bf,af,g,f,g8,g,5c20
20025 data 4bf4,a,bf,5c,4bf,af,g,af,g,af,5c,4bf,af,g,f
20030 data g,f,g,bf,af,g,f,ef,f,ef,f,af,g,f,ef,d
20035 data ef,d,c,3bf,4bf8,af,g16,f
20040 data ef8,g,bf16,ef8,af,5c20
20045 data ef4,d,c,-bf8,af,g,+ef,-f,+d
20050 data -ef16,r8,ef8,d,f,bf16
20055 data ef8,g,bf16,f4,af,+d,c,d,-af,f,af
20060 data g,bf,+ef,-bf,g,bf,ef,d,e8,g,+c16
20065 data -f8,a,+c16,-g4,bf,+e,d,e,-bf,g,bf
20070 data a,+c,f,c,-a,+c,-f,e,f#8,a,+d16
20075 data -g8,bf,+ef20,d4,c,d,ef,d,c,-bf
20080 data a16,r4,a,bf,+c,-bf,+d,f,ef,f,d,-bf,+d
20085 data -af,+d,f,ef,f,d,-af,+d,-g,+d,f,ef,f,d,-g,+d
20090 data -g,+c,ef,d,ef,c,-g,+c,-f,+c,ef,d,ef,c,-f,+c
20095 data -f,bf,+d,c,d,-bf,f,bf,e,bf,+df,c,df,-bf,e,bf
20100 data f,g,a,bf,+c20,-f4,d,f,g,ef,c,ef
20105 data d16,r,r,r
29999 data z
30000 data w,64,p,17,7,o,0.98
30001 data 3ef16,r4,g,f,g,c16,r4,ef,d,ef
30005 data -af16,bf,ef8,+ef,d,c
30010 data d,f,d,-bf,+ef,g,ef,c
30015 data d,ef,f,-f,bf16,r8,+d
30020 data f16,r8,af,c16,r8,ef
30025 data g16,r8,bf,c,ef,af16
30030 data -bf8,+d,g16,-af8,+c,f,af16
30035 data -af8,g,+c,-bf,+bf16,af8
30040 data g,bf,g,ef,af,+c,-af,f
30045 data g,af,bf,d,ef,c,-af,bf
30050 data ef,f,g,ef,bf16,r8,+d
30055 data ef16,r8,-g,bf16,r8,+d
30060 data ef16,r8,g,c16,r8,e
30065 data f16,r8,-a,+c16,r8,e
30070 data f16,r8,a,d16,r8,f#
30075 data g16,r8,+c,-bf,a,bf,ef
30080 data f,-f,+f,ef,d16,r8,+d
30085 data c16,r8,-c,-b16,r8,+b
30090 data +c16,r8,2bf,a16,r8,+a
30095 data bf16,r8,af,g16,r8,-g
30100 data a,+c,-a,f,bf,+d,ef,f
30105 data -bf16,r,r,r
39999 data z