10 s=s+1
20 d1%=1+6*rnd(1)
30 d2%=1+6*rnd(1)
40 print d1% d2%
50 if d1%+d2% <> 7 goto 10
60 n=n+1: t=t+s: s=0:  rem n=no of 7s; t=throws
70 print "seven!"  t/n: goto 10