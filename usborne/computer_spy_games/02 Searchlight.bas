10 gosub 450
20 let a=1:let g=0:let s=0
!- 30 cls                                                       [BBC/ZX/TRS]
!- 30 home                                                      [Apple]
30 print chr$(147)
40 let x=0:let y=12:let b$=a$(a)
50 gosub 380
60 let f=0:let n=0:let nn=0:gosub 340
70 let l=0:let c=0:let tc=10:let c1=0
!- 80 let i$=inkey$                                             [ZX/TRS]
!- 80 let i$=inkey$(0)                                          [BBC]
!- 80 i$="":if peek(-16384)>127 then get i$                     [Apple]
80 get i$
90 if i$="n" then  let nn=n-1
100 if i$="m" then let nn=n+1
110 if nn>19 then let nn=19
120 if nn<0 then let nn=0
130 if nn=19 and f=0 then let f=1
140 if nn=0 and f=1 then let f=2
150 gosub 340
160 if n<>nn then let s=s+1
170 let n=nn:let g=g+1
180 gosub 400
!- 190 if a$(a,n+1)=" " and l=1 then goto 240                   [ZX]
190 if mid$(a$(a),n+1,1)=" " and l=1 then goto 240
!- 200 for t=1 to 150:next t                                    [BBC]
200 for t=1 to 50:next t
210 if f<2 then goto 80
220 let a=a+1:if a=8 then let a=7
230 goto  30
240 let x=4:let y=1:let b$="you have been seen"
250 gosub 380:print
260 print"you scored ";int((a-1+s/g)*100)
270 print:print"another go? (y/n)"
280 input c$:if c$="y" then run
290 print"bye.....":stop
300 let y=3:let x=10:let b$="*"
310 gosub 380:return
320 let x=10:let y=3:let b$=" "
330 gosub 380:return
340 let x=n:let y=13:let b$=" "
350 gosub 380
360 let x=nn:let b$="s"
370 gosub 380:return
!- 380 print tab(x,y);b$                                        [BBC]
!- 380 print at y,x;b$                                          [ZX]
!- 380 vtab(y):htab(x+1):print b$                               [Apple]
!- 380 print@ y*32+x,b$;                                        [TRS]
380 print chr$(19):for ll=1 to y:print:next:print tab(x);b$
390 return
400 if l=1 then let c=c+1
!- 410 if c=tc then let l=0:let c=0:let tc=int(rnd*8+(12-a)):gosub 320          [ZX]
!- 410 if c=tc then let l=0:let c=0:let tc=int(rnd(0)*8+(12-a)):gosub 320       [TRS]
410 if c=tc then let l=0:let c=0:let tc=int(rnd(1)*8+(12-a)):gosub 320
420 if l=0 then let c1=c1+1
!- 430 if c1=tc then let l=1:let c1=0:let tc=int(rnd*10+(8-a)):gosub 300        [ZX]
!- 430 if c1=tc then let l=1:let c1=0:let tc=int(rnd(0)*10+(8-a)):gosub 300     [TRS]
430 if c1=tc then let l=1:let c1=0:let tc=int(rnd(1)*10+(8-a)):gosub 300
440 return
!- 450 dim a$(7,20)                                             [ZX]
450 dim a$(7)
460 for i=1 to 7:read a$(i):next i
470 return
480 data "== = = =={space*2}== = = =="
490 data "=={space*2}= =={space*2}== ={space*2}== ="
500 data "={space*2}=={space*2}= ={space*2}={space*3}={space*2}="
510 data "={space*2}={space*2}={space*3}={space*3}=={space*3}="
520 data "={space*3}={space*3}= ={space*3}={space*4}="
530 data "={space*4}={space*2}={space*4}={space*3}= ="
540 data "={space*3}={space*5}={space*4}={space*3}="
