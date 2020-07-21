10 input"binary (8 bit)";bn$
20 if len(bn$)>8 then print"too long":goto 10
30 de=0:a=0
40 for x=8 to 1 step-1:a=a+1:if val(mid$(bn$,a,1))>1 then print"error":goto 10
50 de=de+val(mid$(bn$,a,1))*2^(x-1)
60 next:print"decimal=";de:goto 10