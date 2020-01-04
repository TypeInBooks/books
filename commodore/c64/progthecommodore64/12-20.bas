10 vic=53248:col=55296
20 print "{clear}"
30 for j=0 to 239
40 poke 1024+j*2,j:poke col+j*2,0
50 poke 1024+520+j*2,j:poke col+j*2+520,8
60 next
100 poke vic+22,peek(vic+22) or 16
200 get x$:if x$="" then 200
210 if x$="{f1}" then poke 53281,(peek(53281)+l) and 15
220 if x$="{f3}" then poke 53282,(peek(53282)+l) and 15
230 if x$="{f5}" then poke 53283,(peek(53283)+l) and 15
235 if x$="{f8}" then poke 53284,(peek(53284)+1) and 15
236 if x$="m" then poke(53265),peek(53265) and 191:poke 53270,peek(53270)or16
237 if x$="e" then poke(53270),peek(53270) and 239:poke 53265,peek(53265)or64
240 if x$="{f7}" then 200
250 nc=peek(col+520)+l
260 for j=0 to 239:poke col+j*2+520,nc:next
270 goto 200

