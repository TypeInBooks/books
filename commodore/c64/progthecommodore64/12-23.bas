10 for j=0 to 39:read x:poke 14336+j,x:next
20 poke 646,0:poke 53280,1:poke 53281,1:print"{clear}";
30 poke 53272,31
40 poke 55,0:poke 56,56:clr
50 get q$:if q$="" goto 50
60 l=asc(q$)-64
70 a$="":for j=1 to l:a$=a$+chr$(rnd(0)*5+64):next
80 a$=a$+a$+a$+a$+a$+a$+a$+a$:m=len(a$)
90 print "{home}";:for j=1 to 960/m:print a$;:next
100 print left$(a$,960-m*int(960/m));
110 goto 50
500 data 36,36,255,0,0,255,36,36
501 data 36,36,231,36,36,231,36,36
502 data 36,18,9,132,66,33,144,72
503 data 36,72,144,33,66,132,9,18
504 data 36,66,153,36,66,36,153,66
