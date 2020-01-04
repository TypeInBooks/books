1 rem ml joystick reader for the 64
2 rem
3 rem use sys 828. st<>0 means joy pressed
4 rem peek(2) returns 1,2,4,8,16 (or mix)
5 rem for n,s,w,e,fire of joy 1
6 rem peek(3) same for joy 2
7 rem
10 for j=828 to 848:read x:poke j,x:next
20 data 173,0,220,41,31,73,31,133,3,173
30 data 1,220,73,255,133,2,5,3,133,144,96
40 sys 828:print st peek(2) peek(3):goto 40