2 rem for cia#2, use forj=56576to56591 in line 30
4 rem lines 50 & 120 handle bit pattern
10 print "{clear}"
20 print "{home}"
30 for j=56320 to 56335
40 print j;: p=peek(j)
50 q=p/256: for k=1 to 8: q=2*q: print int (q)"{left}";: q=q-int(q): next
60 print " " p "{left}   "
70 next
80 get x$: if x$="" goto 20
100 input "which register";r
110 input "bit pattern";b$
120 x=0: for k=1 to 8:x=x+2^(8-k)*val(mid$(b$,k,1)): next
130 poke r,x: goto 20