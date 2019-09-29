10 rem * example 2 *
20 rem creating multi color programmable characters
31 poke 56334,peek(56334) and 254:poke 1,peek(1) and 251
35 for i=0 to 63:rem character range to be copied from rom
36 for j=0 to 7:rem copy all 8 bytes per character
37 poke 12288+i*8+j,peek(53248+i*8+j):rem copy a byte
38 next j,i:rem goto next byte or character
39 poke 1,peek(1) or 4:poke 56334,peek(56334) or 1:rem turn on i/o and kb
40 poke 53272,(peek(53272) and 240)+12:rem set char pointer to mem. 12288
50 poke 53270,peek(53270) or 16
51 poke 53281,0:rem set background color #0 to black
52 poke 53282,2:rem set background color #1 to red
53 poke 53283,7:rem set background color #2 to yellow
60 for char=60 to 63:rem program characters 60 thru 63
80 for byte=0 to 7:rem do all 8 bytes of a character
100 read number:rem read 1/8th of the character data
120 poke 12288+(8*char)+byte,number:rem store the data in memory
140 next byte,char
150 print"{clear}"tab(255)chr$(60)chr$(61)tab(55)chr$(62)chr$(63)
160 rem line 150 puts the newly defined characters on the screen
170 get a$:rem wait for user to press a key
180 if a$="" then 170:rem if no keys were pressed, try again
190 poke 53272,21:poke 53270,peek(53270) and 239:rem return to normal chars
200 data 129,37,21,29,93,85,85,85: rem data for character 60
210 data 66,72,84,116,117,85,85,85: rem data for character 61
220 data 87,87,85,21,8,8,40,0: rem data for character 62
230 data 213,213,85,84,32,32,40,0: rem data for character 63
240 end
