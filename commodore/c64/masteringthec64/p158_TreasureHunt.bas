1 printchr$(14)chr$(8):poke53280,2:poke53281,0
10 print"{clear}{green}":dima(425)
20 print:print
30 print"{clear}{down}{space*12}treasure hunt.":forhh=1to2500:next
40 print:print
60 deffnr(x)=int(rnd(1)*x)+1
70 print"{clear}{down*2}The MARPLE CAVES,located in marple-town,are said to have 20"
71 print"hidden treasures in them. Few explore{space*4}them, because it is said that"
72 print"PIRATES and DRAGONS live there--besides"
80 print"there are deep pits which many have{space*5}fallen into and DIED"
81 print"{down*2}PRESS f1 TO CONTINUE"
83 getm$
85 ifm$="{f1}"then88
86 goto83
88 print"{clear}{down*4}"
90 print"You, a smart and brave human, and I a{space*3}commodore 64 will explore the caves"
91 print"and try to find the treasure. I will be your eyes and ears"
92 print"and will tell you if danger lurks ahead."
100 print
110 print"{space*2}I hope you brought a map. In case you didn't, you'll have to"
111 print"make one as we explore":print:print"{down*2}PRESS f1 TO CONTINUE."
112 getm$
113 ifm$="{f1}"then140
115 goto112
140 print"{clear}"
141 fori=1to3
150 n=3+fnr(88)
160 ifa(n)<>0then150
170 a(n)=2
180 next
190 fori=3to9
200 n=3+fnr(88)
210 ifa(n)<>0then200
220 a(n)=i
230 next
240 fori=288to304
250 n=fnr(94)
260 ifa(n)<>0then250
270 a(n)=i
280 next
290 restore
300 forn=1to23
310 reada$
320 next
330 forn=137to408
340 reada(n)
350 next
360 w=0:m=0:b=200:d=0
400 print"{down*4}"
410 print"Welcome to the marple caves where you{space*3}will find MYSTERY"
411 print"TREASURE and ADVENTURE!"
420 print
430 goto500
470 print"{clear}"
480 b=b-1
490 ifb=0then3740
500 ifw=0then3140
540 iffnr(200)=200thengosub1890
550 iffnr(200)=200thengosub2120
560 ifd=0anda(w)=0andfnr(50)=50thengosub2850
570 ifa(w)=6and(fnr(5)=5)then3570
620 ifa(w)=2then3440
630 ifa(w)=4then2890
640 ifa(w)=5thengosub1770
650 ifa(w)=7thenprint:print:print"There's a shy little elf in here hiding someting."
660 ifa(w)=8then2410
700 gosub3350
710 z=w
720 gosub4120
730 forn=134to136
750 printtab(1)"cave";a(n);
760 ifa(n)=0thenprint"-THE ENTRANCE!";
770 print
780 next
820 ifb>190then880
830 ifw<>0then880
840 input"To explore hit 1 else 2";j
860 ifj=2then3810
870 ifj<>1then840
880 ifb=50thenprint:print"  I hope you brought your torch batteries"
890 ifb=25thenprint:print"Your torch is starting to dim a bit."
900 ifb=8thenprint:print"Your torch is almost out. Better leave{space*2}right now!!!!"
910 ifa(w)=3thengosub2290
950 k=0:l=0
970 forn=134to136
980 j=a(w)
990 ifj<0then1090
1000 ifa(j)=5then1090
1010 ifa(j)>0anda(j)<10andk=0thenprint:k=1
1020 ifa(j)=2andl=0thenprint"There are pits nearby. Watch your step.":l=1
1030 ifa(j)=3thenprint" CAREFUL- there's a pirate nearby"
1040 ifa(j)=4thenprint" i hear a hungry dragon nearby-waiting{space*2}for his SUPPER!"
1050 ifa(j)=6thenprint"there's a sign here that says:":print"{clear}{down*3}{space*2}{reverse on}{red}>>DANGER<<{reverse off}{green}"
1060 ifa(j)=7thenprint"sounds like a someone is singing. must{space*2}be an ELF."
1070 ifa(j)=8thenprint"there's a strange mist in here!"
1080 ifa(j)=9thenprint"RUFF RUFF!.... i can{space*2}hear a dog barking"
1090 next
1100 ifa(131)=0then1200
1110 print
1120 print"You're carrying:";a$
1140 ifa(n)<100then1190
1150 z=a(n)
1160 gosub4040
1170 printa$;
1190 print
1200 ifa(w)<100thenprint:goto1440
1240 print
1250 z=a(w)
1260 gosub4040
1270 print" This cave has";a$;"in it"
1280 print"Do you want to take it with you?{down}"
1290 input"(y or n)";j$
1300 ifj$="n"then1440
1310 ifj$<>"y"then1290
1320 ifz=290thengosub1630
1330 ifz=290then1440
1340 ifz=291thenm=1
1350 ifz=294thengosub1990
1360 ifz=1then1440
1370 ifz=295then3650
1380 forn=131to133
1390 ifa(n)=0thena(n)=a(w):a(w)=0:goto1430
1400 next
1410 print"You can't pick it up now ... you're{space*5}carrying too much."
1420 goto1440
1430 print"o.k. you've got";a$;"."
1440 ifa(w)=7thena(w)=307
1480 input"Which cave next";h
1490 forn=134to136
1500 ifa(n)=-1then1520
1510 ifh=a(n)thenw=h:goto470
1520 next
1530 ifm=1andh>=0andh<=94andint(h)=hthenw=h:goto470
1540 print"{down}Sorry, but you can't go there from here.{down}"
1550 goto1480
1630 forn=131to133
1640 ifa(n)=298then1680
1650 next
1660 print"You can't take it - it's too heavy!"
1670 return
1680 print"The box was too heavy so i opened it{space*4}with your keys. By the way, "
1681 print"there is a {red}ruby{green} in it that you can{space*4}take."
1690 a(w)=308
1700 z=308
1710 gosub4040
1720 return
1760 print"{down*4}"
1770 print" There's a FRUIT MACHINE in here."
1780 forn=131to133
1790 ifa(n)=288then1820
1800 next
1810 return
1820 print"I'll get some batteries with one of your{yellow}GOLD{green} coins."
1830 b=200
1840 a(w)=0
1850 return
1890 forn=1to10
1900 z=3+fnr(88)
1910 gosub3950
1920 next
1930 print"{down*6}"
1940 print"Guess what? We've just had an{space*11}earthquake!! but i'm O.K..."
1950 return
1990 forn=131to133
2000 ifa(n)=293then2040
2010 next
2020 print"It's stuck in the rocks and can't be{space*4}pulled out."
2030 z=1:return
2040 print"Let me use your magic wand a sec."
2050 forz=0to2000:next
2060 print"{down*2} HOCUS, POCUS..."
2070 forz=0to2000:next
2080 a(w)=310:z=0
2090 return
2120 print"{down*6}":print
2130 print"A superbat just flew into the cave and{space*2}picked you up."
2140 ifa(131)<>0thenprint"You dropped all your treasures"
2150 forn=131to133
2160 ifa(n)=0then2180
2170 a(0)=a(n):a(n)=0:z=0:gosub3950
2180 next
2190 n=fnr(94)
2200 ifa(n)<>0then2190
2210 w=n
2220 print"The bat just dropped you into cave";w"!!!"
2230 print"If you're all right hit a key."
2231 geta$:ifa$=""then2231
2233 print"{clear}"
2240 print"{home}"
2250 return
2290 print"{down*2} There was a pirate in here."
2300 ifa(13)<>0thenprint"HE JUST STOLE ALL YOUR TREASURES!"
2310 forn=131to133
2320 a(w)=0
2330 next
2340 z=w
2350 gosub3950
2360 print" He's gone now!."
2370 return
2400 print"{clear}"
2410 print"{down*6}":print
2420 print"There's a magician in this cave. He says he's lost his magic book."
2421 print"He says he'll give you a {yellow}GOLDEN HARP{green}{space*2}if you'll tell him where it is."
2422 print"{down*2} Type in the cave number. If you don't{space*3}know then just type 99.{down}"
2450 input"Where's his book?";j
2470 ifj<0andj>95then2520
2480 ifa(j)<>295then3840
2490 a(w)=309
2500 a(j)=0
2510 goto470
2520 z=w
2530 gosub3950
2540 goto470
2580 print"{down*6}":print
2590 print"The invisible man is here looking for{space*3}his invisible dog. he says he'll"
2595 print"give you a {pound}1000 reward if you can tell him where it is. if you don't"
2596 print"know then guess.{down}"
2610 input"what cave is it in{down}";j$
2620 print"{clear}"
2630 j=int(val(j$))
2640 ifj<0andj>95andint(j)<>janda(j)<>9thenreturn
2650 a(w)=305
2660 a(j)=0
2670 d=1
2680 return
2720 forn=131to133
2730 ifa(n)=291then2770
2740 next
2750 m=0
2760 return
2770 a(w)=0
2780 ifn=133then2830
2790 forj=nto132
2800 a(j)=a(j+1)
2810 a(j+1)=0
2820 next
2830 print"puff!!! your magic carpet just{space*10}disappeared."
2840 m=0:return
2850 rem
2890 forn=131to133
2900 ifa(n)=292then2930
2910 next
2920 goto3500
2930 print"{down*6}":print"yikes - there's a dragon in here."
2950 print"give me your gun{down}{space*4}quick!!!"
2960 forn=0to2000:next
2970 print"{clear}"
2980 forn=1to5
2990 printtab(5)"{down*3}bang!!!"
3000 forj=0to500:next:print"{clear}"
3010 next
3020 printtab(fnr(30));"puff!!"
3030 forj=0to300:next:print"{clear}"
3040 print"incredible ?!? the dragon just vanished when i shot him right"
3041 print"between the {red}eyes{green}"
3050 print:print"but look at this - he left his little{space*2}{right}black book behind -"
3052 print"with the address of every beautiful{space*5}princess in pennyslyvania !"
3070 print"{down}hit a key when you catch your breath"
3071 geta$:ifa$=""then3071
3080 a(w)=306
3090 b=b+1
3100 goto470
3140 ifa(131)=0then3210
3150 forn=131to133
3160 ifa(n)=0then3200
3170 j=96
3180 ifa(j)<>0thenj=j+1:goto3180
3190 a(j)=a(w)
3200 next
3210 ifa(96)=0then3270
3220 print"so far you've found these treasures in{space*2}the caves:"
3230 forn=96to130
3240 ifa(n)=0then3270
3250 z=a(n):gosub4040:printa$",";
3260 next
3270 forn=131to133:a(n)=0:next
3280 print"{down*2}"
3290 print"{down*2}you're at a cave entrance that leads to:"
3300 b=b+1
3310 goto710
3350 print"{down*3}you're in cave"w"which leads to:"
3360 return
3440 print"{down*6} sorry, but i tried to warn you."
3450 print"you fell into a deep pit ... and{space*8}{red}killed{green} yourself!!!"
3460 end
3500 print"{down*6}":print
3510 print"sorry but i tried to tell you about thatsound. supper is now being"
3511 print"served in the {cyan}dragon's chamber..."
3520 print"{down}":fori=1to2500:next:print"{down*2}{reverse on}and you{sh space}are the {down*2} supper!!!{green}"
3530 end
3570 print"{down*6}":print
3580 print"the roof just fell in and buried you{space*4}alive. too bad. i don't"
3581 print"have a shovel or i'd dig you out."
3600 print"{down}see you later."
3610 end
3650 print"{home}{down*7}"
3670 print"i don't think you should have done that!the magician who owns that "
3672 print"{up}{space*5}magic book"
3675 print"put a spell on it. anybody that tries topick it up turns into a {cyan}frog{green}."
3680 print
3690 print"excuse me while i look for some flies."
3700 end
3740 print"{down*6}":print
3750 print"now look what you did. your flashlight{space*2}went out and you fell into"
3751 print"a pit and killed yourself"
3755 print"too bad! especially as you were doing so well."
3760 end
3800 print"{down*6}the treasures are yours to keep!{space*8}well done!!!"
3810 end
3840 print"{down*6}you've made the magician very angry..{space*3}cave ";j;"doesn't have a "
3850 print"magic book in it."
3860 print"to punish you, the magician casts a{space*5}spell on you and now you're only"
3861 print"two inches tall!!!"
3870 print"worse yet, the magician put you in a{space*4}small jar. if you ever get out"
3871 print"of this mess{down}{right*4}let{sh space}me{sh space}know!!!"
3880 end
3950 y=3+fnr(88)
3960 ifa(y)<>0then3950
3970 ify=wandy=zthen3950
3980 a(y)=a(z)
3990 a(z)=0
4000 return
4040 restore
4050 forx=0toz-288
4060 reada$
4070 next
4080 return
4120 forx=0to2
4130 a(134+x)=a(137+x+(z*3))
4140 next
4150 return
9910 data" gold coins "
9911 data" some keys "
9912 data" a locked box "
9913 data" a magic carpet "
9914 data" an old gun "
9915 data" a magic wand "
9916 data" a sword "
9917 data" a magic book "
9918 data" an old clock "
9919 data" some furs "
9920 data" a silver bell "
9921 data" a necklace "
9922 data" a pearl "
9923 data" a diamond "
9924 data" a gold watch "
9925 data" an emerald "
9926 data" some jewellery "
9927 data" a {pound}1000 note "
9928 data" a black book "
9929 data" some elf food "
9930 data" a ruby "
9931 data" a golden harp "
9932 data" a sword "
10000 data1,94,1,0,2,3,1,4,5,1,6,7,2,8,9,2,10,11,3,12,13,3,14,15,4,16,17,4,18,19
10001 data5,20,21,5,22,23,6,24,25,6,26,27,7,28,29,7,30,31,7,32,33,8,34,35,9,36,37
10011 data9,38,39,10,40,41,10,42,43,11,44,45,11,44,45,11,46,47,12,48,49,12,50,51
10023 data13,52,53,13,54,55,14,56,57,14,58,59,15,60,61,15,62,63,16,63,64,16,34,64
10024 data17,33,65,17,36,37,18,35,66,18,38,66,19,37,67,19,40,67,20,39,68,20,42,68
10025 data21,41,69,21,44,69,22,43,70,22,46,70,23,45,71,23,48,71,24,47,72,24,50,72
10026 data25,49,73,25,52,73,26,51,74,26,54,78,74,27,53,75,27,56,75,28,55,76,28,58
10027 data76
10028 data29,57,77,29,60,77,30,59,78,30,62,78,31,61,79,31,32,79,32,33,80,34,35,8,0
10029 data36,37,81,38,39,81,40,41,82,42,43,82,44,45,83,46,47,83,48,49,84,50,51,8,4
10030 data52,53,85,54,55,85,56,57,86,58,59,86,60,61,87,62,63,87,64,65,88,66,67,88
10031 data68,69,89,70,71,89,72,73,90,74,75,90,76,77,91,78,79,91,80,81,92,82,83,92