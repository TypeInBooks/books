110 input a: t=a: b=1
120 if abs(t-int(t+.0001))>.001 then t=t*10: b=int(b*10+.1): goto 120
130 t=int(t+.1)
140 dim a(50),t(50),b(50)
150 a(1)=int(t/b): t=t-int(t/b)*b
210 x=1
220 x=x+1: a(x)=int(b/t)
230 b1=t: t=b-a(x)*t: b=b1
240 if b<>1 and t<>0 goto 220
250 if x>16 then x=16
310 t(1)=a(1): b(1)=1
320 t(2)=a(1)*a(2)+1: b(2)=a(2)
330 for j=3 to x
340 t(j)=a(j)*t(j-1)+t(j-2)
350 b(j)=a(j)*b(j-1)+b(j-2)
360 next
410 for j=1 to x: print t(j)"/"b(j)
420 next