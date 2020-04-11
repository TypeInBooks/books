0 REM MIND QUIZ
5 POKE54296,15
10 POKE53280,1:POKE649,1:POKE53281,1
20 PRINTCHR$(8)CHR$(142):PRINT"{clear}"
30 FORX=1025TO1062:POKEX,64:POKEX+54272,6:NEXT
40 FORX=1064TO1944STEP40:POKEX,93:POKEX+54272,6:NEXT
50 FORX=1103TO1983STEP40:POKEX,93:POKEX+54272,6:NEXT
60 FORX=1985TO2022:POKEX,64:POKEX+54272,6:NEXT
70 POKE1024,85:POKE55296,6
80 POKE1063,73:POKE1984,74:POKE2023,75:POKE55335,6
85 POKE56256,6:POKE56295,6
101 PRINT"{pink}{down*3}{right}{space*5}m{space*2}a{space*2}s{space*2}t{space*2}e{space*2}r{space*2}m{space*2}i{space*2}n{space*2}d"
130 DIMA%(4):DIMB%(4):DIMD%(4)
140 D$="{space*10}instructions y/n ?{space*8}"
141 PRINT"{down*2}"
142 PRINT"{up}{right*2}{reverse on}";D$:FORX=1TO79:NEXT
144 D$=D$+LEFT$(D$,1):D$=MID$(D$,2,36)
150 GETA$:IFA$<>"n"ANDA$<>"y"THEN142
170 GOSUB690
180 PRINT"{home}{down}"SPC(18)"m) play me"CHR$(13)SPC(18)"{down}s) play someone else"
190 GETA$:IFA$<>"m"ANDA$<>"s"THEN190
195 PRINT"{home}{down}"SPC(18)"{space*10}"CHR$(13)SPC(18)"{down}{space*20}"
200 IFA$="m"THENGOSUB850:GOTO310
230 R=1
240 FORX=1TO4
250 GETA$:IFA$=CHR$(20)ANDX>1THENX=X-1:R=R-2:POKE1067+R,160:POKE1067+R+54272,14
255 IFVAL(A$)<3ORVAL(A$)>8THEN250
260 A%(X)=VAL(A$):POKE1067+R,81:POKE1067+R+54272,A%(X)-1
280 R=R+2:NEXT
310 GOSUB835
325 PRINT"{home}"SPC(32)"{down*5}{red}3=Q{down*3}{left*3}{cyan}4=Q{down*3}{left*3}{purple}5=Q{down*3}{left*3}{green}6=Q{down*3}{left*3}{blue}7=Q{down*3}{left*3}{yellow}8=Q{blue}
336 Y=840:R=1
340 PRINT"{home}"SPC(25)"your guess"
342 POKE54277,190:POKE54278,248:POKE54273,17:POKE54272,37
345 POKE54276,17:FORX=1TO350:NEXT:POKE54276,0:POKE54277,0:POKE54278,0
350 PRINT"{home}"SPC(25)"{space*15}"
370 FORX=1TO4:D%(X)=A%(X):NEXT
380 FORX=1TO4
390 GETA$:IFA$=CHR$(20)ANDX>1THENX=X-1:R=R-2:POKE1067+R+Y,32
400 IFVAL(A$)<3ORVAL(A$)>8THEN390
410 B%(X)=VAL(A$):POKE1067+R+Y,81:POKE1067+R+54272+Y,B%(X)-1
430 R=R+2:NEXT
450 FORX=1TO4:IFB%(X)=D%(X)THENG$=G$+"Q":D%(X)=255:B%(X)=254
460 NEXT
470 IFD%(1)=B%(2)THENG$=G$+"W":D%(1)=255:B%(2)=254
480 IFD%(1)=B%(3)THENG$=G$+"W":D%(1)=255:B%(3)=254
490 IFD%(1)=B%(4)THENG$=G$+"W":D%(1)=255:B%(4)=254
500 IFD%(2)=B%(1)THENG$=G$+"W":D%(2)=255:B%(1)=254
510 IFD%(2)=B%(3)THENG$=G$+"W":D%(2)=255:B%(3)=254
520 IFD%(2)=B%(4)THENG$=G$+"W":D%(2)=255:B%(4)=254
530 IFD%(3)=B%(1)THENG$=G$+"W":D%(3)=255:B%(1)=254
540 IFD%(3)=B%(2)THENG$=G$+"W":D%(3)=255:B%(2)=254
550 IFD%(3)=B%(4)THENG$=G$+"W":D%(3)=255:B%(4)=254
560 IFD%(4)=B%(1)THENG$=G$+"W":D%(4)=255:B%(1)=254
570 IFD%(4)=B%(2)THENG$=G$+"W":D%(4)=255:B%(2)=254
580 IFD%(4)=B%(3)THENG$=G$+"W":D%(4)=255:B%(3)=254
600 PRINT"{home}":FORX=1TO((Y-40)/40):PRINT"{down}";:NEXT:PRINTSPC(18)"{green}"G$
620 IFG$="QQQQ"THEND$="yes":GOTO880
630 IFY=120THEND$="no":GOTO880
640 Y=Y-120:G$="":R=1
670 GOTO340
690 IFA$="n"THEN780
692 PRINT"{clear}{down*2}{light blue}{reverse on}{space*13}instructions{space*15}"
695 PRINT"{down*2}in this game you can play the computer{space*10}or a human opponent
700 PRINT"{down} you have {green}7{light blue} chances to crack the code"
710 PRINT"{down}to enter colours use keys{space*2}{red}3 {cyan}4 {purple}5 {green}6 {blue}7 {yellow}8{light blue}"
720 PRINT"{down}{space*4}press del if you make a mistake"
730 PRINT"{space*2}{down}{green} Q{light blue}{space*2}means right colour right spot"
740 PRINT"{space*2}{down}{green} W{light blue}{space*2}means right colour wrong spot"
750 PRINT"{reverse on}{down*3}{space*9}press return to start{space*10}"
760 GETA$:IFA$<>CHR$(13)THEN760
780 PRINT"{clear}";
790 FORX=1TO8
800 PRINT"{light blue}{space*3}O{cm y*7}P{space*31}{cm h}{space*7}{cm n}"
805 PRINT"{space*3}{cm h}{space*7}{cm n}"
810 NEXT
820 PRINT"{space*3}{cm y*9}";
830 PRINT"{home}{down*3}m{down*2}{left}a{down*2}{left}s{down*2}{left}t{down*2}{left}e{down*2}{left}r{down*2}{left}m{down*2}{left}i{down*2}{left}n{down*2}{left}d"
835 FORX=1TO9:FORY=0TO2:POKE1026+X+Y*40,160:POKE55298+X+Y*40,14:NEXTY,X
840 RETURN
850 FORX=1TO4
860 FORY=1TO3:E=RND(1)*5+3:NEXTY
870 A%(X)=E:NEXT:RETURN
880 FORX=1TO4:POKE1068+C,81:POKE1068+C+54272,A%(X)-1:C=C+2:NEXT
890 PRINT"{home}";:IFD$="no"THENPRINTSPC(16)"bad luck it was this"
900 IFD$="yes"THENPRINTSPC(16)"good on you you got it"
910 PRINT"{home}{down*2}"SPC(16)"play again y/n ?"
920 GETA$:IFA$<>"n"ANDA$<>"y"THEN920
930 IFA$="n"THENPOKE0,0:SYS0
940 RUN
