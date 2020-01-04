10 poke 56333,127:rem irqs off
20 poke 56322,192:rem set pins 6,7 for output
30 poke 56320,128:rem select port 2 (64=port 1)
40 x=peek(54297)
50 y=peek(54298):fb=peek(56320)and 12:rem use 56321 for port 1
60 poke 56322,255:poke 56333,129
100 run