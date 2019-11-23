60000 input "enter start, increment";s,i
60010 print "{clear}{down*2}"; s;: poke 204,0
60020 get x$: if x$="" goto 60020
60030 print x$;: if asc(x$)<>13 goto 60020
60040 print "s=" s+i ":i=" i ":goto60010": print"{home}";
60050 poke 631,13: poke 632,13: poke 198,2: end