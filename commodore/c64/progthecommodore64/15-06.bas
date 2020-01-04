10 print "name of seq file to be displayed"
20 input n$
30 open 1,8,2,n$:rem open seq file (default= read)
40 get#1,x$
50 print x$;
60 if st>0 then close 1:end:rem stop at end of file
70 get x$:if x$="" then 70
80 goto 40