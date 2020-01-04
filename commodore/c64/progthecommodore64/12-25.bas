10 poke 53265,peek(53265) or 32
20 poke 53272,25:map=8192
30 for j=map to map+7999:poke j,0:next
40 for j=1024 to 2023:poke j,5:next
50 for x=0 to 319:y=sin(x*t/80)*50+100 
60 ad=map+40*(y and 248) + (x and 504) + (y and 7)
70 poke ad,peek(ad) or 2^(7-(x and 7)):next
80 get r$:if r$="" then80