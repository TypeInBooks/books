10 rem ** nine men morris **
20 g=1024:h=55296:b=53280:s=53281:dimm%(6,24),p%(2,9),a$(2):poke649,1
30 print"{clear}":pokeb,2:pokes,7
40 fork=1to24:forj=0to6:readm%(j,k):next:next
50 m=2:print"{clear}{down}"
60 printtab(10)"{purple}{reverse on}{cm a}{sh asterisk*8}{cm r}{sh asterisk*8}{cm s}"
70 b$="{reverse on}{sh -}{reverse off}{space*8}{reverse on}{sh -}{reverse off}{space*8}{reverse on}{sh -}":printtab(10)b$:printtab(10)b$
80 printtab(10)"{reverse on}{sh -}{reverse off}{space*2}{reverse on}{cm a}{sh asterisk*5}{sh +}{sh asterisk*5}{cm s}{reverse off}{space*2}{reverse on}{sh -}"
90 c$="{reverse on}{sh -}{reverse off}{space*2}{reverse on}{sh -}{reverse off}{space*5}{reverse on}{sh -}{reverse off}{space*5}{reverse on}{sh -}{reverse off}{space*2}{reverse on}{sh -}":printtab(10)c$:printtab(10)c$
100 printtab(10)"{reverse on}{sh -}{reverse off}{space*2}{reverse on}{sh -}{reverse off}{space*2}{reverse on}{cm a}{sh asterisk*2}{sh +}{sh asterisk*2}{cm s}{reverse off}{space*2}{reverse on}{sh -}{reverse off}{space*2}{reverse on}{sh -}"
110 d$="{reverse on}{sh -}{reverse off}{space*2}{reverse on}{sh -}{reverse off}{space*2}{reverse on}{sh -}{reverse off}{space*5}{reverse on}{sh -}{reverse off}{space*2}{reverse on}{sh -}{reverse off}{space*2}{reverse on}{sh -}":printtab(10)d$:printtab(10)d$
120 printtab(10)"{reverse on}{cm q}{sh asterisk*2}{sh +}{sh asterisk*2}{cm w}{reverse off}{space*5}{reverse on}{cm q}{sh asterisk*2}{sh +}{sh asterisk*2}{cm w}"
130 printtab(10)d$:printtab(10)d$
140 printtab(10)"{reverse on}{sh -}{reverse off}{space*2}{reverse on}{sh -}{reverse off}{space*2}{reverse on}{cm z}{sh asterisk*2}{cm r}{sh asterisk*2}{cm x}{reverse off}{space*2}{reverse on}{sh -}{reverse off}{space*2}{reverse on}{sh -}"
150 printtab(10)c$:printtab(10)c$
160 printtab(10)"{reverse on}{sh -}{reverse off}{space*2}{reverse on}{cm z}{sh asterisk*5}{sh +}{sh asterisk*5}{cm x}{reverse off}{space*2}{reverse on}{sh -}"
170 printtab(10)b$:printtab(10)b$
180 printtab(10)"{reverse on}{cm z}{sh asterisk*8}{cm e}{sh asterisk*8}{cm x}{down}"
190 gosub900
200 pokeb,4*m-2
210 ifp=10thenp=1
220 k=0
230 k=k+1:ifk=25thenk=1
240 ifpeek(g+m%(5,k))<186then230
250 pokeg+m%(5,k),191
260 geta$:ifa$=""then260
270 ifa$=" "thenpokeg+m%(5,k),m%(6,k):goto230
280 ifa$="/"then300
290 goto260
300 pokeg+m%(5,k),p+176
310 pokeh+m%(5,k),m*4-2
320 m%(0,k)=p+10*(m-1):p%(m,p)=1
330 gosub1000
340 iff7=7then690
350 ifnot(p=9andm=2)then190
360 pokes,13:gosub900
370 fb=1
380 fork=1to24
390 mm=m%(0,k)
400 ifmm=0ormm>10andm=1ormm<10andm=2then440
410 forj=1to4
420 ifm%(j,k)>0andm%(0,m%(j,k))=0thenfb=0
430 next
440 next
450 pokeb,4*m-2:iffb=1then710
460 print"piece?{up}"
470 gosub2500
480 ifp%(m,a)<>1then470
490 k=0
500 ifm%(0,k)<>a+10*(m-1)thenk=k+1:goto500
510 fb=1:forj=1to4:ifm%(j,k)<>0andm%(0,m%(j,k))=0thenfb=0
520 next
530 iffb=1then460
540 print"move? {up}"
550 geta$:ifa$=""then550
560 ifa$="u"thend=1:goto610
570 ifa$="n"thend=2:goto610
580 ifa$="j"thend=3:goto610
590 ifa$="h"thend=4:goto610
600 goto550
610 ifm%(d,k)=0then460
620 ifm%(0,m%(d,k))<>0then460
630 print"{space*6}{up}"
640 pokeg+m%(5,k),m%(6,k):pokeh+m%(5,k),4
650 pokeg+m%(5,m%(d,k)),a+176:pokeh+m%(5,m%(d,k)),m*4-2
660 m%(0,k)=0:m%(0,m%(d,k))=a+10*(m-1):p=a
670 gosub1000
680 iff7<7then360
690 print"7 removed - you win"
700 goto720
710 print"blocked - you lose"
720 a$=""
730 geta$:ifa$=""then730
740 p=o:pokes,7:goto50
889 goto889
900 ifm=2thenm=1:mx=2:print"{red}";:p=p+1:return
910 m=2:mx=1:print"{blue}";:return
1000 ft=0
1010 fork=2to23
1020 ifm%(1,k)=0orm%(2,k)=0then1040
1030 pa=1:gosub2000
1040 ifm%(3,k)=0orm%(4,k)=0then1060
1050 pa=3:gosub2000
1060 next
1070 ifft=0thenreturn
1080 print"take 1{up}"
1090 gosub2500
1100 ifp%(mx,a)=1then1120
1110 goto1090
1120 print"{space*6}{up}"
1130 p%(mx,a)=2
1140 fork=1to24
1150 ifm%(0,k)=a+10*(mx-1)thenm%(0,k)=0:pokeg+m%(5,k),m%(6,k):pokeh+m%(5,k),4
1160 next
1170 f7=0:forj=1to9
1180 ifp%(mx,j)=2thenf7=f7+1
1190 next
1200 return
2000 ifm%(0,k)=0orm%(0,m%(pa,k))=0orm%(0,m%(pa+1,k))=0thenreturn
2010 fm=0:ifm%(0,k)>10thenfm=fm+1
2020 ifm%(0,m%(pa,k))>10thenfm=fm+1
2030 ifm%(0,m%(pa+1,k))>10thenfm=fm+1
2040 pp=p+10*(m-1)
2050 fp=0:ifm%(0,k)=pporm%(0,m%(pa,k))=pporm%(0,m%(pa+1,k))=ppthenfp=1
2060 ifm=1andfp=1andfm=0thenft=1
2070 ifm=2andfp=1andfm=3thenft=1
2080 return
2500 geta$:ifa$=""then2500
2510 a=val(a$):ifa<0ora>9then2500
2520 return
4000 data 0,0,10,2,0,90,240,0,0,5,3,1,99,242,0,0,15,0,2,108,238
4010 data 0,0,11,5,0,213,240,0,2,8,6,4,219,219,0,0,14,0,5,225,238
4020 data 0,0,12,8,0,336,240,0,5,0,9,7,339,241,0,0,13,0,8,342,238
4030 data 0,1,22,11,0,450,235,0,4,19,12,10,453,219,0,7,16,0,11,456,243
4040 data 0,9,18,14,0,462,235,0,6,21,15,13,465,219,0,3,24,0,14,468,243
4050 data 0,12,0,17,0,576,237,0,0,20,18,16,579,242,0,13,0,0,17,582,253
4060 data 0,11,0,20,0,693,237,0,17,23,21,19,699,219,0,14,0,0,20,705,253
4070 data 0,10,0,23,0,810,237,0,20,0,24,22,819,241,0,15,0,0,23,828,253
