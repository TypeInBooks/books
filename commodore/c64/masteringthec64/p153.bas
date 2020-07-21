5 a$="0123456789abcdef"
10 print"{clear}"
15 poke 198,0
20 input"load program";l$:if left$(l$,1)="y" then gosub 1000:goto 40
30 input"save program";s$:if left$(s$,1)="y" then gosub 2000
40 input"starting location";sl
50 printsl;:input"hex(2) digits";h$
60 if h$="end" then 200
70 for a=1 to 16:b=a-1:if left$(h$,1)=mid$(a$,a,1) then 80
75 next
77 goto 50
80 de=b*16
100 for a=1 to 16:b=a-1:if right$(h$,1)=mid$(a$,a,1) then 120
110 next:goto 50
120 de=de+b
130 poke sl,de:sl=sl+1:de=0:h$="":goto 50
200 input"run mc.";r$:if left$(r$,1)="y" then 220
210 run
220 input"starting location";sl:sys(sl)
1000 input"address to start at";as:input"name of program ";n$
1005 input"finishing address";fa
1010 open 1,1,0,n$
1020 for x= sa to fa:input#1,y:poke x,y:next
1030 close 1
1040 return
2000 input"address to start at";as:input"name of program";n$
2005 input"finishing address";fa
2010 open 1,1,2,n$
2020 for x=sa to fa:y=peek(x):print#l,y::next
2030 close 1
2040 return