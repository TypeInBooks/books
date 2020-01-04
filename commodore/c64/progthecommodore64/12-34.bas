1 rem 32 sprites demonstration program
2 rem 828 counts 0 to 3
3 rem 829-832 stores 4 sets of sprite enables
4 rem 833,834 &c=4 sets lo/hi rasters. (hi=128)
5 rem 841-844 stores 4 sets of x-posn high bits
6 rem 845-860,861-876,877-892,and 893-908
7 rem store all 4 sets of sprites' x,y pairs
8 rem other line 1001 removes colored bands
9 rem 
10 for j=49152 to 49242:read x:poke j,x:next
19 rem enable all 32 sprites, & set posns
20 poke 828,3
30 poke 829,255:poke 830,255:poke 831,255:poke 832,255
40 poke 833,90:poke 835,130:poke 837,170:poke 839,210
50 poke 834,0:poke 836,0:poke 838,0:poke 840,0
60 poke 841,0:poke 842,0:poke 843,0:poke 844,0
70 for k=845 to 860 step 2:read x:poke k,x:poke k+16,x
75 poke k+32,x:poke k+48,x:next
80 for j=0 to 3:read y:for k=846 to 861 step 2
85 poke k+16*j,y:next:next
99 rem enable raster interrupts
100 poke 56333,127
110 poke 788,0:poke 789,192
115 poke 53265,peek(53265)and127
120 poke 53274,129
199 rem put specimen mob in tape buffer
200 for j=2040 to 2047:poke j,15:next
210 for j=960 to 1023:poke j,255:next
999 rem ml for raster interrupt handling
1000 data 174,60,3,232,224,4,208,2,162,0,142,60,3
1001 data 142,33,208,189,61:rem 234,234,234,189,61
1002 data 3,141,21,208,189,73,3,141,16,208,138,10
1003 data 170,189,66,3,13,17,208,141,17,208,189,65
1004 data 3,141,18,208,138,10,10,10,170,160,0,189
1005 data 77,3,153,0,208,189,78,3,153,1,208,232,232
1006 data 200,200,192,16,208,236,169,1,141,25,208,173 
1007 data 13,220,41,1,240,3,76,49,234,76,129,234
1999 rem sample X & Y posns of 32 sprites
2000 data 40,70,100,130,160,190,220,250
3000 data 60,100,140,180