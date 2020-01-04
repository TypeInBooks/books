100 open 2,2,0,chr$(6):rem opens file 2; 300 baud, 8 bit, no parity
101 rem open 2,2,0,chr$(38)+chr$(96) for ascii 7 bits + even parity
200 dim f%(255),t%(255)
210 for j=32 to 64:t%(j)=j:next
220 for j=65 to 90:t%(j)=j+32:next:rem lower-case
230 for j=91 to 95:t%(j)=j:next
240 for j=193 to 218:t%(j)=j-128:next:rem vic upper-case
250 t%(133)=27:t%(134)=127:t%(135)=3:t%(136)=17
251 rem these are true ascii:i.e. esc,del,ctrl-c reak,ctrl-q
260 t%(137)=17:t%(138)=144
300 for j=0 to 255
310 if t%(j)>0 then f%(t%(j))=j
320 next
400 print chr$(147) chr$(14):rem clear; lower-case
500 if peek(669)<peek(670) then 500
501 rem if (peek(37151) and 64)=64 then 501
510 get out$:if out$>"" then print#2,chr$(t%(asc(out$)));:print out$;
520 get#2,in$:if in$>"" then print chr$(f%(asc(in$)));
521 rem in$=in$ and 127 for 7 bit code
530 goto 500