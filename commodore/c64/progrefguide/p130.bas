10 poke 53265,peek(53265) and 247           :rem go into 24 row mode
20 print chr$(147)                          :rem clear the screen
30 for x=1 to 24:print chr$(17);:next       :rem move the cursor to the bottom
40 poke 53265,(peek(53265) and 248)+7:print :rem position for 1st scroll
50 print"     hello";
60 for p=6 to 0 step-1
70 poke 53265,(peek(53265) and 248)+p
80 for x=1 to 50:next                       :rem delay loop
90 next:goto 40
