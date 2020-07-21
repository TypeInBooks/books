0 printchr$(142)chr$(8)
1 poke54296,15:poke54277,128:poke54278,128:poke54276,33
4 dima$(100):ht$=""
5 print"{clear}{blue}{down*5}{right*15}m*a*z*e"
6 poke53281,15:poke53280,9:print"{down}guide your man around the maze as fast {down} as possible";
7 print" using keys":print"{down*2}{space*5}{reverse on}z{reverse off} left{space*4}{reverse on}x{reverse off} right":print"{space*10}{down*2}{reverse on}k{reverse off} up {reverse on}m{reverse off} down"
8 print"{down*2}{right*6}{reverse on}press a key to play"
9 poke198,0:wait198,1
10 fora=8448to8460:pokea,0:next
11 poke53272,24
12 print"{clear}":poke54296,15
13 rem high res
14 poke53281,0
15 a=8712
16 readb:ifb=300then18
17 pokea,b:a=a+1:goto16
18 fora=8576to8662:readb:pokea,b:next:poke8199+58*8,0
20 a$(10)="aaaaaaaaaaaaaaaaaaaaaa"
21 fora=0to9:a$(a)=a$(10):next
22 a$(11)="a{space*9}{white}cd{red}{space*9}a"
23 p=1344
24 a$(12)="a aaaaaaaaaaaaaaaaaa a"
25 a$(13)="a a{space*16}a a"
26 a$(14)="a a a aa{space*6}aa a a a"
27 a$(15)="a a a{space*2}a{space*6}aa a a a"
28 a$(16)="a a a{space*2}aa{space*4}aa{space*2}a a a"
29 a$(17)="a a a{space*3}aaaaaa{space*3}a a a"
30 a$(18)="a a{space*7}aa{space*7}a a"
31 a$(19)="a aaaaa{space*3}aa{space*3}aaaaa a"
32 a$(20)="a{space*9}aa{space*9}a"
33 a$(21)="aaaaaaa a aa a aaaaa a"
34 a$(22)="a a{space*3}a a aa a a{space*5}a"
35 a$(23)="a a a a a aa a a a a a"
36 a$(24)="a a a a a aa a a a a a"
37 a$(25)="a a a a a{space*4}a a a a a"
38 a$(26)="a a a{space*3}aa{space*2}aa{space*3}a a a"
39 a$(27)="a a a{space*4}a{space*2}a{space*4}a a a"
40 a$(28)="a a aaaa a{space*2}a aaaa a a"
41 a$(29)="a{space*6}a a{space*2}a a{space*6}a"
42 a$(30)="a aaaa a{space*6}a aaaa a"
43 a$(31)="a a{space*2}a aaaaaaaa a{space*2}a a"
44 a$(32)="a a{space*2}a{space*10}a{space*2}a a"
45 a$(33)="a a{space*2}aaaaa{space*2}aaaaa{space*2}a a"
46 a$(34)="a{space*20}a"
47 a$(35)="a aaaaaaaaaaaaaaaaaaaa"
48 a$(36)="a{space*4}a{space*15}a"
49 a$(37)="aaaa{space*3}aaaaaaaaaaaaa a"
50 a$(38)="a{space*2}aaaaa{space*13}a"
51 a$(39)="a{space*9}aa{space*9}a"
52 a$(40)="aaaaaaaa{space*2}aaaa{space*2}aaaaaa"
53 a$(41)="a{space*5}aa{space*2}aa{space*2}aa{space*5}a"
54 a$(42)="a aaa{space*2}aa{space*4}aa{space*2}aaa a"
55 a$(43)="a{space*3}a{space*3}aa{space*2}aa{space*3}a{space*3}a"
56 a$(44)="a a a{space*12}a a a"
57 a$(45)="a a aaaaaaaaaaaaaa a a"
58 a$(46)="a a{space*16}a a"
59 a$(47)="a aaaaa a{space*4}a aaaaa a"
60 a$(48)="a{space*5}a aaaaaa a{space*5}a"
61 a$(49)="aaaaa{space*5}aa{space*5}aaaaa"
62 fora=0to49:a$(50+a)=a$(49-a)
63 next
65 a$(88)="a{space*20}a"
66 goto72
67 data255,129,255,129,255,129,255,129
68 data129,90,36,126,255,60,36,195,255,127,63,31,15,7,3,1,128,192,224,240,248
69 data252,254,255,0,126,24,24,24,24,24,24,0,60,24,24,24,24,24,60
70 data0,126,64,64,126,64,64,126,0,66,102,90,66,66,66,66,0
71 data300
72 a=86:x=20:ti$="000000"
73 print"{home}{down*5}"
74 forb=atoa+4
75 printtab(8);a$(b)
76 next
77 ifpeek(p+x)<>32then88
78 pokep+54272+x,5:pokep+x,66
79 print"{home}{white}{down*15}{right*13}efhg:";mid$(ti$,3,2)":";right$(ti$,2);"{red}
80 e=peek(197):ife=64then73
81 poke54272,100:poke54273,100
82 ife=36thena=a+1:m=1
83 ife=37thena=a-1:m=2
84 poke54272,0:poke54273,0
85 ife=12thenx=x-1:m=3
86 ife=23thenx=x+1:m=4
87 goto73
88 ifm=1thena=a-1
89 ifpeek(p+x)=67orpeek(p+x)=68then96
90 poke54272,100:poke54273,100
91 ifm=2thena=a+1
92 ifm=3thenx=x+1
93 ifm=4thenx=x-1
94 poke54272,0:poke54273,0
95 goto73
96 fora=255to0step-4:forb=5to15step3
97 poke54296,b:poke54272,200:poke54273,a
99 nextb,a:poke54272,0:poke54273,0:poke53272,21
100 print"{clear}{white}{reverse on}{down*5}{right*2}your time was ";mid$(ti$,3,2);" minutes ";right$(ti$,2);" seconds"
101 print"{home}{down*19}{right*10}{reverse on}{white}any key to restart{red}"
102 ifpeek(197)<>64then102
103 ifpeek(197)=64then103:print"{clear}"
104 ti$="000000"
106 restore
107 print"{home}{down*13}"
108 run
110 data0,126,70,74,82,98,126,0,0,56,24,24,24,24,126,0,0,126,66,4,120,98,126,0
112 data0,126,2,62,6,6,126,0,0,64,64,64,96,100,126,4,0,126,64,64,126,6,126,0
114 data0,96,96,126,98,98,126,0,0,126,2,2,6,6,6,0,0,126,66,126,66,66,126,0
116 data0,126,66,66,126,6,6,0,0,0,24,0,0,24,0,0,0
118 data0,126,24,24,24,24,24,24,0