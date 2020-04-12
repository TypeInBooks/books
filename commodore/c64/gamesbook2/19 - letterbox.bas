0 DIMA$(24)
5 REM LETTER BOX
20 DN$="{home}{down*23}"
30 BL$="{reverse off}{right*5}{space*33}"
40 RT$="{home}{right*39}"
50 A$(0)="{right}":C$="{red}{cyan}{purple}{green}{blue}{purple}{orange}{brown}{pink}"
60 LM$="{blue}W {down}{left*2}{cm w} {down}{left*2}{cm x} ":RM$="{blue} W{down}{left*2} {cm q}{down}{left*2} {cm z}":LV=1:POKE650,128:S=54272
70 SC=10
80 GOSUB6000
100 SL=20:SR=21:X1=INT(RND(.)*8)+10:DX=1
110 IFLV<1THENLV=1
120 IFLV>5THENLV=5
140 GOSUB1000
160 FORL=1TO24:A$(L)=CHR$(INT(RND(.)*26+65)):NEXT
180 PRINTLEFT$(DN$,21)RIGHT$(RT$,X1)RM$;
190 E=INT(RND(.)*4)+1:F=E+6-LV
200 FORJ=ETOF:PRINT"{home}{right*5}{space*26}"
220 N=0:FORI=1TO24
230 GOSUB1500
240 PRINT"{home}{down}"MID$(C$,J,1)TAB(I+5)A$(I);
260 NEXT:NEXT
280 PRINT"{home}";:N=INT(RND(.)*24)+1
300 FORK=1TO22
310 PRINTLEFT$(DN$,K)TAB(5+N)" {down}{left}"MID$(C$,F,1)A$(N)"{left}";
320 FORT=1TO85-(LV*12):NEXT:GOSUB1500
330 IFSL=0THENSC=SC+(10*LV):LV=LV+1:N=SR:GOSUB2000:GOSUB7000
332 IFSL=0THENIFGG=1THENGG=0:GOTO5
335 IFSL=0THEN100
340 IFK=23THEN160
350 NEXT
360 FORT=4+NTO32
370 IFT=X1THENGOSUB1580:T=T+1:GOTO400
380 PRINTTAB(T)" "MID$(C$,F)A$(N):PRINT"{up}";
400 NEXT
410 GOSUB5000
420 IFSR=0THENSC=SC-(10*LV):LV=LV-1:N=SL:GOSUB2500:GOSUB7000
421 IFSR=0THENIFGG=1THENGG=0:GOTO5
422 IFSR=0THEN100
430 SC=SC-(1*LV):GOSUB7000:IFGG=1THENGG=0:GOTO5
450 GOTO160
1000 POKE53280,1:POKE53281,1:PRINT"{clear}"
1020 PRINT"{clear}{green}{reverse on}{sh pound} g {cm asterisk}{reverse off}{space*26}{reverse on}{pink}{sh pound} b {cm asterisk}"
1040 FORI=1TO22
1050 PRINT"{right}{black}{cm k}{right}{reverse on}{cm k}{reverse off}{space*28}{cm k}{right}{reverse on}{cm k}{reverse off}"
1060 NEXT
1240 PRINT"{reverse on}{black}{space*37}"
1250 PRINT"{reverse on}{black} score{space*5}{left*5}"SC,"{left*9}{space*3}letter box{space*5}level{space*3}{left*3}"LV"{home}"
1260 PRINTLEFT$(DN$,21)"{right*4}{cm i}{down}{left*2} {down}{reverse on}{cm i}";
1270 PRINTLEFT$(BL$,29)"{up}{left*2}{cm i}"
1280 RETURN
1500 REM MOVE MAILMAN
1520 GETM$:IFM$=""THEN1600
1530 IFM$="{f7}"THENGOSUB7025:GG=0:GOTO5
1540 IFM$=A$(N)THENMM$=RM$:DX=1:GOTO1580
1550 M=ASC(M$):M=M-128
1560 IFM=ASC(A$(N)+CHR$(0))THENMM$=LM$:DX=-1:GOTO1580
1570 M$="":GOTO1600
1580 PRINTLEFT$(DN$,21)RIGHT$(RT$,X1)MM$;
1590 X1=X1+DX:IFX1<5THENX1=5
1595 IFX1>29THENX1=29
1600 IFK<20ORK>22THENRETURN
1630 IFDX=-1AND(X1<(N+3)ORX1>(N+5))THENRETURN
1640 IFDX=1AND(X1<(N+4)ORX1>(N+6))THENRETURN
1650 FORT=5+NTO5STEP-1
1655 PRINTLEFT$(DN$,22)TAB(T)MID$(C$,F)A$(N)"{up}"LM$
1660 NEXT
1670 FORT=5TO2STEP-1
1680 PRINTLEFT$(DN$,22)TAB(T)MID$(C$,F)A$(N)" "
1690 NEXT
1700 PRINTLEFT$(DN$,22)TAB(5)"{up}"LM$
1750 REM GOT LETTER STACK
1760 POKE56138,F+1
1770 FORK1=1026+SL*40TO1026+20*40STEP40
1780 POKEK1,PEEK(K1+40):POKEK1+54272,PEEK(K1+54312)
1790 NEXT
1795 SC=SC+(1*LV):GOSUB7000:IFGG=1THENGG=0:GOTO5
1800 POKEK1,32:POKEK1+54272,F+1:SL=SL-1
1820 N=1:GOSUB2000:K=23:X1=5:RETURN
2000 REM BELL SOUND
2020 FORL=0TO20:POKES+L,0:NEXT
2040 POKES+1,30:POKES+5,9:POKES+15,30:POKES+24,15
2060 FORL=1TON:POKES+4,29
2080 FORT=1TO300:NEXT:POKES+4,0
2100 NEXT:RETURN
2500 REM BUZZ SOUND
2520 FORL=0TO20:POKES+L,0:NEXT
2540 POKES+1,179:POKES+5,69:POKES+15,13:POKES+24,15
2560 FORL=1TON:POKES+4,29
2580 FORT=1TO300:NEXT:POKES+4,0
2600 NEXT:RETURN
5000 REM MISSED LETTER STACK
5010 POKE56209,F+1
5020 FORK1=1057+SR*40TO1057+21*40STEP40
5040 POKEK1,PEEK(K1+40):POKEK1+54272,PEEK(K1+54312)
5050 NEXT
5060 POKEK1,32:POKEK1+54272,F+1:SR=SR-1
5080 N=1:GOSUB2500:RETURN
6000 REM GAME INSTRUCTIONS
6010 IFG=1THENRETURN
6030 GOSUB1000:PRINT"{home}","{right*3}letter box"
6040 PRINT"{right*2}a{down*2}{left}m{right*2}catch the dropping letters{right*2}{up*2}a{down*2}{left}m"
6050 PRINT"{right*2}e{right*2}by moving the tiny postman{right*2}e"
6060 PRINT"{right*2}l"," left & right.","{right*3}l"
6070 PRINT"{right*2}b{right*2}press key which equals the{right*2}b"
6080 PRINT"{right*2}o{right*2}letter falling to go right{right*2}o"
6090 PRINT"{right*2}u{right*2} and use shift and key to{right*3}u"
6100 PRINT"{right*2}r","{right*3}go left.","{right*3}r"
6110 PRINT"{right*2}n{down}{left}e{right*2}{space*2}to move postman prior to{right*2}{up}n{left}{down}e"
6120 PRINT"{right*5}letter falling, use cursor"
6130 PRINT"{right*2}h","{right*3}{space*2}keys.","{right*3}h"
6140 PRINT"{right*2}o{down}{left}u{right*2}press {light gray}f7{black} to stop the game.{right*2}{up}o{down}{left}u"
6150 PRINT"{right*2}s{down}{left}e{down}{right*2}press a key to start game.{right*2}{up*2}s{down}{left}e"
6160 PRINT"{down}{right*2}g{down}{left}a{down}{left}m{down}{left}e",,,"{up*3}{right*3}g{down}{left}a{down}{left}m{down}{left}e"
6200 G=1:GETG$:IFG$<>""THENRETURN
6210 FORI=5TO29:PRINT"{home}{down*20}"SPC(I)RM$:FORJ=1TO40:NEXTJ,I
6220 GOSUB2500:GETG$:IFG$<>""THENRETURN
6230 FORI=29TO5STEP-1:PRINT"{home}{down*20}"SPC(I)LM$:FORJ=1TO40:NEXTJ,I
6240 GOSUB2000:GETG$:IFG$<>""THENRETURN
6250 GOTO6200
7000 IFSC<1THENGOTO7025
7010 IFSC>999999THEN7025
7020 PRINT"{home}{down*24}{black}{reverse on} score{space*5}{left*5}"SC"{home}{reverse off}";:RETURN
7025 PRINT"{home}{down*24}{black}{reverse on} score{space*5}{left*5}"SC"{home}{reverse off}";
7030 PRINT"{home}{down*5}{right*8}play again (y/n) ?"
7040 GETA$:IFA$="y"THENGG=1:RETURN
7050 IFA$<>"n"THEN7040
7060 POKE53280,0:POKE53281,0:PRINT"{clear}{black}load"CHR$(34)"menu"CHR$(34)",8"
7070 POKE198,5:POKE631,19:POKE632,13:POKE633,82:POKE634,117:POKE635,13
