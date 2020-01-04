100 for j=320 to 356:read x:poke j,x:next
110 for j=828 to 1018:poke j,32:next
200 print "write header/file to tape; or exit"
210 input "(h/f/x)";yn$
220 if yn$="x" then end
230 if yn$="f" goto 500
299 rem this writes header only to tape
300 print "enter first parameters of header"
310 print "example: 3,0,192,0,208 mean"
320 print "forced program load from c000-d000"
330 input a,b,c,d,e
340 poke 828,a:poke 829,b:poke 830,c:poke 831,d:poke 832,e
350 print "program name to be put in header"
360 input n$
370 for j=1 to len(n$):poke 832+j,asc(mid$(n$,j)):next
380 sys 320:rem write header to tape
390 run
499 rem this writes any block of memory to tape
500 input "start address of block to be saved";s
510 input "  end address of block to be saved";e
520 poke 321,20
530 poke 325,s/256:poke 329,s-int(s/256)*256
540 poke 333,e/256:poke 337,e-int(e/256)*256
550 sys 320:rem write block to tape
560 run
996 rem following ml is set up for header
997 rem line 1000's 105 = length of tone;
998 rem line 1000's and 60 set start=$033c;
999 rem line 1010's and 252 set end =$03fc.
1000 data 169,105,133,171,169,3,133,194,169,60,133,193
1010 data 169,3,133,175,169,252,133,174,169,1,133,184,133
1020 data 186,169,0,133,183,169,255,133,185,76,107,248