5 poke 53281,0:poke 53280,0:print"{clear}"
10 dim m$(38,19),a$(19),rn$(38)
15 co$="{black}{white}{red}{cyan}{purple}{green}{blue}{yellow}{orange}{brown}{pink}{dark gray}{gray}{light green}{light blue}{light gray}"
20 for j=0 to 38:rn$(j)=mid$(co$,rnd(1)*16+1,1)+" ":next
25 for j=8 to 19:for k=0 to j:c$=rn$(j-k)
30 m$(k,j)=c$:m$(j,k)=c$
35 m$(38-j,k)=c$:m$(38-k,j)=c$
40 next:next
45 for j=8 to 19:a$(j)="":for k=0 to 38
50 a$(j)=a$(j)+m$(k,j)
55 next:next
60 print"{home}":for j=8 to 19:print "{reverse on}" a$(j):next
65 for j=18 to 8 step-1:print "{reverse on}" a$(j):next
70 clr:goto 10