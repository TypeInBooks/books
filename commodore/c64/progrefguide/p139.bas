10 print"{clear}":rem clear screen
20 poke 2040,13:rem get sprite 0 data from block 13
30 for i=0 to 62:poke 832+i,129:next:rem poke sprite data in block 13 (13*64=832)
40 v=53248:rem set beginning of video chip
50 poke v+21,1:rem enable sprite 1
60 poke v+39,1:rem set sprite 0 color
70 poke v+1,100:rem set sprite 0 y position
80 poke v+15,0:poke v,100:rem set sprite 0 x position
