10 sid=54272:dim x(500)
20 input "attack, decay, sustain,release";a,d,s,r
25 for j=sid to sid+24:poke j,0:next
27 poke sid+24,15
30 poke sid+19,16*a+d:poke sid+20,16*s:rem a,s,d
40 poke sid+14,11
42 poke sid+15,48
50 poke sid+18,0:poke sid+18,33
60 for j=0 to 25:x(j)=peek(sid+28):next
70 poke sid+18,0
80 for j=26 to 40:x(j)=peek(sid+28):next
90 z=(z+1) or 8 and 15:poke 646,z
100 gosub 200:for j=0 to 40
110 for k=1 to x(j)/20:print "{reverse on} {up}{left}";:next
120 gosub 200:for k=1 to j:print "{right}";:next:next
130 print "{white}{space*11}adsr=" a;d;s;r:goto 20
140 print "{home}";:for x=1 to 24:print "{down}";:next:return
200 print "{home}";:for x=1 to 24:print "{down}";:next:return