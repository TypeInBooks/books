0 poke 55,255:poke 56,44
1 for i=0to35:reada:poke14*1024+i,a:next
2 ifpeek(53270)and8thenpoke53270,peek(53270)-8
3 fori=0to126:reada:poke832+i,a:next:v=53248:mc=14*1024:kb=197
4 fori=0to126:reada:poke15*1024+i,a:next
6 fori=0to31:reada:poke12*1024+i,a:next:hi=0
7 pokev+32,6:pokev+33,6:poke54296,15
10 pokev+37,3:pokev+38,2:sc=0:pokev+24,28
15 poke2040,13:pokev+39,5:pokev,100:pokev+1,100:pokev+21,1:pokev+28,1
17 poke2041,14:pokev+40,5:cr=-1:sh=-1:poke2042,240:pokev+41,0
20 print"{clear}{down*25}@abcc@a@@bbacccba@ac@abbca@cbbbca@@accb";
22 a=peek(v+30)
25 sysmc:ifpeek(v+22)=199thenpoke2022,rnd(1)*4
30 k=peek(kb)
35 y=peek(v+1):y=y-2*(k=9)*(y>45)+(k=23)*(y<234)*2
36 ify>=234then1000
40 poke v+1,y:ifcr>-1then60
45 if rnd(1)>.1then150
50 pokev+21,peek(v+21)or2:pokev+2,80:pokev+16,peek(v+16)or2
55 pokev+3,int(rnd(1)*175+44):cr=0
60 f=0:a=peek(v+2):b=peek(v+16)and2:a=a-2:ifa<0andbthenb=0:a=254:f=1
65 ifa<0andcr=0then1000
67 ifa<0thencr=-1:goto150
70 pokev+2,a:pokev+16,peek(v+16)orb:iffthenpokev+16,peek(v+16)-2
80 ifcrthen100
85 a=peek(v+3)+int(rnd(1)*3-1)*3:ifa<44thena=44
90 ifa>235thena=235
95 pokev+3,a:goto150
100 poke(v+3),peek(v+3)+2:ifpeek(v+3)<235then150
105 pokev+28,3:pokev+40,8:poke2041,241
110 poke54276,0:poke54277,15:poke54273,72:poke54272,169:poke54276,129
115 fori=1to2000:next
140 pokev+21,peek(v+21)-2:pokev+28,1
145 cr=-1:pokev+40,5:poke2041,14
150 a=peek(v+30):ifa=3then1000
155 ifa=6andcr=0thensh=-1:cr=1:pokev+21,peek(v+21)-4:a=peek(v+30):sc=sc+10
160 ifk<>13then175
165 sh=1:pokev+21,peek(v+21)or4:pokev+4,peek(v)+10:pokev+5,peek(v+1)
170 ifpeek(v+16)and4thenpokev+16,peek(v+16)-4
171 poke54276,0:poke54277,31:poke54273,8:poke54272,147:poke54276,129
175 ifsh<1then200
180 a=peek(v+4):b=peek(v+16)and4:a=a+3:ifa>255thenb=4:a=1
185 ifa=80andbthenpokev+21,peek(v+21)-4:sh=-1:poke54273,0:poke54272,0:goto200
190 pokev+4,a:pokev+16,peek(v+16)orb
200 goto25
1000 poke2040,241:pokev+39,8:poke54273,72:poke54272,169:poke54277,47
1001 poke54276,0:poke54276,129:fori=1to3000:next:poke54273,0:poke54272,0
1005 pokev+24,20:pokev+21,0:pokev+22,200:print"{clear}{white}you scored";sc:ifsc>hithenhi=sc
1010 print"hi score is";hi:print"{down*3}want another game?"
1020 geta$:ifa$="y"then10
1025 ifa$<>"n"then1020
1030 end
10000 data 174,22,208,202,224,191,240,4,142,22,208,96,162,199,142,22,208
10005 data 162,0,189,193,7,157,192,7,232,224,40,208,245,169,32,141,231,7,96
10010 data 0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,128,0,0,224,0,0,232,1,0,234,149,64
10015 data 170,170,168,63,170,255,22,169,80,10,160,0,42,148,0,42,0,0,0,0,0,0,0,0
10020 data 0,0,0,0,0,0,0,0,0,0,0,0,99
10025 data 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24,0,0,255,0
10030 data 7,255,224,9,36,144,15,255,240,1,255,128,0,126,0,0,0,0,0,0,0,0,0,0,0
10035 data 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
10040 data 0,0,0,0,0,0,0,0,194,0,0,63,128,0,194,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
10042 data 0,0,0,0,99,0,0,0,0,12,0,0,63,0,0,59,0,0,59,0,252,59,0,59,251,240
10044 data 58,171,176,14,170,255,3,170,171,0,250,172,0,234,240,0,59,0,0,59,0
10046 data 0,238,192,3,174,192,14,190,192,14,206,192,59,3,0,0,0,0,0,0,0
10050 data 0,0,0,0,0,98,247,255,0,0,0,4,14,31,127,255
10055 data 0,0,16,24,60,124,254,255,0,0,0,0,4,46,127,255
