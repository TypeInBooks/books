100 rem ** noughts and crosses **
110 dim a(9),q(9)
115 poke 53281,7:poke 53280,7
116 print chr$(147)
120 gosub 1000
130 poke 251,8:poke 252,1:sys 49152:print chr$(144);"noughts and crosses"
140 for i=1 to 9:a(i)=0:next i:a$="123456789"
150 poke 251,4:poke 252,23:sys 49152:input"do you want to go first (y/n)";c$
160 if c$="y" then c$="x":d$="o":goto 180
170 a(5)=1:a$=left$(a$,4)+"x"+right$(a$,4):c$="o":d$="x"
180 co=1:goto 300
190 sc=-1000
200 gosub 450
210 for j=1 to 9
220 if a(j)<>0 then 250
230 a(j)=1:gosub 560:a(j)=0:rem remove piece,evaluate and restore piece
240 if q>sc then sc=q:k=j
250 next j
260 co=0:a(k)=1:a$=left$(a$,k-1)+d$+right$(a$,9-k)
270 for i=1 to 9
280 if a(i)=0 then co=co+1
290 next i
300 gosub 450
310 x=20:gosub 770
320 poke 251,8:poke 252,23:sys 49152
330 if sc>50 then print "{space*6}i win{space*15}":goto 780
340 if co=0 then print "{space*3}end of game{space*10}":goto 780
350 poke 251,4:poke 252,23:sys 49152:print"{space*7}your move{space*17}"
360 gosub 720:z=asc(l$)-48
370 if a(z)<>0 then 360
380 a(z)=-1:a$=left$(a$,z-1)+c$+right$(a$,9-z)
390 x=10:gosub 770
400 poke 251,4:poke 252,23:sys 49152:print"{space*33}"
410 gosub 560
420 if q<-500 then poke 251,8:poke 252,23:sys 49152:print"{space*3}you win!{space*4}":goto 780
430 if int(q)=-2 and (q(7)=-1 or q(8)=-1) and co<>1 then 900
440 goto 190
450 rem ** screen display **
460 m=0:for j=5 to 11 step 3
470 for i=5 to 11 step 3
480 m=m+1:w=asc(mid$(a$,m,1))
490 if w=88 then h$=chr$(30)+chr$(88):rem letter x
500 if w=79 thenh$=chr$(28)+chr$(79):rem letter o
510 if w<58 and w>48 then h$=chr$(31)+mid$(a$,m,1)
520 poke 251,i+8:poke 252,j:sys 49152:print h$
530 next i:next j
540 return
550 rem ** evaluate **
560 for i=1 to 3
570 q(i)=a(i)+a(i+3)+a(i+6):rem vertical line
580 q(i+3)=a(3*i)+a(3*i-1)+a(3*i-2):rem horizontal line
590 next i
600 q(7)=a(1)+a(5)+a(9)
610 q(8)=a(3)+a(5)+a(7):rem diagonal line
620 q=0
630 for i=1 to 8
640 q=q+q(i)
650 if q(i)=-3 then q=q-900
660 if q(i)=-2 then q=q-30
670 if q(i)=+2 then q=q+10
680 if q(i)=+3 then q=q+100
685 if q(i)=0 then q=q+0.5
690 next i
700 q=q+rnd(1)/2
710 return
720 get l$:if l$="" then 720
730 poke 251,21:poke 252,23:sys 49152:print asc(l$)-48
750 if l$<chr$(48) or l$>chr$(57) then 720
760 return
770 poke 54296,15:poke 54277,17:poke 54278,129:poke 54273,17:poke 54272,37
771 poke 54276,17:for i=1 to 250:next i
772 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
773 return
780 poke 54296,15:poke 54277,17:poke 54278,129:poke 54273,51:poke 54272,97
781 poke 54276,17:for i=1 to 250:next i
782 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
785 poke 251,0:poke 252,0:sys 49152:end
900 a(4)=1:a$=left$(a$,3)+d$+right$(a$,5):goto 260
1000 for i=0 to 8:read h:poke 49152+i,h:next i
1001 data 166,252,164,251,24,32,240,255,96
1002 return