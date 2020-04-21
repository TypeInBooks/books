10 rem ** vibrations ***
20 l=0:m=0:p=0:n=0:g=1024:h=55296:b=12288
30 print"{clear}":poke53280,2:poke53281,2:poke52,48:poke56,48
40 input"{down*3}{right*3}{white}speed (1-10)";a$
50 tf=val(a$):iftf<1ortf>10then30
60 print"{clear}":poke649,0:forj=0to5:readc%(j):next
70 s=1:f=121:x=1:gosub1000
80 s=126:f=251:x=40:gosub1000
90 s=2:f=252:x=0:gosub1000
100 s=4:f=39:x=216:gosub1000
110 s=44:f=64:x=218:gosub1000
120 s=69:f=89:x=217:gosub1000
130 s=94:f=124:x=219:gosub1000
140 s=129:f=149:x=218:gosub1000
150 s=154:f=194:x=216:gosub1000
160 s=199:f=209:x=219:gosub1000
170 s=214:f=254:x=217:gosub1000
180 forj=0to250step5:reada,m:pokeb+j,a:pokeb+j+3,m:next
190 forj=12546to12732:readx:pokej,x:next
200 restore:forj=0to5:readx:next
210 poke251,0:poke252,48:poke253,0
220 forj=1to25
230 gosub2000
240 readx,y:ifj>8thenx=x+512
250 ifj>13thenx=x-256
260 ifj>18thenx=x+512
270 ifj=1thenp=c
280 pokeh+x,c:pokeg+x,s
290 fork=x+1tox+y
300 pokeh+k,2:pokeg+k,s
310 next:next
320 forj=1to26
330 gosub2000
340 readx,y:x=x+512
350 ifj>5thenx=x-512
360 ifj>14thenx=x+768
370 ifj>17thenx=x-512
380 pokeh+x,c:pokeg+x,s
390 fork=x+40tox+y*40step40
400 pokeh+k,2:pokeg+k,s
410 next:next
420 forj=1to50
430 sys12546
440 gosub2500
450 next
460 l=h+9:n=peek(l)and7:pokel,0
470 poke649,1:ti$="000000":a$=""
480 geta$:ifa$=""andti<60/tfthen480
490 poke649,0:ifa$="u"andl>h+39thenm=l-40
500 ifa$="h"thenm=l-1
510 ifa$="j"thenm=l+1
520 ifa$="n"andl<m+960thenm=l+40
530 n=peek(m)and7
540 ifn>2thenpokel,p:pokem,0:l=m:p=n
550 ifl=h+989then700
560 sys12546
570 d=-1:gosub2700:ifd=0then470
580 d=1:gosub2700:ifd=0then470
590 ifl>h+39thend=-40:gosub2700:ifd=0then470
600 ifl<h+960thend=40:gosub2700
610 goto470
700 print"{clear}{down*3}{right*3}{white}you got there!"
710 poke649,1
720 geta$:ifa$<>" "then720
730 restore:goto30
1000 forj=stofstep5
1010 pokeb+j,x
1020 next:return
2000 s=c%(int(rnd(1)*6))
2010 c=int(rnd(1)*5)+3
2020 return
2500 fork=1to200:next
2510 return
2700 x=peek(l+d)and7
2710 ifx=0thenl=l+d:d=0
2720 return
3000 data 81,87,90,83,65,42
4000 data 7,6,228,4,24,6,208,2,57,5,183,7,95,3,175,6,19,5,229,4,66,4,116,4,96,4
4010 data 37,4,254,2,119,5,169,3,151,2,1,4,215,6,46,4,201,6,53,5,167,4
4020 data 101,2,61,4,228,6,115,7,160,5,156,7,14,5,250,5,23,3,225,2,31,3,212,7
4030 data 182,5,47,5,51,4,0,5,134,2,45,3,2,2,241,7,48,5
4040 data 207,6,53,7,191,6,118,3,5,7,15,5
5000 data 169,254,141,1,49,172,1,49,177,251,133,254,136,136,177,251,41,7,240,36
5010 data170,136,177,251,141,0,49,136,177,251,24,109,0,49,144,2,230,254,202,208
5020 data 245,168,177,253,41,7,141,255,48,169,2,145,253,76,65,49,136,136,177,251
5030 data 76,43,49,172,1,49,177,251,133,254,136,177,251,141,0,49,136,177,251,41
5040 data8,208,19,177,251,41,7,205,0,49,208,20,177,251,24,105,8,145,251,76,114
5050 data49,177,251,41,7,208,4,169,0,145,251,177,251,41,8,208,10,177,251,24,105
5060 data1,145,251,76,137,49,177,251,56,233,1,145,251,177,251,41,7,240,39,170
5070 data136,177,251,141,0,49,136,177,251,24,109,0,49,144,2,230,254,202,208
5080 data245,168,173,255,48,145,253,173,1,49,56,233,5,176,1,96,76
5090 data4,49,136,136,177,251,76,164,49
