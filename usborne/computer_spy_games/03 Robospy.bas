10 let sp=0.4
!- 20 home                                              [Apple]
!- 20 cls                                               [BBC/ZX/TRS]
20 print chr$(147)
30 let h=0
40 let k=0:let s=0:let l=1
50 print">>> robospy <<<":print
60 print"press g to go"
!- 70 let c$=inkey$(0)                                  [BBC]
!- 70 let c$=inkey$                                     [ZX/TRS]
!- 70 cs$="":if peek(-16384)>127 then get c$            [Apple]
70 get c$
80 if c$<>"g" then goto 70
!- 90 home:print:print                                  [Apple]
!- 90 cls:print:print                                   [BBC/ZX/TRS]
90 print chr$(147):print:print
100 if k=5 then let l=l+1:let k=0
110 let m$=""
120 let c$=""
130 for t=1 to l
!- 140 let n=rnd                                        [ZX]
!- 140 let n=rnd(0)                                     [TRS]
140 let n=rnd(1)
150 if n>=0.5 then print"left":let m$=m$+"l"
160 if n<0.5 then print"right":let m$=m$+"r"
170 next t
180 let k=k+1
190 for d=1 to 200*l*sp
!- 200 let c$=inkey$(0)                                 [BBC]
!- 200 let c$=inkey$                                    [ZX/TRS]
!- 200 cs$="":if peek(-16384)>127 then get c$           [Apple]
200 get c$
210 next d
!- 220 home:print:print                                 [Apple]
!- 220 cls:print:print                                  [BBC/ZX/TRS]
220 print chr$(147):print:print
230 let e=0
240 print"what were the directions"
250 for t=1 to l
260 print"?";
!- 270 let c$=inkey$(0)                                 [BBC]
!- 270 let c$=inkey$                                    [ZX/TRS]
!- 270 cs$="":if peek(-16384)>127 then get c$           [Apple]
270 get c$
280 if c$<>"r" and c$<>"l" then goto 270
290 print c$
!- 300 if c$<>m$(t) then let e=1                        [ZX]
300 if c$<>mid$(m$,t,1) then let e=1
310 next t
320 if e=0 then let s=s+l
330 if s>=h then let h=s
340 if e=1 then print"you lost him! some spy!"
350 print"score = ";s
360 print"high score = ";h
370 if e=1 then goto 40
380 for d=1 to 500*sp
390 next d
400 goto 90
