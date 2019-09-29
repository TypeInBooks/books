5 base=2*4096:poke 53272,peek(53272) or 8:rem put bit map at 8192
10 poke 53265,peek(53265) or 32:rem enter bit map mode
20 for i=base to base+7999:poke i,0:next:rem clear bit
30 for i=1024 to 2023:poke i,3:next:rem set color to cyan and black
