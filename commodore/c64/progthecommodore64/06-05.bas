1000 p=peek(198): p=p+1: if p>9 then p=9
1010 for j=631+p to 631 step -1: poke j, peek(j-1):next
1020 poke 198,p: poke 631,34: input x$
1030 print x$: forj=1 to 1000: next: goto 1000