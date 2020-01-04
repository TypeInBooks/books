10 open 2,8,2,"ml file1,p,r"
20 open 3,8,3,"ml file2,p,w"
30 get#2,x$,x$
40 print#3,chr$(0)chr$(192);
50 get#2,x$:if x$="" then x$=chr$(0)
60 s=st:print#3,x$;
70 if s=0 goto 50
80 close 2:close 3