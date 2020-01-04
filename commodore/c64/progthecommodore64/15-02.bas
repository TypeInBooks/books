1 open 15,8,15,"i":rem initialize diskette
2 open 2,8,2,"program file demo,p,r":rem open prg file for read
3 get#2,x$:rem get file character
4 if st>0 then close 2:end
5 print asc(x$+chr$(0));:rem print ascii value
6 goto 3
