10 input "number";ns$
99 rem pack number string ns$ into np$
100 if len(ns$) <> int(len(ns$)/2)*2 then ns$="0" + ns$
110 np$="": for j=1 to len(ns$) step 2
120 np$=np$+chr$(val(mid$(ns$,j,2))+33): next
199 rem unpack np$ into number string ns$
200 ns$="": for j=1 to len(np$): ni$=str$(asc(mid$(np$,j))-33)
210 ni$=right$(ni$,len(ni$)-1)
220 ni$=right$("00"+ni$,2): ns$=ns$+ni$: next
300 print ns$ " " np$: goto 10