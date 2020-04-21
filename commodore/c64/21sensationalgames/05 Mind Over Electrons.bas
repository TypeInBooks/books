10 rem ** mind over electrons **
20 g=1024:h=55296:s=g+343:r=h+343
30 poke53280,15:poke53281,15
40 input"{clear}{down*2}{right*2}computer chooses (y/n)";a$
50 ifa$="y"thenf=1
60 print"{clear}{white}{down*2}{right}z{space*3}v{space*3}w{space*3}x{space*3}{cm asterisk}{space*3}a{space*3}*{space*3}q{space*3}s{space*3}{sh +}"
70 p=161:pokeg+p,30:pokeh+p,11
80 forj=1to100
90 print"{home}{down*8}trial #";j
100 iff=0then230
110 q=4*int(rnd(1)*10)+161
120 ifq=161thent=90
130 ifq=165thent=86
140 ifq=169thent=87
150 ifq=173thent=88
160 ifq=177thent=95
170 ifq=181thent=65
180 ifq=185thent=42
190 ifq=189thent=81
200 ifq=194thent=83
210 ifq=197thent=91
220 poker,15:pokes,t:iff=0then290
230 geta$
240 ifa$=""then230
250 ifa$=chr$(135)andf=0then110
260 ifa$=chr$(135)then290
270 ifa$=chr$(136)thengosub1000
280 goto230
290 poker,0
300 ifp=qthenn=n+1
310 fork=1to4000:next
320 poker,3
330 next
340 poke53280,1:poke53281,0
350 print"{white}{clear}{down*2}{right*2}score:";n;"out of 100"
360 ifn<14thenprint"{down*2}{right*2}this is not unusual":goto440
370 ifn=14thenn=20
380 ifn=15thenn=10
390 ifn=16thenn=5
400 ifn=17thenn=2
410 ifn=18thenn=1
420 ifn>18thenn=.1
430 print"{down*2}{right*2}the probability is";n;"%"
440 n=0
450 print"{down*2}{right*2}press space bar to repeat"
460 geta$:ifa$<>" "then460
470 goto30
1000 pokep+g,32
1010 p=p+4:ifp=201thenp=161
1020 pokeg+p,30:pokeh+p,11
1030 return