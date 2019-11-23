10 gosub 100:print:print in$:goto 10
100 in$=""
110 poke 204,0:poke 207,0
120 get x$:if x$="" goto 120
130 if x$=chr$(13) then print" ";:poke 204,1:return
140 if asc(x$)=20 and len(in$)>0 then in$=left$(in$,len(in$)-1):goto 170
150 if not(x$>=" " and x$<="z") goto 110
160 in$=in$+x$
170 print x$;:goto 110