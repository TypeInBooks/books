10 poke 53280,1: poke 53281,1
100 dim s(52): for j=1 to 52: s(j)=j: next
110 for j=1 to 51
120 j% = j+int(rnd(1)*(53-j))
130 temp=s(j): s(j)=s(j%): s(j%)=temp
140 next
300 for j=1 to 52
310 n=s(j)-1
400 s=int(n/13)
410 print mid$("{black}A{red}S{red}Z{black}X",s*2+1,2);
500 v=n-int(n/13)*13
510 if v=1  then print "a, ";: goto 600
520 if v=11 then print "j, ";: goto 600
530 if v=12 then print "q, ";: goto 600
540 if v=0  then print "k, ";: goto 600
550 print mid$(str$(v),2,len(str$(v))-1)"{black}, ";
600 next