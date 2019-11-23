61000 input "delete from, to"; l,u:a=peek(43)+256*peek(44)
61010 def fn deek(a)=peek(a)+256*peek(a+1)
61020 if fn deek(a+2)<l then a=fn deek(a):goto 61010
61030 if fn deek(a+2)>u or fn deek(a)=0 then end
61040 n=fn deek(a+2):print "{clear}" n
61050 print "a=" a ":u=" u ":goto 61010"
61060 poke 631,19:poke 632,13:poke 633,13:poke 198,3:end