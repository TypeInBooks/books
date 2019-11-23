3 rem enter 3,12,86 for march 12 1986
4 rem c=19 for 1900s; c=18 for 1800s
20 data sun,mon,tue,wed,thu,fri,sat :c=19
30 for j=0 to 6: read d$(j): next
40 input "month,day,year"; m,d,y
50 m=m-2: if m<1 then m=m+12: y=y-1
60 j=int(2.6*m-.19)+d+y+int(y/4)+int(c/4)-2*c
70 j=j-int(j/7)*7
80 print d$(j)