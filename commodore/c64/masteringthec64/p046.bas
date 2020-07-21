5 print"{clear}"
10 poke 53281,0:poke 53280,0:for a=0 to 24:print:next:b=1504:c=20
20 a=rnd(1)*40:poke 1984+a,46:poke 1984+a+54272,rnd(1)*14+1
25 if rnd(1)>.7 then p=rnd(1)*40:poke p+1984,1:poke p+1984+54272,7
30 geta$:if a$="z" and c>0 then poke b+c,32:c=c-1
35 if a$="m" and c<40 then poke b+c,32:c=c+1
40 poke b+c,32
50 print
60 if peek (b+c)=46 then 120
70 if peek (b+c)=1 then gosub 200
90 poke b+c,22:poke b+c+54272,9
100 goto 20
120 print"{clear}":poke 53281,2:print"you hit an asteroid"
125 print" you scored ";s;"points":s=0
130 print"do you want to try again?"
140 geta$:if a$="y" or a$="n" then 150
145 goto 140
150 if a$="n" then end
160 if a$="y" then run
200 for a=0 to 16:poke53280,a:next:s=s+10:return