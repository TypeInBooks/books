10 gosub 100:print:print d$:goto 10
100 d$="":d=-l
110 poke 204,0:poke 207,0
120 get x$:if x$="" goto 120
130 if x$=chr$(13) then print" ";:poke 204,1:return
140 if asc(x$)=20 then if len(d$)>0 then d$=left$(d$,len(d$)-1):d=d-1:goto 170
142 if asc(x$)=20 goto 110
144 if x$="." then for j=0 to len(d$):if mid$(d$,j+1,1 )<>"." then next
146 if x$="." and (j=len(d$)+1) then d=0:goto 160
150 if not (x$>="0" and x$<="9") goto 110
152 if d>=2 goto 110
154 if d>-1 then d=d+1
160 d$=d$+x$
170 print x$;:goto 110