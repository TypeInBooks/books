10 for j=49152 to 49166:read x:poke j,x:next
20 data 173,27,212,141,31,212,173,28,212,141,31,212,76,49,234
30 poke 56333,127:poke 788,0:poke 789,192:poke 56333,129
40 sid=54272:for j=sid to sid+24:poke j,0:next
100 poke sid+24,9+32
110 poke sid+15,16
112 poke sid+18,16
118 poke sid+1,32
120 poke sid+6,160 :rem voice sustain
130 poke sid+4,16+1: rem gate vi triangle
200 poke 49156,0: rem v3 output to r0