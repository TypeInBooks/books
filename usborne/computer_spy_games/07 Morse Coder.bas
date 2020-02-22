10 gosub370
!- 20 home                                                      [Apple]
!- 20 cls                                                       [BBC/ZX/TRS]
20 printchr$(147)
30 lets=30
40 print:print"morse tester"
50 print:print"what level ?"
60 print:print"(1=fast)"
70 print"(5=slow)"
80 inputp:letp=p*s
!- 90 home                                                      [Apple]
!- 90 cls                                                       [BBC/ZX/TRS]
90 printchr$(147)
100 print:print"get ready"
110 fort=1to20*s:nextt
120 gosub310
!- 130 let f$=m$(code(q$)-64)                                   [ZX]
130 letf$=m$(asc(q$)-64)
140 gosub220
!- 20 home:print                                                [Apple]
!- 20 cls:print                                                 [BBC/ZX/TRS]
150 printchr$(147):print
160 print"type in your answer"
170 inputx$
180 ifx$=q$thenprint"correct"
190 ifx$<>q$thenprint"no. the answer is:";q$
200 fort=1to300*s:nextt
210 goto90
220 forj=1tolen(f$)
!- 230 let w$=f$(j)                                             [ZX]
!- 235 if w$=" " then goto 280                                  [ZX]
230 letw$=mid$(f$,j,1)
240 ifw$="."thenletk=1
250 ifw$="-"thenletk=3
260 gosub330:letk=1
270 gosub340
280 nextj
290 return
300 print
!- 310 let q$=chr$(int(rnd*26+65))                              [ZX]
!- 310 let q$=chr$(rnd(26)+64)                                  [TRS]
310 letq$=chr$(int(rnd(1)*26+65))
320 return
!- 330 print at 10,10;"*"                                       [ZX]
!- 330 vtab(10):print tab(10);"*"                               [Apple]
!- 330 print tab(10,10);"*"                                     [BBC]
!- 330 print@ 240,"*"                                           [TRS]
330 printchr$(19):fori=1to10:print:next:printtab(10);"*"
340 fort=1top*k:next
!- 350 print at 10,10;" "                                       [ZX]
!- 350 vtab(10):print tab(10);" "                               [Apple]
!- 350 print tab(10,10);" "                                     [BBC]
!- 350 print@ 240," "                                           [TRS]
350 printchr$(19):fori=1to10:print:next:printtab(10);" "
360 return
!- 370 dim m$(26,4)                                             [ZX]
370 dimm$(26)
380 fori=1to26:readm$(i):nexti
390 return
400 data".-","-...","-.-.","-..","."
410 data"..-.","--.","....","..",".---"
420 data"-.-",".-..","--","-.","---"
430 data".--.","--.-",".-.","...","-"
440 data"..-","...-",".--","-..-"
450 data"-.--","--.."
