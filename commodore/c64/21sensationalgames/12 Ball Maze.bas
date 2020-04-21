10 rem ** ball maze **
20 g=1024:h=55296:a=g:b=h:hx=h+939:hy=h+519:w=160:c=3
30 poke650,128:x=1:y=1:nx=1:ny=1:s=54272
40 print"{clear}":poke53280,3:poke53281,1
50 forj=1to37
60 gj=g+j:hj=h+j:fork=1to21
70 pokehj+40*k,1:pokegj+40*k,81
80 next
90 pokehj,c:pokegj,w:pokehj+880,c:pokegj+880,w
100 pokehj+920,1:pokegj+920,30:pokegj+960,w:pokehj+960,c
110 next
120 fork=0to960step40
130 pokeh+k,c:pokeg+k,w:pokeh+k+38,c:pokeg+k+38,w:pokeh+k+39,1:pokeg+k+39,31
140 next
150 forj=920to928:pokeh+j,c:pokeg+j,w:next
160 forj=950to959:pokeh+j,c:pokeg+j,w:next
170 pokeh+39,c:pokeg+39,w:pokeh+79,c:pokeg+79,w:pokeh+999,c:pokeg+999,w
180 pokehy,4:pokeg+939,42
190 pokehx,4:pokeg+519,42
200 forj=0to20
210 reada$
220 n=41
230 fork=1to37
240 ifmid$(a$,k,1)="0"then260
250 pokeb+n,c:pokea+n,w
260 n=n+1
270 next
280 a=a+40:b=b+40
290 next
300 forj=1to28
310 readn
320 pokeh+n,0
330 next
340 pokeh+877,6:pokeg+877,81
350 pokeh+41,10
360 ti$="000000"
370 ifax<>0thenpokehx+ax,1
380 ifay<>0thenpokehy+ay*40,1
390 geta$:ifa$="x"andax<0ora$="z"andax>0thenax=0
400 ifa$="x"andax<10thenax=ax+1
410 ifa$="z"andax>-10thenax=ax-1
420 ifa$="/"anday<0ora$=";"anday>0thenay=0
430 ifa$="/"anday<10thenay=ay+1
440 ifa$=";"anday>-10thenay=ay-1
450 ifax<>0thenpokehx+ax,4
460 ifay<>0thenpokehy+ay*40,4
470 vx=vx+ax*2:vy=vy+ay*2
480 ifabs(vx)>10thennx=x+1*sgn(vx):vx=0
490 ifabs(vy)>10thenny=y+1*sgn(vy):vy=0
500 cx=peek(h+nx+y*40)and7
510 cy=peek(h+x+ny*40)and7
520 cz=peek(h+nx+ny*40)and7
530 ifcx=0orcy=0orcz=0then610
540 ifcx=3thenvx=0:nx=x
550 ifcy=3thenvy=0:ny=y
560 ifcz=3thenvx=0:vy=0:nx=x:ny=y
570 ifcx=6orcy=6then710
580 pokeh+x+40*y,1:pokeh+nx+40*ny,10
590 x=nx:y=ny
600 goto370
610 pokeh+x+40*y,1
620 ifax<>0thenpokehx+ax,1
630 ifay<>0thenpokehy+ay*40,1
640 pokes+24,15:pokes+4,17:pokes+6,15:pokes+5,9:pokes+6,0
650 forj=1to50
660 f=4200+j*250:pokes+1,int(f/256):pokes,f-(256*int(f/256))
670 next
680 pokes+24,0:pokes+4,0
690 ax=0:ay=0:vx=0:vy=0:x=1:y=1:nx=1:ny=1
700 goto350
710 t=val(mid$(ti$,3,2))
720 print"{home}won! in";t;"min"
730 pokes+24,15:pokes+5,0:pokes+6,240:pokes+12,0:pokes+13,240:pokes+19,0
740 pokes+20,240:pokes+1,17:pokes,37:pokes+8,51:pokes+7,97:pokes+15,137
750 pokes+14,43:pokes+4,17:pokes+11,17:pokes+18,17
760 forj=1to100:next
770 pokes+4,0:pokes+11,0:pokes+18,0
780 forj=1to40:next
790 pokes+4,17:pokes+11,17:pokes+18,17
800 forj=1to450:pokes+24,15-j/30:next
805 forj=0to24:pokes+j,0:next
810 forj=0to24:pokes+j,0:next
820 a$="":geta$:ifa$=""then820
830 forj=0to15
840 pokeh+j,c:pokeg+j,w
850 next
4000 data 0000000000000000000100010100000001000
4010 data 1111110111111111111101010101111111010
4020 data 0000010000010000000001010100000100010
4030 data 0111010111010111111111010111011101110
4040 data 0001000001000001000100010000000101000
4050 data 1101110101011111010101010111111101111
4060 data 0100010101010001010101010001000000000
4070 data 0111010101010101010101111101110111111
4080 data 0100010101110100010101000100000100000
4090 data 0001110101010111110101010101011101111
4100 data 0100010101000000010000010101010000000
4110 data 0111011101110101011101110001010101011
4120 data 0100000001000101000101011111010101000
4130 data 0101111111011101011111000000010101110
4140 data 0101000000010001010001011111110111000
4150 data 0001111111110111010101010000010101011
4160 data 0101000000010000010101010101000100000
4170 data 0101011111010111110101010101110101110
4180 data 0001010000000100010101010101000101000
4190 data 0101011111111101011101110101011101111
4200 data 0101000000000001000000000100010000000
5000 data 59,65,73,151,157,215,231,281,303,315,331,393,447,451,477
5010 data 541,543,593,615,673,709,723,767,779,783,796,841,871
