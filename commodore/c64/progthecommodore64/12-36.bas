10 for j=49152 to 49177:read x:poke j,x:next
20 poke 56333,127:poke 1,51
30 for j=0 to 511:poke 12288+j,peek(53248+j):next
40 poke 1,55:poke 56333,129
50 poke 56,48:clr:poke 53272,29
100 for j=0 to 10:print "{reverse on}" right$("ihgfedcba@",j);"{up}":next
110 for j=0 to 79:poke 13312+j,peek(12672+j):next
120 for j=0 to 79:sys 49152:next
130 for j=0 to 79:poke 13312+j,peek(12672+j):next
140 for j=0 to 79:sys 49164:next
150 goto 100
200 data 162,79,189,254,51,157,255,51,202
210 data 208,247,96,162,1,189,0,52,157
220 data 255,51,232,224,80,208,245,96