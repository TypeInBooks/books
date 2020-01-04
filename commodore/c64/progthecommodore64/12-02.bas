10 a$(0)="N":a$(l)="M":a$(2)="V"
20 x$="":l=rnd(1)*20+1
30 for j=1 to l
40 x$=x$+a$(rnd(1)*3):next
50 for j=l to 999/l:print x$;:next
60 get x$:if x$="" then 60
70 run