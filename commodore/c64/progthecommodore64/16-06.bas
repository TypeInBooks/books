20 x=peek(53267)
30 y=peek(53268)
40 x=(x-30)/160*40
50 y=(y-50)/200*25
60 print "{home}":for j=1 to x:print "{right}";:next
70 for j=1 to y:print "{down}"; :next:print "Q";:goto 20 