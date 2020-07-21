5 rem not working
10 dim a(8,8)
20 for i=1 to 8:for j=1 to 8
30 a(i,j)=0
40 next j:next i
50 a(1,7)=-1:a(2,7)=-1:a(6,7)=-1:a(7,7)=-1:a(8,7)=-1
55 a(6,8)=-5:a(7,8)=-255:a(3,6)=-3:a(4,6)=-3:a(5,6)=-9
60 a(1,2)=-1:a(2,4)=1:a(3,3)=1:a(2,1)=255
65 a(5,3)=3:a(8,3)=9:a(3,1)=5
70 gosub 1000
80 print"evaluation= ";q
90 stop
1000 q=0:for i=1 to 8
1010 for j=1 to 8
1020 q=q+a(i,j)
1025 if a(i,j)=1 then q=q+j*0.01
1026 if a(i,j)=-1 then q=q-(9-j)*0.01
1030 next j:next i
1040 return