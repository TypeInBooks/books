10 for j=2048 to peek(45)+256*peek(46)
20 poke 1024+q, peek(j): poke 55296+q,1: q=q+1: next
30 print "{home}{down*4}";chr$(14): rem lowercase mode