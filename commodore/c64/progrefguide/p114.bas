10 rem * example 1 *
20 rem creating programmable characters
31 poke 56334,peek(56334) and 254:poke 1,peek(1) and 251:rem turn off kb and i/o
35 for i=0 to 63:rem character range to be copied from rom
36 for j=0 to 7:rem copy all 8 bytes per character
37 poke 12288+i*8+j,peek(53248+i*8+j):rem copy a byte
38 next j:next i:rem goto next byte or character
39 poke 1,peek(1) or 4:poke 56334,peek(56334) or 1:rem turn on i/o and kb
40 poke 53272,(peek(53272) and 240)+12:rem set char pointer to mem. 12288
60 for cr=60 to 63:rem program characters 60 thru 63
80 for byte=0 to 7:rem do all 8 bytes of a character
100 read number:rem read in 1/8th of character data
120 poke 12288+(8*cr)+byte,number:rem store the data in memory
140 next byte:next cr:rem also could be next byte,cr
150 print chr$(147)tab(255)chr$(60);
155 print chr$(61)tab(55)chr$(62)chr$(63)
160 rem line 150 puts the newly defined characters on the screen
170 get a$:rem wait for the user to press a key
180 if a$="" then goto 170:rem if no keys were pressed, try again!
190 poke 53272,21:rem return to normal characters
200 data 4,6,7,5,7,7,3,3:rem data for character 60
210 data 32,96,224,160,224,224,192,192:rem data for character 61
220 data 7,7,7,31,31,95,143,127:rem data for character 62
230 data 224,224,224,248,248,248,240,224:rem data for character 63
240 end
