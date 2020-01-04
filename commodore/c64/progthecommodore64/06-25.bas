59010 m=n
59020 m=int(m/2):if m=0 then end
59030 j=1:k=n-m
59040 i=j
59050 l=i+m
59060 if a$(i)>a$(l) then t$=a$(i):a$(i)=a$(l):a$(l)=t$:i=i-m:if i>0 then 59050
59070 j=j+1:if j>k then 59020
59080 goto 59040