10 dim x(9):dim y(9)
20 let p=0
30 for i=1 to 9
40 gosub 340:let x(i)=n+3
50 gosub 340:let y(i)=n+3
60 next i
70 gosub 360
80 gosub 310
90 gosub 340
100 let m=n:gosub 340
110 let x(m)=x(m)+sgn(n-5.1)
120 gosub 360
130 gosub 310
!- 140 cls:print                                                [BBC/ZX/TRS]
!- 140 home:print                                               [Apple]
140 print chr$(147):print
150 print"which number moved"
160 input a
170 if a<>m then goto 250
!- 180 cls:print                                                [BBC/ZX/TRS]
!- 180 home:print                                               [Apple]
180 print chr$(147):print
190 print"well spied!"
200 let p=p+1
210 print"you now have ";p;" points"
220 print:print"press a key"
230 gosub 310
240 goto 30
!- 250 cls:print:print"wrong - end of go"                       [BBC/ZX/TRS]
!- 250 home:print:print"wrong - end of go"                      [Apple]
250 print chr$(147):print:print"wrong - end of go"
260 print"correct answer was ";m
270 print"you scored ";p;" points"
280 print"another go? (y/n)"
290 input a$:if a$="y" then run
300 stop
!- 310 let i$=inkey$                                            [ZX/TRS]
!- 310 let i$=inkey$(0)                                         [BBC]
310 get i$
320 if i$="" then goto 310
330 return
!- 340 let n=int(rnd*9)+1                                       [ZX]
!- 340 let n=rnd(9)                                             [TRS]
340 let n=int(rnd(1)*9)+1
350 return
!- 360 cls                                                      [BBC/ZX/TRS]
!- 360 home                                                     [Apple]
360 print chr$(147)
370 for i=1 to 9
!- 380 print tab(x(i),y(i));str$(i)                             [BBC]
!- 380 print at y(i),x(i);str$(i)                               [ZX]
!- 380 vtab(y(i)):htab(x(i)):print str$(i)                      [Apple]
!- 380 print@ y(i)*32+x(i),str$(i);                             [TRS]
380 print chr$(19):for ll=1 to y(i):print:next:print tab(x(i));str$(i)
390 next  i
400 return
