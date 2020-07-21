10 dim a(8,8),b(6)
20 for i=0 to 6
30 read c:b(i)=c:rem fill look up table
40 next i
50 data 0,1,3,3.2,5,9,255
60 rem data contains piece values
70 print chr$(147)
80 for i=1 to 8:for j=1 to 8:a(i,j)=0:next j:next i:rem clear board
90 print"enter x,y, token"
100 input x,y,t
110 if x>8 or y>8 or t>6 then 90
120 a(x,y)=t
130 for i=1 to 8:for j=1 to 8
140 z=a(i,j)
150 if z<>0 then v=b(z):print"token =";t;"location";x;y;"piece value =";v
160 next j:next i
170 a(x,y)=0
180 goto 90