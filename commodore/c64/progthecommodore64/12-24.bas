6 poke 56,48:clr:screen=1064:vic=53248:ch=12288
8 def fn rv(q)=q+128*(1+(q>127)*2)
11 dim co$(15):for j=0 to 15:read co$(j):next
12 for j=49152 to 49213:read x:poke j,x:next
18 input "fetch characters from rom";x$
19 if x$="y" then gosub 500
22 poke 646,0:poke 650,128:print"{clear}"
27 for j=0 to 127:poke sc+2*j+401,j:poke sc+j*2+721,j+128:next
40 poke vic+24,(peek(vic+24)and240) or 12
100 nc=0:of=nc*8:gosub 3000
140 poke 53280,5:poke 53281,5:poke 53282,2
146 poke 53283,8:poke 48197,0:sys 49188:gosub 20000
180 xc=0:yc=0:cc=sc:pokecc,peek(cc)or128
200 get x$:ifx$="" then 200
202 if x$="{up}" and yc>0 then yc=yc-1:goto 250
204 if x$="{right}" and xc<39 then xc=xc+1:goto 250
206 if x$="{down}" and yc<23 then yc=yc+1:goto 250
208 if x$="{left}" and xc>0 then xc=xc-1:goto 250
218 if x$="{home}" then gosub 4000:goto 180
220 if x$=" " then gosub 2000:goto 200
226 for z=1 to 8:if x$<>mid$("{f1}{f3}{f5}{f7}{f2}{f4}{f6}{f8}",z,1) then next
228 cb=z-1:on z gosub 21000,21000,21000,21000,11000,12000,13000,14000
229 if z>0 and z<9 goto 200
236 for z=1 to 7:if x$<>mid$("=dcimt",z,1) then next
237 on z gosub 6000,7000,9000,9500,10000,10500
239 if z>0 and z<8 goto 200
246 if x$="s" then gosub 16000:goto 22
247 if x$="l" then gosub 18000:goto 22
248 goto 200
250 gosub 4000:cc=xc+yc*40+sc:gosub 4000:goto 200
387 data "black ","white ","red   ","cyan  ","purple"
388 data "green","blue","yellow","orange","brown ","lt red"
389 data "gray 1","gray 2","lt grn","l blue","gray 3"
390 data 120,162,8,160,0,169,208,133,252
391 data 169,48,133,254,169,0,133,251,133
392 data 253,177,251,145,253,200,208,249
393 data 230,252,230,254,202,208,242,88,96
395 data 0,169,216,133,252,169,0,133,251
396 data 162,4,160,0,173,35,192,145,251
397 data 200,208,248,230,252,202,208,243,96
500 poke 56333,127:poke 1,51:sys 49152
540 poke 1,55:poke 56333,129:return
2000 if yc>7 or xc>7 then return
2010 pt=ch+yc+of:by=peek(pt):ms=2^(7-xc)
2030 poke cc,382-peek(cc)
2040 if (by and ms)=0 then poke pt,by+ms:goto 2060
2050 poke pt,by-ms
2060 poke 214,yc:print:printtab(9)"   {left*4}";peek(pt)
2070 return
3000 print "{home}":for y9=0 to 7:pt=ch+y9+of:by=peek(pt)
3020 for x9=0 to 7
3030 if (by and 2^(7-x9))>0 then print"Q";:goto 3040
3035 print "-";
3040 next:print "    {left*4}"by:next
3060 print "{home}{space*12}screen code={space*3}{left*4}" nc
3070 return
4000 poke cc,fnrv(peek(cc)):return
6000 if yc<9 then return
6010 nc=fnrv(peek(cc)):of=nc*8:gosub 3000:return
7000 if yc>7 or xc<13 or x>27 then return
7030 poke cc,fnrv(nc):return
9000 for j=ch+of to ch+of+7:poke j,0:next:gosub 3000
9025 if yc<8 and xc<8 then gosub 4000
9030 return
9500 for j=ch+of to ch+of+7:poke j,255-peek(j):next
9525 gosub 3000:if yc<8 and xc<8 then gosub 4000
9530 return
10000 v=peek(vic+22)
10010 if (v and 16)>0 then poke vic+22,v and 255-16:return
10020 poke vic+22,v or 16:return
10500 if yc<9 then return
10520 nn=fnrv(peek(cc)):og=nn*8
10530 for j=0 to 7:poke ch+og+j,peek(ch+of+j):next:return
11000 t=(peek(53280)+1) and 15
11003 poke 53280,t:poke 53281,t:goto 20000
12000 t=(peek(53282)+l) and 15
12003 poke 53282,t:goto 20000
13000 t=(peek(53283)+1) and 15
13003 poke 53283,t:goto 20000
14000 t=(peek(49187)+1) and 15
14003 poke 49187,t:sys 49188:goto 20000
16000 gosub 19000:print:sys 57812nm$,dn
16020 poke 193,0:poke 194,48:poke 174,0:poke 175,56
16040 sys 62957:return
18000 gosub 19000:poke 147,0:sys 57812nm$,dn,0
18033 l9=12288:poke 781,l9 and 255:poke 782,l9/256
18034 sys 62622:return
19000 input "{clear}{space*9}filename";nm$
19005 input "disk or tape (d/t)";x$
19010 if x$="d" then dn=8:return
19020 dn=1:return
20000 print "{home}{down}"tab(29)"bg0 "co$(peek(53280) and 15)
20040 print tab(29)"bg1 "co$(peek(53282) and 15)
20060 print tab(29)"bg2 "co$(peek(53283) and 15)
20080 print tab(29)"txt "co$(peek(49187) and 15):return
21000 if yc>7 or xc>7 then return
21010 cp=cc and 2046:if cb>1 then poke cp,81:goto 21030
21020 poke cp,45
21030 cp=cp+1: if(cb and 1)=1 then poke cp,81:goto 21050
21040 poke cp,45
21050 gosub4000:pt=ch+yc+of:by=peek(pt)
21060 mp=7-xc and 6:mk=2^mp*3:by=(by and not mk)+cb*2^mp
21070 poke pt,by:poke 214,yc:print
21080 print tab(9)"{space*3}{left*4}" peek(pt):return