10 for j=49152 to 49172:read x:poke j,x:next
20 poke 2040,13:poke 53269,1
30 for j=832 to 894:poke j,255:next
40 poke 53248,100:poke 53249,53
100 poke 56333,127:poke 788,0:poke 789,192
110 poke 56333,129
120 poke 53274,2
130 x=100:d=1
140 print "{clear}{down}{space*2}{cm j}{space*16}{cm j}"
200 if peek(2)=0 goto 230
210 if x>100 then d=-1
220 if x<101 then d=+1
230 x=x+d:poke 53248,x:goto 200
1000 data 173,31,208,240,8,173,31,208,169,2
1001 data 141,25,208,133,2,173,31,208,76,49,234