10 rem ** bombing run **
20 print"{clear}":t=0:u=1:z=0:v=53248:g=1024:h=55296:b=0:f=0:y=0
30 gb=g+852:hb=h+852:ff=80:gs=g+879:gt=g+961:gf=g+80:hf=h+80:bh%=0
40 forj=12288 to 12323:read x:poke j,x:next
50 for j=12324 to 12350:poke j,0:next
60 for j=12544 to 12617:read x:poke j,x:next
70 poke 53270,peek(53270)and247:poke 649,1:poke 52,48:poke 56,48
80 s=54272:for j=0 to 4:poke s+j,0:next
90 y=130:fb=0:bt=0:bd=0
100 tt=0:bg=0:a$=""
110 input"{clear}{white}{down*2}{right*2}level (1-10)";l$
120 l=val(l$):if l<1 or l>10 then 110
130 pokes+24,47:pokes,12:pokes+1,1:pokes+6,143:pokes+21,7:pokes+23,1:pokes+17,1
140 poke s+4,129:poke s+14,88:poke s+15,115:poke s+20,240
150 print"{clear}":poke 53280,0:poke 53281,6
160 for j=0 to 1023:poke h+j,z:next:poke h+961,u
170 for j=1 to 38:poke g+880+j,102:next
180 poke 2040,192:poke v+39,0
190 poke v,104:poke v+1,y:poke v+21,1
200 ti$="000000":poke 650,128:l=l/20
210 e=rnd(u):x=peek(v+31)
220 poke hb,z
230 if e<l then f=rnd(u)*760:poke hf+f,7:poke gf+f,42:gosub 1000
240 sys 12586
250 if e<.3 then poke gs,88
260 if b=16 then poke gs,160
270 if e>.95 and fb=z then b=101:fb=u:tt=tt+u
280 if b/10=int(b/10) then poke s+18,65:poke gt,b/10+47
290 poke s+18,64:if fb=u then b=b-u
300 if b=z then fb=z
310 get a$:if a$="" then 380
320 if a$=chr$(134) and bg=z then bh%=210-y:bg=u:bd=bd+u:poke s+20,248:goto 370
330 if a$=chr$(135) then y=y-8
340 if a$=chr$(136) then y=y+8
350 if y<z then y=z
360 poke v+u,y
370 a$=""
380 if bg=u then poke s+18,64:poke s+15,130+bh%/2:poke s+18,65
390 sys 12544
400 if bg=z then poke s+18,64
410 if peek(v+31)=u then 600
420 poke h+f,0
430 bh%=bh%-4
440 if b=2 and bh%=z then gosub 2000
450 sys 12586
460 sys 12544
470 bh%=bh%-4
480 if bg=u then poke s+18,64:poke s+15,130+bh%/2:poke s+18,65
490 if peek(v+31)=1 then 600
500 if b=2 and bh%=z then gosub 2000
510 ifbg=uandbh%=zthenpokehb,1:pokegb,214:pokes+18,64:bg=0:pokes+20,240:gosub1000
520 goto 210
600 print"{clear}{white}{down*2}{right*3}";:poke 53280,0:poke53281,2:poke v+21,0
610 for j=0 to 24:poke s+j,0:next
620 poke s+24,15:poke s,200:poke s+1,2:poke s+5,13:poke s+6,248:poke s+4,129
630 for k=1 to 1500:next
640 pokes+4,128
650 if y>206 then print"you flew too low":goto 670
660 print"you were shot down"
670 print"{down*2}{right*3}bombs dropped:";bd
680 print"{down*2}{right*3}targets hit:";bt
690 print"{down*2}{right*3}out of ";tt;"possibles"
700 print"{down*2}{right*3}flight time:";int(ti/60);" seconds"
710 print"{down*5}{right*2}press space bar for next run"
720 get a$:if a$<>" " then 720
730 goto 80
1000 poke s+7,25:poke s+8,1:poke s+12,15:poke s+13,240
1010 poke s+11,129:poke s+11,128
1020 return
2000 poke hb,u:poke gb,214:poke 53280,u
2010 gosub 1000:gosub 1000
2020 bt=bt+u
2030 poke hb,z:poke gb,32:poke 53280,z
2040 return
3000 data 0,4,0,0,6,0,0,7,0,128,7,128,192,7,192,224,7,224
3010 data 224,7,240,224,7,248,240,7,252,255,255,255,255,255,255,0,248,12
4000 data 169,0,133,251,169,4,133,252,160,1,169,22,170,177,251
4010 data 136,145,251,202,240,12,24,152,105,41,168,144,241
4020 data 230,252,76,13,49,230,251,169,40,197,251,208,219,96
4030 data 160,0,169,4,133,254,169,119,133,253,162,20,169,32,145,253
4040 data 202,208,1,96,24,152,105,40,168,144,241,230,254,76,54,49
