10 for j=49152 to 49177:read x:poke j,x:next
20 b1=55296:b2=56296
30 for j=1024 to 2023:poke j,160:next
40 for y=0 to 24:for x=0 to y 
50 p1=x+40*y:p2=y+40*x
60 poke b1+p1,y:poke b2-p1-1,y
70 if y<20 then poke bl+p2,y:poke b2-p2-1,y
80 next:next
90 for j=0 to 50:next:wait 53266,128:sys 49152:goto 90
100 data 160,0,132,253,162,4,169,216,133
110 data 254,177,253,24,105,1,145,253,136
120 data 208,246,230,254,202,208,241,96