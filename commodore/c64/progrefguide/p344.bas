10 for k=0 to 10:rem set up direction string
20 read dr$(k):next
30 data "","n","s","","w","nw"
40 data "sw","","e","ne","se"
50 print"going...";
60 gosub 100:rem read the joystick
65 if dr$(jv)="" then 80:rem check if a direction was chosen
70 print dr$(jv);" ";:rem output which direction
80 if fr=16 then 60:rem check if fire button was pushed
90 print"-----f-----i-----r-----e-----!!!":goto 60
100 jv=peek(56320):rem get joystick value
110 fr=jv and 16:rem form fire button status
120 jv=15-(jv and 15):rem form direction value
130 return
