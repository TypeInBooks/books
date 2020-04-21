10 rem ** sand castle ***
20 print"{clear}{red}":poke53280,6:poke53281,7:poke52,48:poke56,48:clr
30 poke56334,peek(56334)and254:poke1,peek(1)and251
40 forj=12296to12303:pokej,255:next
50 forj=12304to12527:readx:pokej,x:next
60 forj=12528to12583:pokej,0:next
70 forj=0to79:x=peek(53632+j):poke12584+j,x:next
80 poke1,peek(1)or4:poke56334,peek(56334)or1
90 g=1024:h=55296:s=54272:se=g+920:r=12583
100 forj=0to24:pokes+j,0:next:pokes+24,15
110 input"{down*2}{right*2}speed (1-5)";l$
120 l=val(l$):ifl<0orl>5thenprint"{clear}":goto110
130 l=6-l
140 poke53272,(peek(53272)and240)+12
150 poke53280,2:poke53281,6
160 print"{clear}{down}{white}";tab(15)"aaa":printtab(12)"aaaaaaa"
170 printtab(11)"aaaaaaaa":printtab(12)"aaaaaaaa"
180 printtab(12)"aaaaaaaa":printtab(12)"aaaaa{down}"
190 printtab(3)"aaaa":printtab(2)"aaaaaaa"
200 printtab(2)"aaaaaaaaa":printtab(4)"aaaaaa"
210 print"{down*3}{yellow}"
220 forj=21to3step-3
230 fork=1toj
240 print" ";:next
250 fork=j+1to40
260 print"a";
270 next:next
280 print"{white}":gosub1500
290 sc=27:gosub3000
300 forj=0to2
310 fork=0to3
320 pokeh+512+j+40*k,1
330 next:next
340 pokeh+552,7
350 forj=0to4
360 fork=0to2
370 pokeh+547+j+40*k,7
380 next:next
390 pokeg+549,30:pokeg+588,33:pokeg+589,34:pokeg+590,33
400 pokeg+627,31:pokeg+628,35:pokeg+629,36:pokeg+630,35:pokeg+631,31
410 gosub1000
420 pokeh+190,1
430 n=int(rnd(1)*10)
440 pokeg+190,n+37
450 j=0
460 f=0:geta$
470 ifa$=""thenj=j+1:f=1:ifj<(1000*l)/(n+10)then460
480 gosub1500
490 ifval(a$)=nandf=0thengosub2000
500 ifr<=12528then600
510 pokeg+190,32
520 ifsc=27thensc=28:se=se-40:goto540
530 sc=27
540 gosub3000
550 fork=1to1000:next
560 ifse>g+640then430
570 forj=12528to12583:pokej,0:fork=1to50:next:next
580 geta$:ifa$<>chr$(32)then580
590 restore:print"{clear}":poke53272,21:goto20
600 pokeg+509,17:pokeh+509,4
610 pokeg+469,18:pokeg+470,19:pokeh+469,4:pokeh+470,4
620 pokeg+553,32:pokeg+593,32:pokeg+633,32
630 pokeh+552,1:pokeg+554,32:pokeg+594,32:pokeg+634,32
640 pokeg+511,20:pokeg+512,21:pokeg+551,22:pokeg+552,23:pokeh+511,1
650 pokeg+591,24:pokeg+592,25:pokeg+632,26
660 pokes+4,128:pokeg+190,32:goto580
1000 pokeg+553,2:pokeg+554,3:pokeg+593,4:pokeg+594,5
1010 pokeg+633,6:pokeg+634,7
1020 return
1500 pokes+5,196:pokes+6,186
1510 pokes,214:pokes+1,28:pokes+4,129
1520 return
2000 pokeg+513,8:pokeg+514,9
2010 pokeg+552,10:pokeg+553,11:pokeg+554,12
2020 pokeg+592,13:pokeg+593,14:pokeg+594,15
2030 pokeg+633,16
2040 forj=1to500:next
2050 fork=0ton
2060 ifr<12528then2100
2070 poker,255
2080 r=r-1
2090 ifr=12551thenr=r-s
2100 next
2110 pokeg+513,32:pokeg+514,32
2120 pokeg+552,32:pokeg+553,2:pokeg+554,3
2130 pokeg+592,32:pokeg+593,4:pokeg+594,5
2140 pokeg+633,6
2150 return
3000 forj=0to38
3010 pokese+j,29:pokeh-g+se+j,1
3020 fork=1to80:next
3030 pokeh-g+se+j,1:pokese+j,sc
3040 ifj=30thenpokes+4,128
3050 next
3060 pokese+39,sc:pokeh-g+se+j,1
3070 return
4000 data 0,0,28,62,62,62,31,3,0,0,0,0,0,0,248,4,2,2,2,2,2,3,2,5
4010 data 132,68,100,104,176,32,96,160,5,6,4,12,116,244,244,108
4020 data 32,32,32,32,32,32,32,48
4030 data 24,60,60,126,126,62,28,4,0,0,0,0,0,0,56,196
4040 data 0,0,0,96,240,120,240,104,7,28,102,130,66,65,33,33
4050 data 4,4,4,4,4,4,24,96,0,0,0,4,31,126,252,48,17,23,25,97,130,4,8,16
4060 data 128,0,128,128,64,64,64,32,16,8,8,8,4,4,4,12,48,48,48,48,48,48,48,48
4070 data 63,63,63,48,48,63,63,63,252,252,252,0,0,252,252,252,0,0,1,3,23,39,39
4080 data 39,0,0,128,192,224,224,224,244,35,32,16,15,0,0,0,0
4090 data 192,128,128,240,143,129,129,129
4100 data 5,21,19,16,16,16,16,48,130,130,130,130,66,34,18,18,18,18,18,18,19,19
4110 data 19,51,231,219,189,126,231,219,189,126,255,255,255,255,231,219,189,126
4120 data 225,219,183,119,251,219,173,118
