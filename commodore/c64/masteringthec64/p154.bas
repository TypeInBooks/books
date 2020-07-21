10 input"hex";h$
20 a$="0123456789abcdef"
30 for a=1 to 16:b=a-1:if left$(h$,1)=mid$(a$,a,1) then 50
40 next
50 de=b*16
60 for a=1 to 16:b=a-1:if right$(h$,1)=mid$(a$,a,1) then 80
70 next
80 de=de+b:print de