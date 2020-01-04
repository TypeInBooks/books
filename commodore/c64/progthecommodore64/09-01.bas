100 input "start";a
110 input "  end";e
120 input "first line#";l
130 input "line length";ll
140 print "{clear}"
150 print "{home}" l "data ";
160 print mid$(str$(peek(a)),2) ",";
170 a=a+1:if a>e then end
180 if pos(0)<ll then goto 160
190 print "{left}{home}{down*4}l="l"+1:a="a"{left}:e="e"{left}:ll="ll":goto140"
200 poke 198,5:poke 631,19:poke 632,13:poke 633,13:poke 634,13:poke 635,13