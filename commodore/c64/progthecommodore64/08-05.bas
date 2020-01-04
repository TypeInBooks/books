1 print"{clear}{down*2}set 64 to simulate pet/cbm basic"
3 print"lines 400-600 control color scheme"
5 print"line 1200 sets basic top; you can"
6 print"select other values, e.g. $7000."
8 print"lines 1300-1400 set basic & screen"
9 print"starts; you can use other values"
11 print"lines 1500-1600 select vic bank; "
12 print"often this won't be needed."
14 print"line 1700 personalizes the signon"
16 print"newer 64s don't need line 1800"
18 print"note: if you use hardware reset"
19 print"switch, resetting leaves modified"
20 print"basic intact in ram, except for"
21 print"location $a000! poke 40960,148"
22 print"corrects this."
25 print "{down*3}{reverse on}press return to continue{reverse off}"
26 get r$:if r$="" then 26
27 if r$<>chr$(13) then 26
100 for j=49152 to 49193:read x:poke j,x:next:sys 49152
200 poke 1,53
300 poke 41853,33
400 poke 64982,53
500 poke 60634,0
600 poke 60633,0
700 poke 58677,5
1000 poke 64887,240
1100 poke 64904,162:poke 64905,0
1200 poke 64906,160:poke 64907,128
1300 poke 64913,4
1400 poke 64918,128
1500 poke 64972,5
1600 poke 60625,4
1700 for j=58494 to 58505:poke j,asc(mid$("revised  cbm",j-58493)):next
1800 poke 58587,134:poke 58588,2
1900 sys 64738
5000 data 120,165,1,72,169,55,133,1,169
5010 data 160,133,3,160,0,132,2,177,2
5020 data 145,2,136,208,249,230,3,165,3
5030 data 240,8,201,192,208,239,169,224
5040 data 208,229,104,133,1,88,96