1000 input "d,m,y";d,m,y
1005 ok = m>0 and m<13 and d>0 and y>84 and y<87
1010 ok=ok and d<32 + (m=4 or m=6 or m=9 or m=11) + (m=2)*(3+(int(y/4)*4=y))
1020 if ok then print"date is acceptable.":end
1030 if not ok then print"date is unacceptable."