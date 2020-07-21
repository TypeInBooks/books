10 for a=0 to 62:poke 832+a,255:next
20 poke 53269,4:poke 2042,13
30 if peek(197)=4 then 100
40 if peek(197)=3 then 200
50 if peek(197)=10 then 300
60 if peek(197)=18 then 400
70 goto 30
100 if peek(53253)>46 then y=y-1
110 poke 53253,y
120 goto 70
200 if peek(53253)<225 then y=y+1
210 poke 53253,y
220 goto 70
300 if peek(53252)>30 and peek(53264)=0 then x=x-1:goto 310
305 if peek(53264)=4 and peek(53252)>0 then x=x-1
307 if peek(53264)=4 and peek(53253)=0 then poke 53264,0:x=255
310 poke 53252,x
320 goto 70
400 if peek(53252)<255 then x=x+1
410 if peek(53252)=255 then poke 53264,4:x=0
420 if peek(53264)=4 and peek(53252)=70 then 440
430 poke 53252,x
440 goto 70
