1 REM STUNT MAN
10 V=53248:POKE2040,192:POKE2041,193:POKEV+39,7:POKEV+40,10
20 POKEV+16,0:POKEV+21,0:FORI=12288TO12350:READQ:POKEI,Q:NEXT
30 FORI=12352TO12373STEP3:READQ:POKEI,Q:POKEI+1,0:POKEI+2,0:NEXT
35 FORI=12376TO12414:POKEI,0:NEXT
40 POKEV+2,185:POKEV+3,170
50 FORI=49152TO49230:READQ:POKEI,Q:NEXT
60 NM=3:SC=100
100 PRINT"{clear}";:POKE53281,11:POKE53280,11
102 IFNM=0THEN600
105 PRINT"{blue}{space*11}{reverse on}{sh pound}{space*3}{cm asterisk}{reverse off}{space*34}{reverse on}{sh pound}{space*5}{cm asterisk}{reverse off}";
107 PRINTSPC(22);"{reverse on}{sh pound}{reverse off}{space*8}{reverse on}{sh pound}{space*8}{cm asterisk}{reverse off}{space*19}{reverse on}{sh pound}{space*2}{reverse off}{space*3}{reverse on}{sh pound}{cm asterisk}{reverse off}{space*2}{reverse on}{sh pound}";
110 PRINT"{space*10}{cm asterisk}{reverse off}{space*17}{reverse on}{sh pound}{space*3}{reverse off} {reverse on}{sh pound}{space*3}{cm asterisk}{sh pound}{space*12}{cm asterisk}{reverse off}{space*4}{reverse on}{sh pound}{cm asterisk}";
112 PRINT"{reverse off}{space*2}{reverse on}{sh pound}{space*2}{cm asterisk}{reverse off}{space*2}{reverse on}{sh pound}{space*5}{sh pound}{space*19}{cm asterisk}{reverse off}{space*2}{reverse on}{sh pound}{space*2}{cm asterisk}{sh pound}{space*4}{cm asterisk}{sh pound}{space*13}";
114 PRINT"{space*66}";
116 PRINT"{space*47}{reverse off}";
117 PRINT"{space*6}{orange}{cm r}{space*5}{green}X{space*21}X"
118 PRINT"{space*5}{orange}{cm r}{sh -}":PRINT"{space*4}{cm r}{sh -}{space*30}{green}X"
120 PRINT"{space*3}{orange}{cm r}{sh -}":PRINT"{space*2}{cm r}{sh -}{sh -}{space*11}{gray}{cm p*7}"
122 PRINT" {orange}{cm r}{sh -}{sh -}{space*11}{gray}N{cyan}VVVVVVV{gray}M"
123 PRINT"{orange}{cm r}{sh -}{sh -}{sh -}{space*10}{gray}N{cyan}VVVV{purple}V{cyan}VVVV{gray}M{space*4}{orange}^^^^^"
124 PRINT"{orange}{sh -}{sh -}{sh -}{space*10}{gray}N{cyan}VVVVVVVVVVV{gray}M{space*3}{orange}{sh -}^{sh -}{sh -}{sh -}^"
126 PRINT"{orange}{sh -}{sh -}{sh -}{space*9}{gray}{cm n}{cm e}{sh asterisk}{cm e}{cm r}{cm e}{sh asterisk}{cm e}{sh asterisk}{cm e}{cm r}{cm e}{sh asterisk}{cm e}{cm h}{space*3}{orange}{sh -}^{space*2}{sh -}^"
128 PRINT"{orange}{sh -}{sh -}{space*10}{gray}{cm n}{space*3}{sh -}{space*5}{sh -}{space*3}{cm h}{space*4}{orange}{sh -}^^^^^"
130 PRINT"{orange}{sh -}{sh -}{space*10}{gray}{cm n}{space*13}{cm h}{space*5}{orange}{sh -}{sh -}{sh -}{sh -}{sh -}"
132 PRINT"{orange}{sh -}{space*11}{gray}{cm n}{space*13}{cm h}"
134 PRINT"{sh asterisk*40}";
136 PRINT:PRINT"{yellow}{sh asterisk*3}>{home}";
140 POKEV+16,1:POKEV,80:POKEV+1,80:POKEV+21,1:WS=5:GOSUB1000:F=0:T=0:NW=0
150 VL=54296:W=54276:A=54277:H=54273:L=54272
200 SYS(49152):SYS(49152):SYS(49152)
202 IF(PEEK(V+16)AND1)<>1ORPEEK(V)<89THEN204
203 POKEV+1,INT(RND(1)*75+50):SC=SC-10:GOSUB1000
204 IFF=1THEN230
205 K=PEEK(197):IFK<>60THEN220
210 POKEV+2,PEEK(V):POKEV+3,PEEK(V+1):F=1:T=0:M$="geronimooooo!!!{space*3}":GOSUB1300
212 IF(PEEK(V+16)AND1)=0THENPOKEV+16,0:GOTO217
215 POKEV+16,PEEK(V+16)OR2
217 POKEV+21,PEEK(V+21)OR2:YI=PEEK(V+1)+8:XI=PEEK(V)+256*(PEEK(V+16)AND1)
220 IFF=0THEN200
230 GOSUB300
240 IFX<20ORX>336THEN550
250 IFY<170THEN200
260 IFX>130ANDX<220THENGOSUB350:GOTO200
270 IFX<50THEN400
280 IFX>255ANDX<300THENGOSUB450:GOTO200
290 GOSUB500:GOTO200
300 XV=3:M=50
310 T=T+1:POKE54278,128:POKEVL,15:POKEW,129:POKEA,15:POKEL,200:POKEH,80-2*T
320 X=WS*T*T/M-XV*T+XI:Y=4.9*T*T/M+YI
325 X=INT(X):Y=INT(Y)
330 IFX>255THENPOKEV+16,PEEK(V+16)OR2:POKEV+2,X-256:GOTO340
335 POKEV+16,PEEK(V+16)AND253:POKEV+2,X
340 POKEV+3,Y
345 RETURN
350 IFX>170ANDX<185THENSC=SC+200:M$="superb!!!!{space*11}":GOTO360
355 SC=SC+100:M$="good jump!{space*9}"
360 WS=INT(RND(1)*10):GOSUB1000:GOSUB1300:F=0:T=0
370 POKEW,0:POKEA,0:RETURN
400 GOSUB1200:PRINT"{clear}{yellow}{space*7}stunt man electrocuted!!!":NM=NM-1:POKEV+21,0
410 FORTM=1TO3000:NEXT:SC=SC-100
440 GOTO100
450 M$="hit the fence!!":GOSUB1300:SC=SC-50
460 WS=INT(RND(1)*10):GOSUB1000:GOSUB1300:F=0:T=0:NW=NW+1
470 POKEW,0:POKEA,0:IFNW>2THEN700
480 RETURN
500 M$="ouch!! - try again":GOSUB1300:SC=SC-30:NW=NW+1
510 WS=INT(RND(1)*10):GOSUB1000:GOSUB1300:F=0:T=0
540 POKEW,0:POKEA,0:IFNW>2THEN700
545 RETURN
550 GOSUB1200:PRINT"{clear}{yellow}{space*3}stunt man drowned in swamp - ":POKEV+21,0
555 PRINT" a long way from the target!!"
560 FORTM=1TO3000:NEXT
570 NM=NM-1
580 GOTO100
600 POKE53280,0:POKE53281,0
605 PRINT"{clear}{space*15}{reverse on}game over{reverse off}":PRINT"{down*12}";
610 PRINT"{space*11}your score was ";SC
630 POKEV+21,0:END
700 PRINT"{clear}{yellow}{down}{space*7}stunt man out of action -":PRINT"{space*7}too many accidents"
710 POKEV+21,0:NM=NM-1:FORTM=1TO3000:NEXT
720 GOTO100
1000 PRINT"{down*22}";
1002 FORI=1938TO1943:POKEI,32:NEXT
1005 PRINT"{yellow}wind speed";TAB(10);WS;SPC(10);"total score";SC;
1010 PRINT"{home}";:RETURN
1200 FORI=15TO0STEP-1:POKE53281,I+80:POKE53280,I+80
1220 POKEVL,I:POKEW,129:POKEA,15:POKEH,2+5*I:POKEL,200:NEXT
1230 POKEW,0:POKEA,0:RETURN
1300 PRINT"{home}{down*24}";M$;"{home}";
1310 RETURN
10000 DATA0,0,15,0,0,15,0,15,15,0,31,15,0,62,15,0,124,15,63,255,255,63,255,255
10010 DATA127,255,255,255,255,254,255,255,252,127,255,248,0,255,0,0,127,128
10020 DATA0,63,192,0,31,192,0,15,128,0,7,0,0,0,0,0,0,0,0,0,0
10030 DATA184,214,124,56,56,56,108,206
10100 DATA173,16,208,41,1,208,27,56,173,0,208,233,4,141,0,208,201,5,176,13,173
10110 DATA16,208,9,1,141,16,208,169,100,141,0,208,96,56,173,0,208,233,4,141,0
10120 DATA208,201,252,144,8,173,16,208,41,254,141,16,208,96,238,0,208,238,0
10130 DATA208,238,0,208,173,0,208,208,234,173,16,208,9,1,141,16,208,96
