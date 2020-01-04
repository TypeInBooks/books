2 rem sys 49152 reads, plots until keypress
3 rem demo sets white ball; uses keys
4 rem 1-8 and shift 1-8 to change color
5 rem & f7 to switch to plotting blocks
6 rem (char is in 49215, color in 49230)
10 for j=49152 to 49236:read x:pokej,x:next
20 print "{clear}"
100 sys 49152
110 a=peek(780):rem peek (197) also ok
120 a$=chr$(a)
130 if chr$(a)>="1" and chr$(a)<="8" then poke 49230,a-49
140 if chr$(a)>="1" and chr$(a)<="(" then poke 49230,a-25
150 if chr$(a)="{f7}" then poke 49215,160
160 goto 100
500 data 32,228,255,240,1,96,173,19,208,56,233,32
501 data 144,242,201,160,176,238,170,173,20,208,233
502 data 48,144,230,201,200,176,226,41,248,168,169
503 data 0,133,3,132,2,6,2,38,3,6,2,38,3,152,101
504 data 2,133,2,169,4,101,3,133,3,138,74,74,168
505 data 169,81,145,2,165,2,133,4,165,3,24,105,212
506 data 133,5,169,1,145,4,208,173,240,171