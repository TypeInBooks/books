10 vol=15:ad=17:sr=129:fh=19:fl=63:w=33:delay=100
20 poke 54296,vol:poke 54277,ad:poke 54278,sr:poke 54273,fh:poke 54272,fl
30 poke 54276,w
40 for i=1 to delay:next i
50 poke 54277,0:poke 54278,0:poke 54276,0:poke 54296,0