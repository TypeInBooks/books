10 rem window lister
63000 def fn deek(l)=peek(l)+256*peek(l+1)
63010 n=m+1:gosub 63300:l1=l:n=m+12:gosub 63300
63020 print "{clear}{blue}list" li "-" l:rem this lists 12 lines
63030 print "{blue}m=" m ":goto 63200{white}"
63040 poke631,19:poke632,13:poke633,19:poke634,17:poke635,13:poke198,5:end
63200 get x$:if x$="" goto 63200
63210 if x$="{f1}" then m=m+1:rem or larger increment
63220 if x$="{f7}"" and m>0 then m=m-1:rem or larger
63230 goto 63010
63299 rem find n'th linenumber of basic
63300 j=0:l=fn deek(43)
63310 j=j+1:if j<n then l=fn deek(l):if l>0 goto 3310
63320 if (l=0) or (fn deek(l)=0) then l=63999:return
63330 if j=n then l=fn deek(l+2)
63340 return