10 for j=49178 to 49205:read x:poke j,x:next
20 poke 56333,127:poke 1,51
30 for j=0 to 511:poke 12288+j,peek(53248+j):next
40 poke 1,55:poke 56333,129
50 poke 56,48:clr:poke 53272,29
100 for j=0 to 10:print "{reverse on}" right$("@abcdefghi",j);"{up}":next
110 for j=0 to 79:poke 13312+j,peek(12672+j):next
120 for j=0 to 79:sys 49178:fork=1to99:next:next
150 goto 100
200 data 160,7,152,170,24,126,0,52,8,138,24
210 data 105,8,170,224,79,176,5,40,208,240
220 data 240,238,40,136,16,231,96