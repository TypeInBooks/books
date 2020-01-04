10 input "program name";n$
20 open 2,8,2,n$+",p,r"
30 get#2,x$,y$
40 print asc(x$+chr$(0))+256*asc(y$+chr$(0))
50 close 2