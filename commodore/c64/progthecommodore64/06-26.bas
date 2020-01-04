10 input"sort how many items";n:b=n-1:dim n$(b),i(2*b)
20 for j=0 to b:n$(j)=str$(rnd(1)*100):next
30 print"sorting:-"
2000 x=0:for j=0 to b:i(j)=j:next
2005 for j=0 to 2*n-3 step 2:b=b+1
2010 i(b)=i(j):if n$(i(j+1))<n$(i(j)) then i(b)=i(j+l)
2015 next
2020 x=x-1:c=i(b):if c<0 then end
2025 print n$(c)
2030 i(c)=x
2035 j=2*int(c/2):c=int(c/2)+n:if c>b goto 2020
2040 if i(j)<0 then i(c)=i(j+1):goto 2035
2045 if i(j+1)<0 then i(c)=i(j):goto 2035
2050 i(c)=i(j):if n$(i(j+1))<n$(i(j)) then i(c)=i(j+l)
2055 goto 2035