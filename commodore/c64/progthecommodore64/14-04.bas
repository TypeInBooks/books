10 sys 63553:print"{white}"
20 p=peek(828)
30 on goto 100,200,300,400,500
40 print "program or ml block":goto 3000
99 rem type 1
100 print "relocatable program ";
110 gosub 1000:gosub 2000:goto 4000
199 rem type 2
200 print "buffer of data ":goto 3020
299 rem type 3
300 print "forced-load program ";:goto 110
399 rem type 4
400 print "data file ";:gosub 1000:goto 4000
499 rem type 5
500 print" end-of-tape marker";:goto 4000
999 rem print name from header
1000 print chr$(34);:for j=833 to 848:print chr$(peek(j));
1010 next:print chr$(34):return
1999 rem print start and end addresses
2000 print "  start=" peek(829)+256*peek(830)
2010 print "    end=" peek(831)+256*peek(832)
2020 return
2999 rem print 192 bytes of data if required
3000 input "{cyan}view the program";yn$
3010 if yn$="n" goto 4000
3020 print "{white}" chr$(34);: for j=828 to 1019:print chr$(peek(j));: next
3999 rem await keypress
4000 print: print "{cyan}press c to continue"
4010 get x$:if x$="c" then run
4020 goto 4010