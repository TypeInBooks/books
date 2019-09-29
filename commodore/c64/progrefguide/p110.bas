5 print chr$(142):rem switch to upper case
10 poke 52,48:poke 56,48:clr:rem reserve memory for characters
20 poke 56334,peek(56334) and 254:rem turn off keyscan interrupt timer
30 poke 1,peek(1) and 251:rem switch in character
40 for i=0 to 511:poke i+12288,peek(i+53248):next
50 poke 1,peek(1) or 4:rem switch in i/0
60 poke 56334,peek(56334) or 1:rem restart keyscan interrupt timer
70 end
