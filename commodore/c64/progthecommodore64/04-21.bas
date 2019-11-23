10 data 0,31,59,90,120,151,181,212,243,273,304,334
20 dim d(12): for j=1 to 12: read d(j): next
100 input "first date (m,d,y)"; m,d,y
110 gosub 1000: dx=de
120 input "second date (m,d,y)"; m,d,y
130 gosub 1000: dy=de
200 print dy-dx "days": end
1000 de = d + d(m)+365*y+int((y-1)/4)-((int(y/4)*4=y) and (m>2))
1010 return