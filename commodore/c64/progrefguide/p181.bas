10 print"{clear}":for i=0 to 63:poke 832+i,0:next
20 gosub 60000
999 end
60000 data"         QQQQQQQ         "
60001 data"       QQQQQQQQQQQ       "
60002 data"      QQQQQQQQQQQQQ      "
60003 data"      QQQQQ   QQQQQ      "
60004 data"     QQQQQ QQQ  QQQQ     "
60005 data"     QQQQQ QQQ QQQQQ     "
60006 data"     QQQQQ QQQ  QQQQ     "
60007 data"      QQQQQ   QQQQQ      "
60008 data"      QQQQQQQQQQQQQ      "
60009 data"      QQQQQQQQQQQQQ      "
60010 data"      Q QQQQQQQQQ Q      "
60011 data"       Q QQQQQQQ Q       "
60012 data"       Q  QQQQQ  Q       "
60013 data"        Q  QQQ  Q        "
60014 data"        Q  QQQ  Q        "
60015 data"         Q  Q  Q         "
60016 data"         Q  Q  Q         "
60017 data"          QQQQQ          "
60018 data"          QQQQQ          "
60019 data"          QQQQQ          "
60020 data"           QQQ           "
60100 v=53248:poke v,200:poke v+1,100:poke v+21,1:poke v+39,14:poke 2040,13
60105 poke v+23,1:poke v+29,1
60110 for i=0 to 20:read a$:for k=0 to 2:t=0:for j=0 to 7:b=0
60140 if mid$(a$,j+k*8+1,1)="Q" then b=1
60150 t=t+b*2^(7-j):next:printt;:poke 832+i*3+k,t:next:print:next
60200 return
