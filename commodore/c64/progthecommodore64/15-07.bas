10 open 15,8,15
20 print "rel. filename":input n$
30 print "record length":input l
40 open 1,8,2,n$+",l,"+chr$(l+1)
50 input "record#";r
60 if r=99999 then close 1:end
70 rh%=r/256:rl=r-rh%*256
80 print "record":input r$
90 r$=left$(r$,l)
100 print#15,"p"+chr$(2)+chr$(rl)+chr$(rh%)+chr$(1)
110 print#1,r$
120 goto 50