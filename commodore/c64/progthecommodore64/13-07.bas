1 gosub 2000:nb=32:input "number of beats   (1-32: default=32)";nb
2 tm=5:input "tempo{space*13}(1-50: default= 5)"; tm
3 a$="n":input "clear rhythms?{space*3}(y/n: default is n)";a$ 
4 if a$="y" then gosub 6000
5 a$="n":input "load rhythms{space*5}(y/n: default is n)";a$
6 if a$="y" then gosub 7000
8 gr$=" b+++b+++b+++b+++b+++b+++b+++b+++"
9 ps$=" 7.. .7.. .7. .7.. .7 "
10 print"{clear}{down*2}" left$(gr$,nb+1)
20 for j=1 to 3:print left$(ps$,nb+1):next
30 print "{home}";:poke 53280,6:poke 650,128
50 gosub 3000
60 gosub 5000
70 n$="000000"
100 print " ": print "{up}";
110 ti$=n$:poke 56334,17
120 print "{left}";:poke 252,bt:sys 49200
130 if ti<tm goto 130
140 bt=bt+1:if bt=nb then bt=0:goto 100
150 goto 110
1999 rem
2000 si=54272
2010 poke si+4,8:poke si+11,8:poke si+18,8
2020 for i=si to si+28:poke i,0
2030 poke si+24,8
2040 return
2999 rem
3000 rem
3010 rem
3030 rem freq low 
3031 rem freq hi
3032 rem pw   lo
3033 rem pw   hi
3034 rem waveform gate
3035 rem attack +   decay
3036 rem sustain +  release
3037 rem  plus one 'dummy' byte to give an 8-byte block
3039 data "instrs"
3040 data 000,010,000,000,017,024,008,0
3050 data 000,015,000,000,017,023,007,0
3060 data 000,015,000,000,129,006,000,0
3070 data 075,001,000,008,065,025,008,0 
3080 data 000,226,000,000,129,025,008,0
3090 data 255,253,000,000,129,040,008,0
3100 restore:for j=1 to 1e9:read x$:if x$<>"instrs" then next
3110 for j=0 to 6*8-1:read x:poke 49152+j,x:next
3120 rem
3130 return
4998 rem 
4999 data "ml"
5000 data 165,252,141,245,192,9,32,141,246,192,73,96,141,247,192,32,228
5001 data 255,201,0,240,54,141,243,192,162,3,221,239,192,208,17,189,244
5002 data 192,170,169,63,157,92,193,169,46,32,214, 192,76,124,192,202,208
5003 data 231,173,243,192,56,233,49,201,6,176,14,4 2,42,42,72,42,41,96,5
5004 data 252,170,104,157,92,193,174,245,192,189,92,193,201,63,240,9,168
5005 data 32,209,192,162,0,32,182,192,174,246,192,189,92,193,201,63,240
5006 data 9,168,32,209,192,162,7,32,182,192,174,247,192,189,92,193,201
5007 data 63,240,9,168,32,209,192,162,14,32,182,192,96,185,4,192,41,254
5008 data 157,4,212,169,7,141,244,192,185,0,192,157,0,212,200,232,206,244
5009 data 192,208,243,96,106,106,106,105,49,72,138,201,32,144,9,201,64
5010 data 144,3,24,105,8,105,8,170,104,157,121,4,169,1,157,121,216,96,133
5011 data 134,135
5015 restore: for j=1 to 1e9:read x$:if x$<>"ml" then next
5020 for j=49200 to 49394: read x: poke j,x: next:return
5999 rem
6000 for j=49500 to 49500+95:poke j,63:next
6010 rem 
6020 poke 49500+32,16
6021 poke 49500+40,16
6022 poke 49500+48,16
6023 poke 49500+56,16
6040 return
6998 rem
6999 data "rhythms"
7000 data 63,63,63,63,63,63,63,63
7002 data 63,63,63,63,63,63,63,63
7004 data 08,63,00,63,63,63,00,63
7006 data 08,63,08,63,08,63,08,63
7007 rem
7010 data 16,63,63,63,63,63,63,63
7012 data 16,63,63,63,63,63,63,63
7014 data 16,63,63,63,63,63,63,63
7016 data 16,63,16,63,63,63,63,63
7017 rem
7020 data 40,63,63,63,40,63,40,63
7022 data 40,63,63,63,40,63,63,63
7024 data 32,63,63,63,32,63,32,40
7026 data 40,63,40,32,32,40,32,63
7030 restore:for j=1 to 1e9:read x$:if x$<>"rhythms" then next
7040 for j=49500 to 49500+95:read x:poke j,x:next:return