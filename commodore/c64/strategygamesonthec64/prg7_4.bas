100 rem ** hexapawn **
110 dim a(3,3)
112 print chr$(147):poke 53281,7:poke 53280,7
115 gosub 1000
120 for i=1 to 3:for j=1 to 3
130 a(i,j)=0
140 next j:next i
160 a(1,3)=1:a(2,3)=1:a(3,3)=1
170 a(1,1)=-1:a(2,1)=-1:a(3,1)=-1
180 poke 251,13:poke 252,1:sys 49152:print chr$(28);"hexapawn":gosub 660
190 poke 251,6:poke 252,23:sys 49152
195 print"go first (y/n)";:input a$
200 if a$="y" then 310
210 if a$="n" then 230
220 goto 190
230 qq=-100
240 for i=1 to 3:for j=1 to 3
250 if a(i,j)=1 then gosub 470
260 next j:next i
270 if qq=-100 then 900
280 a(u1,v1)=a(x1,y1):a(x1,y1)=0:rem move piece on board
290 gosub 660
300 if v1=1 then 850
310 poke 251,6:poke 252,23:sys 49152
311 print"{space*33}"
312 poke 251,6:poke 252,23:sys 49152
320 rem ** your move **
330 poke 54296,15:poke 54277,17:poke 54278,129
331 poke 54273,19:poke 54272,63:poke 54276,17:for i=1 to 69:next i
332 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
340 input"from ";x,y:if x<1 or x>3 or y<1 or y>3 then 310
350 poke 251,17:poke 252,23:sys 49152
351 input"to ";u,v:if u<1 or u>3 or v<1 or v>3 then 350
360 if a(x,y)<>-1 then 310
370 if abs(u-x)>1 then 310
380 if v-y<>1 then 310
390 if u=x and a(u,v)<>0 then 310
400 if abs(u-x)=1 and a(u,v)<>1 then 310
410 if a(u,v)=-1 then 310
420 a(u,v)=a(x,y):a(x,y)=0
430 gosub 660
440 if v=3 then 800
450 goto 230
460 rem **find moves **
470 x=i:y=j
480 u=i:v=j-1:if a(u,v)=0 then gosub 550
490 if i-1<1 then 520
500 u=i-1:v=j-1:if a(u,v)=-1 then gosub 550
510 if i+1>3 then 530
520 u=i+1:v=j-1:if a(u,v)=-1 then gosub 550
530 return
540 rem ** evaluate **
550 q=0:c=a(u,v):a(u,v)=a(x,y):a(x,y)=0:rem temporarily move piece
560 for m=1 to 3:for n=1 to 3
570 if a(m,n)=1 then q=q+(4-n)*(4-n):if n=1 then q=q+20:rem advance pawn
580 if a(m,n)=-1 then q=q-n*n
590 q=q+a(m,n):rem material count
600 q=q+rnd(1):rem random factor
610 if q>qq then qq=q:x1=x:y1=y:u1=u:v1=v
620 next n:next m
630 a(x,y)=a(u,v):a(u,v)=c:rem restore moved piece
640 return
650 rem ** screen display **
660 for i=1 to 3:for j=1 to 3
670 poke 251,2*i+12:poke 252,2*(4-j)+4:sys 49152
680 if a(i,j)=0 then print"."
690 if a(i,j)=+1 then print"x"
700 if a(i,j)=-1 then print"o"
710 next j:next i
730 return
740 poke 54296,15:poke 54277,17:poke 54278,129
741 poke 54273,16:poke 54272,47:poke 54276,17:for i=1 to 69:next i
742 poke 54276,0:poke 54277,0:poke 54278,0:poke 54296,0
743 poke 251,0:poke 252,0:sys 49152:end
800 poke 251,6:poke 252,23:sys 49152:print"{space*8}you win!{space*8}":goto 740
850 poke 251,6:poke 252,23:sys 49152:print"{space*9}i win!{space*10}":goto 740
900 poke 251,6:poke 252,23:sys 49152:print"{space*5}stalemate!{space*12}":goto 740
1000 for i=0 to 8:read h:poke 49152+i,h:next i
1001 data 166,252,164,251,24,32,240,255,96
1002 return