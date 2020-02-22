!- 10 home:print:print"secret message maker"                    [Apple]
!- 10 cls:print:print"secret message maker"                     [BBC/ZX/TRS]
10 print chr$(147):print:print"secret message maker"
20 print"===================="
30 print:print"do you want to:"
40 print
50 print"   1. code a message"
60 print"or 2. decode a message"
70 print:print
80 print"enter number":input a
90 if a=1 then gosub 120
100 if a=2 then gosub 210
110 goto 30
120 let c$="coded":gosub 400
!- 130 let x=int(rnd*25)+1                                      [ZX]
!- 130 let x=rnd(25)                                            [TRS]
130 let x=int(rnd(1)*25+1)
140 let m$="f"+m$
150 gosub 310:gosub 420
160 let m$=chr$(x+64)+m$
170 if len(m$)/2=int(len(m$)/2) then gosub 450
180 print"the coded message is:"
190 print m$
200 return
210 let c$="decoded":gosub 400
220 if len(m$)/2=int(len(m$)/2) then gosub 450
!- 230 let k$=m$(1)                                             [ZX]
230 let k$=left$(m$,1)
!- 240 let m$=m$(2 to )                                         [ZX]
240 let m$=right$(m$,len(m$)-1)
!- 250 let x=code(k$)-64                                        [ZX]
250 let x=asc(k$)-64
260 let x=-x:gosub 420
!- 270 gosub 310:let m$=m$(2 to )                               [ZX]
270 gosub 310:m$=right$(m$,len(m$)-1)
280 print"the decoded message is:"
290 print m$
300 return
310 let n$=""
320 for i=1 to len(m$)
!- 330 let q$=m$(i):let n=code(q$)                              [ZX]
330 let q$=mid$(m$,i,1):let n=asc(q$)
340 if n=32 then goto 380
350 let n=n+x
360 if n>90 then let n=n-26
370 if n<65 then let n=n+26
380 let n$=n$+chr$(n):next i
390 let m$=n$:return
400 print"what is the message to be ";c$
410 input m$:return
420 let n$="":for i=len(m$) to 1 step-1
!- 430 let n$=n$+m$(i):next i                                   [ZX]
430 let n$=n$+mid$(m$,i,1):next i
440 let m$=n$:return
450 let n$="":let l=len(m$)
460 for i=1 to len(m$)-1 step 2
!- 470 let n$=n$+m$(i+1)                                        [ZX]
470 let n$=n$+mid$(m$,i+1,1)
!- 480 let n$=n$+m$(i)                                          [ZX]
480 let n$=n$+mid$(m$,i,1)
490 next i:let m$=n$:return