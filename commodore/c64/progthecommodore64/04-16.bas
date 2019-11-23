100 dim s(52): for j=l to 52
110 c=int(52*rnd(1))+1: rem random number 1-52
120 if s(c)>0 then 110:rem if used retry
130 s(c)=j: printc: next: rem set j: go back