10 open 15,8,15:open 1,8,2,"#"
20 input "starting t & s";t,s
30 print "track" t "sector" s
40 print#15,"u1";2;0;t;s
50 get#1,t$,s$: if t$="" then close 1:close 15:end
60 t=asc(t$):s=asc(s$+chr$(0)):goto 30