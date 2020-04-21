10 rem ** singalong **
20 for j=0 to 24:poke 54272+j,0:next
30 v=54272:poke v+5,9:poke v+6,130:z=0
40 def fnr(x)=int(rnd(1)*x)+1
50 print"{clear}{white}{down*3}":poke 53280,5:poke 53281,10
60 x$(1)=" called ":x$(2)=" of "
70 y$(1)=" always ":y$(2)=" never ":y$(3)=" seldom "
80 z$(1)=" day ":z$(2)=" night "
90 poke v+24,15:for j=1 to 41
100 read fh,fl,d
110 poke v,fl:poke v+1,fh:poke v+4,33
120 for k=1 to 150*d
130 next
140 poke v+4,32
150 next:poke v+24,0
160 if z=0 then z=1:goto 200
170 print"{blue}again?    {up}"
180 get a$:if a$="" then 180
190 if a$="y" then restore:goto 90
200 rx=fnr(2):ry=fnr(3):rz=fnr(2)
210 print"{clear}{white}":for j= 1 to 7
220 read q,s
230 if j=4 then rr=fnr(2):w=(rx-1)*s/q+(rq-1)*q+rr:goto 290
240 rq=fnr(q)
250 p=1
260 if j=3 then p=rx
270 if j=5 then p=rz
280 w=(p-1)*q+rq
290 for k=1 to w
300 read w$(j)
310 next
320 if k=s+1 then 360
330 for k=w+1 to s
340 read w$
350 next
360 next
370 v$="there was a " + w$(1) + " "+w$(2)+x$(rx)+w$(3)
380 print:print v$
390 v$="who" +y$(ry)+w$(4)
400 print:print v$
410 v$="then "+w$(5)
420 print:print v$
430 v$="one "+w$(6)+z$(rz)
440 print:print v$
450 v$="that "+w$(7)+" "+w$(1)+" "+w$(2)+x$(rx)+w$(3)
460 print:print v$
470 restore
480 print"{down*3}{blue}singalong?{up}"
490 get a$:if a$="" then 490
500 if a$="y" then 90
510 for j=1 to 123
520 read x
530 next
540 goto 200
1000 data 16,195,1,22,96,2,22,96,1,22,96,1,22,96,2,21,31,1
1010 data 18,209,1,21,31,2,25,30,3,0,0,1,16,195,1,25,30,2
1020 data 25,30,1,25,30,1,25,30,2,22,96,1,21,31,1,22,96,2
1030 data 28,49,3,0,0,1,28,49,1,33,135,2,33,135,1,33,135,1
1040 data 33,135,2,0,0,1,28,49,1,29,223,2,29,223,1,29,223,1
1050 data 29,223,2,0,0,1,25,30,1,28,49,2,33,135,1,28,49,1
1060 data 29,223,2,28,49,1,25,30,1,28,49,2,22,96,2
2000 data 4,4,fat,great,sly,bright
3000 data 4,4,writer,loafer,artist,beauty
4000 data 3,6,nelly,parkin,neville
4010 data luton,ely,norwich
5000 data 2,12,threw bricks at the telly,ate ice cream and jelly
5010 data set all the dogs barking,was fooling and larking
5020 data said 'i'm a real devil',was quite on the level
5030 data went huntin' and shootin',played chess with his boots on
5040 data said 'is it true? - really?',had eves that were steely
5050 data ate mustard with porridge,lacked vigour and courage
6000 data 3,6,spent all his pay,fell in the bay,joined the aa
6010 data died of sheer fright,put out the light,looked such a sight
7000 data 5,5,terrible,cold frosty,ill fated,fabulous,memorable
8000 data 6,6,stupid,clever,lazy,crafty,evil,pretty
