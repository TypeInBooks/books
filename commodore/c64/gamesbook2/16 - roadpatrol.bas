0 REM ROAD PATROL
10 GOTO1000
20 REM JOYSTICK ROUTINE
25 JY=PEEK(56320):IFJY=255THENA$="":RETURN
30 IF(JYAND16)=0THENA$=" ":RETURN
35 IF(JYAND4)=0THENA$="z":RETURN
40 IF(JYAND8)=0THENA$="m":RETURN
45 A$="":RETURN
200 IFGS=1THEN220
210 GETA$:IFA$="{f1}"THENGOSUB2000
220 POKEV,SC:POKEV+1,SR
240 POKEV+2,CC:POKEV+3,CR
250 GETA$:IFA$=""THENGOSUB20:IFA$=""THEN500
255 IFGS=1THENIFA$="{f7}"THENSYS65535
260 IFA$="z"THENCX=-14:CC=CC+CX:GOTO350
265 IFA$="m"THENCX=14:CC=CC+CX:GOTO350
270 IFA$<>" "THEN500
275 POKEV+41,2:POKEV+21,PEEK(V+21)OR4
280 POKESS+24,15:POKESS+1,18
285 FORI=CR-20TOSR-4STEP-16:POKEV+4,CC+12:POKEV+5,I
290 IFPEEK(V+30)AND1=1THENPOKEV+39,7:FORT=1TO20:NEXT:GOTO315
300 NEXT
310 GOTO325
315 IFGS=0THEN325
320 IFSE=3THENHS=HS+1:PRINT"{home}{down*22}{black}{reverse on}"SPC(36)HS
322 IFSE=2THENHS=HS+2:PRINT"{home}{down*22}{black}{reverse on}"SPC(36)HS
325 POKESS+1,40
330 POKEV+21,3:POKEV+39,0
340 IFHS>4THENGOTO2500
345 GOTO500
350 IFCC<60THENCC=60
360 IFCC>240THENCC=240
380 GOTO240
500 SC=SC+SX
510 IFSC<20THENSC=20:SX=-SX:SY=(INT(RND(.)*9)+8)*(1-(INT(RND(.)*3)))
520 IFSC>240THENSC=240:SX=-SX:SY=(INT(RND(.)*9)+8)*(1-(INT(RND(.)*3)))
530 SR=SR+SY:POKESS+24,SR/12
540 IFSR>180THENSR=180:SY=-SY:GOTO600
550 IFSR>30THEN600
560 SR=30:SY=-SY
570 IFRND(.)>.25THEN600
575 IFSE=3THENSE=2:GOTO590
580 SE=3
590 POKEV+29,SE:GOTO600
600 REM SAUCER FIRE
610 IFSC<CC-10ORSC>CC+10THEN220
620 POKEV+41,0:POKEV+21,PEEK(V+21)OR4
640 POKESS,240:POKESS+1,176
660 FORI=SR+24TO220STEP16:POKEV+4,SC+14:POKEV+5,I
680 IFPEEK(V+30)AND2=2THENPOKEV+40,7:FORT=1TO20:NEXT:GOTO730
700 NEXT
720 GOTO750
730 IFGS=0THEN750
740 IFSE=3THENHC=HC+1:PRINT"{home}{down*22}{black}{reverse on}"HC
745 IFSE=2THENHC=HC+2:PRINT"{home}{down*22}{black}{reverse on}"HC
750 POKESS,0:POKESS+1,40
760 POKEV+21,PEEK(V+21)AND(255-2^2)
770 POKEV+40,INT((119-HC)/20)
780 IFHC>99THEN2100
790 GOTO200
800 REM UFO SOUND
810 FORI=SSTOSS+23:POKEI,0:NEXT:POKESS+24,5
820 POKESS+5,17:POKESS+6,218:POKESS,0:POKESS+1,40:POKESS+2,70:POKESS+3,6
830 POKESS+12,17:POKESS+13,218:POKESS+7,0:POKESS+8,40:POKESS+9,175:POKESS+10,15
840 POKESS+4,65:POKESS+11,65
850 RETURN
1000 REM GAME SCREEN
1020 POKE53280,3:POKE53281,3
1060 PRINT"{clear}{down*16}{light blue}";
1080 PRINT"{space*9}{reverse on}{sh pound}{cm asterisk}{reverse off}{space*9}{reverse on}{blue}{sh pound}{cm asterisk}"
1100 PRINT"{space*8}{reverse on}{light blue}{sh pound}{space*2}{cm asterisk}{reverse off}{space*7}{reverse on}{blue}{sh pound}{space*2}{cm asterisk}"
1120 PRINT"{space*5}{reverse on}{light blue}{sh pound}{cm asterisk}{sh pound}{space*4}{cm asterisk}{reverse off}{space*5}{reverse on}{blue}{sh pound}{space*4}{cm asterisk}{reverse off}{space*2}{reverse on}{sh pound}{cm asterisk}"
1140 PRINT"{space*4}{reverse on}{light blue}{sh pound}{space*2}{reverse off}{cm asterisk}{reverse on}{space*5}{cm asterisk}{reverse off}{space*3}{reverse on}{blue}{sh pound}{space*6}{cm asterisk}{sh pound}{space*2}{cm asterisk}"
1160 PRINT"{space*3}{reverse on}{light blue}{sh pound}{space*10}{cm asterisk}{reverse off} {reverse on}{blue}{sh pound}{space*8}M{space*3}{cm asterisk}{reverse off}{space*4}{green}{cm k}{space*2}{green}K"
1180 PRINT"{space*2}{reverse on}{light blue}{sh pound}{space*12}{blue}{sh pound}{space*10}M{space*3}{cm asterisk}{reverse off}{space*3}{green}K{space*2}{green}{cm j}"
1200 PRINT" {reverse on}{light blue}{sh pound}{space*11}{reverse off}{sh pound}{reverse on}{blue}{sh pound}{space*12}M{space*3}{cm asterisk}{reverse off}{space*2}{green}{cm j}{space*2}{green}{cm j}"
1220 PRINT"{reverse on}{orange}{space*40}{reverse off}";
1240 PRINT"{reverse on}{black}{space*40}";
1260 PRINT"{reverse on}{black}{space*40}";
1280 PRINT"{reverse on}{yellow}{space*40}{home}";
1300 PRINT"{reverse on}{blue}{right*7}{sh pound} r o a d{space*3}p a t r o l {cm asterisk}{reverse off}"
1320 PRINT"{down*2}{right*5}move patrol car left{space*2}with z key"
1330 PRINT"{down}{right*5}move patrol car right with m key"
1340 PRINT"{down}{right*5}fire using spacebar"
1360 PRINT"{down}{right*5}or use joystick in port a"
1370 PRINT"{down}{red}hold f1 key to start or f7 key to finish"
1500 REM INITIAL LOCATIONS
1510 POKE650,128:V=53248:SS=54272:SE=3:GOSUB5000
1520 POKE2040,13:POKE2041,14:POKE2042,15
1530 POKEV+21,3:POKEV+39,0:POKEV+40,6:POKEV+29,SE
1550 CR=216:CC=INT(RND(.)*200)+40
1560 SR=INT(RND(.)*90)+40
1580 SC=INT(RND(.)*230)+20
1600 SX=INT((RND(.)*9)+8)*(1-(INT(RND(.)*3))):IFSX=0THEN1600
1620 SY=INT((RND(.)*9)+8)*(1-(INT(RND(.)*3)))
1640 GOSUB800:GOTO200
2000 REM BLANK TITLE SCREEN
2020 GS=1:B$="{space*10}":B$=B$+B$:B$=B$+B$:B$=B$+B$:B$=B$+B$
2040 PRINT"{home}"B$B$B$
2060 RETURN
2100 REM PATROL CAR DESTROYED
2120 PRINT"{home}{down*22}"SPC(INT(CC/8));
2130 POKEV+21,0:POKESS+4,0:POKESS+11,0:POKESS+12,75:POKESS+13,18:POKESS+24,15
2140 FORI=1TO4:PRINT"{red}{sh pound}{cm +}{cm asterisk}";:FORT=1TO80:NEXT:PRINT"{left*3}{reverse on}{black}{space*3}{left*3}{reverse off}";:POKESS+11,129
2150 FORT=1TO100:NEXT:NEXT:POKESS+11,0
2160 IFHS>HHTHENHH=HS
2170 PRINT:PRINT"{up*4}{right*10}{reverse on}{orange}highest hits on ufo:"HH
2180 PRINT"{down}{right*12}{reverse on}another game(y/n)"
2200 GETA$:IFA$="y"THENHS=0:HC=0:RESTORE:GS=0:GOTO1000
2220 IFA$<>"n"THEN2200
2230 SYS65535
2500 REM UFO DESTROYED
2520 POKESS+4,0:POKESS+11,0:POKESS+5,78:POKESS+6,22:POKESS+24,15:POKESS+4,129
2540 FORI=1TO15:POKEV+39,I:FORT=1TO100:NEXT:NEXT:POKESS+4,0
2560 POKEV+21,2
2570 PRINT"{home}{down*21}"
2580 GOTO2160
5000 REM UFO,PATROL CAR & FIRE DATA
5020 FORI=0TO191:READA:POKE(832+I),A:NEXT:RETURN
5040 DATA0,0,0,0,0,0,0,0,0,0,0,0,0,34,0,0,34,0,0,255,0
5060 DATA3,60,192,6,0,96,31,255,248,31,255,248,6,0,96,3,255,192,0,255,0
5080 DATA0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5100 DATA0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
5120 DATA0,24,0,0,24,0,17,255,136,11,255,208,6,0,96,31,255,248,63,255,252
5140 DATA13,129,176,7,0,224,2,0,64,0,0,0,0,0,0,0,0,0,0
5160 DATA0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0
5180 DATA0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0,0,60,0
5200 DATA0,60,0,0
