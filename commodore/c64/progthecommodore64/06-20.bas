**NOT WORKING**

0 data 1,10,2,32,162,0,221,0,1,240,6,232,224,12,208,246,24,96,169,69,32,-162
1 data 176,90,173,-166,240,94,173,2,1,208,11,172,-165,169,48,153,2,1,136
2 data 208,250,169,46,32,-162,168,144,2,160,48,169,0,32,-162,152,157,0,1,169
3 data 46,32,-162,172,-164,232,136,208,252,236,-165,176,33,172,-165,169,0
4 data 153,1,1,189,0,1,201,32,208,3,169,32,234,153,0,1,202,16,6,173,-163,136 
5 data 16,244,136,16,231,169,0,133,97,160,1,132,98,96,169,0,32,-162,144,240
6 data 138,168,173,2,1,240,9,169,46,32,-162,144,2,138,168,152,170,202,16,181
7 data 0,32,158,173,32,221,189,32,-148,32,30,171,9
30 t=49318
40 l=t-166
50 for j=l to t-1
60 read x%:if x%<0 then y=x%+t:x%=y/256:z=y-x%*256:poke j,z:j=j+1
70 poke j,x%:next
80 goto 130
100 x%=l/256 z=l-x%*256
110 poke 55,z:poke 53,z:poke 51,z
120 poke 56,x%:poke 54,x%:poke 52,x%
130 print "{down}sys " l+153 " followed by any numeric""
131 print "expression in parentheses"
132 print "prints formatted value."
134 print
140 print l   "=dec/int flag"
150 print l+1 "=output length"
160 print l+2 "=dec. places"
170 print l+3 "=leading chrs"
180 print l+98 "=+ve lead chr"
190 print "{down}eg sys" l+153 "(-1234.567) prints-1234.56"
200 print "{down}set up now with length 11, dec.places, leading spaces."
210 print "{down}save from" l "to" t-l;
220 print "($";:gosub 500:print " to $";:l=t-1:gosub 500:print ")"
230 end
500 l=l/4096:for j=1 to 4:l%=l:l$=chr$(48+l%-(l%>9)*7):printl$;:l=16*(l-l%):next
510 return