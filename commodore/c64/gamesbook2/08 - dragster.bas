10 REM DRAGSTER
100 POKE650,128:V=53248:BG=53280:MS=54272:GOTO2000
130 R$=R$(R)
140 C=PEEK(V+31)AND2^0:IFC=1THEN290
150 IFTI<1000THEN160
155 R$=R$(R):DS=DS+1000:GOTO210
160 IFINT(RND(TI)*100)<40THENR$=RR$
180 SP=ABS(SP+(INT(RND(TI)*3)-1))
190 SP=SP-(1*(SP<(40-LEN(R$)))+1)
200 SP=SP*((SP<0)+1)
207 PRINT"{home}{down*23}"
210 PRINT:PRINTSPC(SP)R$
220 IFRND(.)<2THENOL=INT(RND(.)*(LEN(R$))):PRINT"{up}"SPC(SP+OL)"{black}Q"
230 P=PEEK(203):IFP=39THEN280
240 IFP=36THEN270
250 P=PEEK(56320)AND12:IFP=8THEN280
260 IFP<>4THEN290
270 POKEV,PEEK(V)+3:POKEV,PEEK(V)+4:GOTO130
280 POKEV,PEEK(V)-3:POKEV,PEEK(V)-4:GOTO130
290 C=PEEK(V+31)AND2^0:IFC=0THEN150
300 REM CRASHED ROUTINE
305 POKEMS+4,0:POKEMS+6,0
307 POKEMS+4,0:POKEMS+1,72:POKEMS,179:POKEMS+5,140:POKEMS+4,129
310 PRINT"{home}{red}":PRINT"{home}{reverse on}crashed{reverse off}{space*24}"
320 FORI=0TO150STEP2:POKE2040,I:POKE2040,192:NEXT:POKEMS+4,0
330 XS=TI:DS=(XS-ES+(R+1)*1000)/100
340 PRINT"{down*2}distance:"DS"kilometres{space*14}"
350 IFDS>HDTHENHD=DS
355 PRINT"{down}best distance:"HD"kilomtres{space*14}"
356 PRINT"{down}press key or fire button to restart"
358 POKE198,0
359 IF(PEEK(56320)AND16)=0THEN370
360 GETA$:IFA$=""THEN359
370 PRINT"{clear}"
410 POKE2040,192
500 REM TITLE SCREEN
502 PRINT"{clear}";:POKEBG,1:POKEBG+1,1
505 POKEV+39,6
510 POKEV,0:POKEV+1,0
515 POKEV+16,PEEK(V+16)AND(255-(2^0))
520 POKE2040,192
525 POKEV+21,PEEK(V+21)OR(2^0)
530 POKEV+27,0
535 POKEV,168
540 PRINT"{home}you are the"
542 PRINT"{home}you are the"
544 PRINT"{down}driver of a"
546 PRINT"{down}new dragster."
550 PRINT"{down*2}you must drive"
554 PRINT"{down}to the limit."
560 PRINT"{down*2}you can steer"
564 PRINT"{down}with m & n keys"
570 PRINT"{down}or use the"
574 PRINT"{down}joystick-port 2"
580 PRINT"{home}{down*2}"SPC(24)"do not hit the"
584 PRINT"{home}{down*4}"SPC(24)"armco siding"
590 PRINT"{home}{down*6}"SPC(24)"& watch out for"
594 PRINT"{home}{down*8}"SPC(24)"oil slicks."
600 PRINT"{home}{down*21}hold spacebar or":PRINT"fire to start{home}";
630 FORI=1TO24
635 PRINTSPC(16);"{red}{reverse on}{sh -}{cm q}{reverse off}{space*3}{reverse on}{cm w}{reverse on}{sh -}{reverse off}"
640 NEXT
645 PRINT"{home}"SPC(19)"d{down*2}{left}r{down*2}{left}a{down*2}{left}g{down*2}{left}s{down*2}{left}t{down*2}{left}e{down*2}{left}r{down*3}{left}6{down*2}{left}4"
650 GOSUB2500:POKEMS+4,129:FORI=20TO250:POKEV+1,I:NEXT
655 IF(PEEK(56320)AND16)=0THEN665
660 GETA$:IFA$<>" "THENPOKEMS+4,0:FORT=1TO200:NEXT:GOTO650
665 POKEMS+24,5
670 FORI=VTOV+16:POKEI,0:NEXT
680 POKEV+27,253
690 FORI=1TO30
700 PRINTSPC(16);"{red}{reverse on}{sh -}{cm q}{reverse off}{space*3}{reverse on}{cm w}{reverse on}{sh -}{reverse off}"
710 NEXT
720 POKEV,168:POKEV+1,70
730 GOSUB2400
740 TI$="000007"
750 PRINT"{home}{down*9}{right*7}{red}Q";
760 T1=INT(10-VAL(TI$))
770 IFT1<>2THEN760
772 PRINT"{left} {down*2}{left}{red}Q";
774 T1=INT(10-VAL(TI$))
775 IFT1<>1THENPOKE198,0:GOTO774
776 PRINT"{left} {down*2}{left}{green}Q";
777 IF(PEEK(56320)AND16)=0THEN780
778 GETA$:IFA$<>" "THEN777
780 POKE198,0:ES=TI:TI$="000000":DS=0:R=0:GOSUB2500:POKEMS+4,129
790 FORI=70TO180:POKEV+1,I:NEXT
800 SP=13:R$=R$(R):RR$=RR$(R)
820 POKE198,0:GOTO130
2000 REM ROAD DATA
2010 R$(7)="{orange}{reverse on}{space*2}{reverse off}{space*5}{reverse on}{space*2}{reverse off}"
2020 R$(6)="{brown}{reverse on}{space*2}{reverse off}{space*5}{reverse on}{space*2}{reverse off}"
2030 R$(5)="{pink}{reverse on}{space*2}{reverse off}{space*6}{reverse on}{space*2}{reverse off}"
2040 R$(4)="{dark gray}{reverse on}{space*2}{reverse off}{space*6}{reverse on}{space*2}{reverse off}"
2050 R$(3)="{gray}{reverse on}{space*2}{reverse off}{space*6}{reverse on}{space*2}{reverse off}"
2060 R$(2)="{light green}{reverse on}{space*2}{reverse off}{space*7}{reverse on}{space*2}{reverse off}"
2070 R$(1)="{light blue}{reverse on}{space*2}{reverse off}{space*7}{reverse on}{space*2}{reverse off}"
2080 R$(0)="{light gray}{reverse on}{space*2}{reverse off}{space*8}{reverse on}{space*2}{reverse off}"
2090 RR$(7)="{orange}{reverse on}{space*2}{reverse off}{space*5}{reverse on}{space*2}{reverse off}"
2100 RR$(6)="{brown}{reverse on}{space*2}{reverse off}{space*5}{reverse on}{space*2}{reverse off}"
2110 RR$(5)="{pink}{reverse on}{space*2}{reverse off}{space*6}{reverse on}{space*2}{reverse off}"
2120 RR$(4)="{dark gray}{reverse on}{space*2}{reverse off}{space*6}{reverse on}{space*2}{reverse off}"
2130 RR$(3)="{gray}{reverse on}{space*2}{reverse off}{space*6}{reverse on}{space*2}{reverse off}"
2140 RR$(2)="{light green}{reverse on}{space*2}{reverse off}{space*7}{reverse on}{space*2}{reverse off}"
2150 RR$(1)="{light blue}{reverse on}{space*2}{reverse off}{space*7}{reverse on}{space*2}{reverse off}"
2160 RR$(0)="{light gray}{reverse on}{space*2}{reverse off}{space*8}{reverse on}{space*2}{reverse off}"
2200 FORI=12288TO12350:READN:POKEI,N:NEXT
2300 REM DRAGSTER DATA
2310 DATA0,0,0,60,0,60,60,255,60,63,195,252,63,255,252,60,255,60,60,126,60
2320 DATA0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0
2330 DATA3,60,192,3,60,192,3,255,192,3,255,192,3,60,192,3,24,192,0,0,0
2350 GOTO500
2400 PRINT"{home}{down*8}{right*6}U{sh asterisk}I"
2410 FORI=1TO5:PRINTSPC(6)"{sh -} {sh -}":NEXT
2420 PRINTSPC(6)"J{sh asterisk}K"
2430 FORI=1TO8:PRINTSPC(7)"{reverse on} ":NEXT
2440 PRINT"{home}{down*2}press spacebar"
2445 PRINT"{down}or fire button"
2450 PRINT"{down}on green light"
2460 RETURN
2500 REM EXHAUST NOISE
2520 POKEMS+4,0:POKEMS+24,15:POKEMS+5,85:POKEMS+6,195:POKEMS,15:POKEMS+1,1
2540 RETURN
