5 poke 53270, peek(53270) or 16
10 for j=1 to 10: c$=c$+"klmn":next
20 c$=left$(c$,39)
30 poke 53265,peek(53265) and 247
40 print "{clear}":for j=1 to 25:print "{down}";:next
50 for j=55296 to 56295:poke j,peek(646):next
60 for j=49152 to 49213:read x:poke j,x:next
70 poke 53265,peek(53265) or 7
100 sys 49152
110 print c$ "{up}"
115 c$=c$+chr$(65+rnd(1)*26):c$=right$(c$,39)
120 for y=1 to 7
130 sys 49152
140 for d=1 to 15:next
150 next y:goto 100
200 data 173,17,208,48,0,173,18,208,201,255,208
210 data 244,169,7,44,17,208,208,8,13,17,208
220 data 141,17,208,208,4,206,17,208,96
230 data 169,3,141,45,192,141,48,192,162,4,160,64
240 data 185,232,7,153,192,7,200,208,247,238,45
250 data 192,238,48,192,202,208,238,96