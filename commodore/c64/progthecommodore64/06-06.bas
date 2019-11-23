0 data 32,253,174,32,158,173,32,141,173,32,247,183,136,152,10,10,10
1 data 10,10,133,253,169,29,133,254,32,253,174,32,158,173,32,143,173
2 data 160,0,177,100,240,22,170,200,177,100,133,251,200,177,100,133
3 data 252,160,0,177,251,145,253,200,202,208,248,138,145,253,169,28
4 data 141,144,2,169,75,141,143,2,96,24,165,215,233,132,201,8,144,3
5 data 76,72,235,170,189,124,28,133,253,169,29,133,254,160,0,177,253
6 data 240,237,201,95,240,6,32,210,255,200,208,242,166,198,169,13,157
7 data 119,2,230,198,208,216,0,64,128,192,32,96,160,224
10 rem programmable function keys for the 64
20 rem typical examples of syntax: 
30 rem sys 40448,1,"this is function key 1":clr
40 rem sys 40448,2,"[ctrl-red]":clr
50 rem sys 40448,3,"list 50-100":clr adds return
60 rem sys 40448,5,"load"+chr$(34)+"$"+chr$(34)+",8":clr:rem loads directory
90 rem s1=49192 to put routine at $c000
100 poke 56, peek(56)-2: clr: rem lowers memory by 512 bytes
110 s=peek(56):s1=256*s
120 for j=s1 to s1+131:read x:poke j,x:next
130 poke s1+22,s+1:poke s1+65,s:poke s1+90,s:poke s1+94,s+1
140 for j=s1+256 to s1+511:poke j,0:next:rem set all fn keys null
150 print "{clear}use syntax:-" 
160 print "sys" s1 ",n,string:clr"
170 list 20-60