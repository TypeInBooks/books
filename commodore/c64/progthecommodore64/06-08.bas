10 rem use + or - key
100 gosub 1000: t=t+inc: print t: goto 100
1000 poke 650,128: rem all keys repeat
1010 get x$: if peek(652)>0 then inc=0
1020 if x$="+" then inc=inc+1:if inc>20 then inc=20
1030 if x$="-" then inc=inc-1:if inc<-20 then inc=-20
1040 if x$="" goto 1000
1050 return