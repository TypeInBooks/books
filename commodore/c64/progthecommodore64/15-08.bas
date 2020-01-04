10 open 1,8,0,"$"
20 get#1,x$,x$
30 get#1,x$,x$,x$,x$
40 if st then close 1:end
50 get#1,x$: if x$="" then print:goto 30
60 if x$=chr$(34) then q=not q
70 if q then print x$;
80 goto 50