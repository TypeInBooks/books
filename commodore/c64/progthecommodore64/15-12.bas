10 dim x$(30)
20 open 15,8,15,"i"
30 open 3,8,3,"#"
40 open 2,8,2,"$"
50 for j=1 to 254:get#2,x$:next
100 for j=1 to 8
110 for k=1 to 30:get#2,x$(k):next
120 if x$(1)<>chr$(130) goto 200
130 for k=4 to 19:print x$(k);:next
140 print#15#"u1:";3;0;asc(x$(2)+chr$(0));asc(x$(3)+chr$(0))
150 get#3,x$,x$,l$,h$
160 print asc(l$+chr$(0))+256*asc(h$+chr$(0))"{left}"
200 if j<8 then get#2,x$,x$
210 next j
220 if st=0 goto 100
300 close 2:close 3:close 15:end