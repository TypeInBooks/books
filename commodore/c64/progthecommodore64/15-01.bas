10 poke 55,0:poke 56,12:clr:rem free ram starts$0c00
20 print "name of program to be copied"
30 input n$
40 print "{down}name of program after copying"
50 input m$
60 open 15,8,15
100 print "{down}insert disk holding original program"
110 print" then press return"
120 get x$:if x$<>chr$(13) goto 120
130 print "{down}ok... reading" n$:print
200 open 1,8,2,n$+",p,r"
300 for j=3072 to 40960
310 get#1,x$:if st>0 goto 400
320 poke j,asc(x$+chr$(0))
330 next:print "too long":end
400 close 1:print "{down}insert destination disk"
410 print "then press return"
420 get x$:if x$<>chr$(13) goto 420
430 print "{down}ok... writing" m$
440 print#15,"i"
500 open 1,8,2,m$+",p,w"
600 for k=3072 to j
610 print#1,chr$(peek(k));
620 next
700 close 1:close 15:print "copy completed"