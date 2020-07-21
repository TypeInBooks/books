10 dim a(8,8)
20 for i=1 to 8:for j=1 to 8
30 a(i,j)=0
40 next j:next i
50 a(5,1)=255:a(4,1)=5:a(5,2)=1:a(6,2)=1
60 a(5,8)=-255:a(1,8)=-5
70 gosub 1000
80 print"evaluation= ";q
90 stop
1000 q=0:for i=1 to 8
1010 for j=1 to 8
1020 q=q+a(i,j)
1030 next j:next i
1040 return