10 dim x(20),y(20),u(20),v(20),q(20):qq=-1000
20 for i=1 to 20
30 gosub 1000:q(i)=q:x(i)=i:y(i)=i:u(i)=i:v(i)=i
40 if q(i)>qq then qq=q(i):x=x(i):y=y(i):u=u(i):v=v(i)
50 next i
60 print qq,x;y,u;v
70 stop
80 for i=1 to 20
90 print q(i),x(i);y(i),u(i);v(i)
100 next i
110 end
1000 rem evaluate
1010 q=0:q=q+rnd(1)
1020 return