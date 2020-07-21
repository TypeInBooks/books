5 print"{clear}"
10 poke 53270,152:poke 53282,7:poke 53283,2:poke 53281,0:poke 53280,0:poke 53272,24
20 for a= 0 to 31:readb:poke 8192+a,b:next:for a=0 to 7:poke 8192+32*8+a,0:next
30 for a=0 to 39:poke 55296+a,13:poke 55297+a,13:poke 55336+a,13:poke 55337+a,13
40 poke 1024+a,0: poke 1025+a,1 :poke 1064+a,2:poke 1065+a,3
50 poke 1023+a,32:poke 1063+a,32
60 next
70 poke 1103,32:poke 1104,32:goto 30
2000 data 0, 3, 15, 63, 255, 253, 253, 253, 0, 192, 240, 252, 255, 117, 182, 117, 255, 255, 255, 255
2010 data 255, 255, 51, 51, 255, 255, 255, 255, 255, 255, 51, 51
