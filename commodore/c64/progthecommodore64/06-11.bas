90 for j=40960 to 49191: poke j,peek(j): next
91 for j=57344 to 65535: poke j,peek(j): next
92 poke 1,53
100 data 32,138,173,76,247,183
110 for j=0 to 5: read x: poke 58551+j,x: next
120 poke 43169,183: poke 43170,228