1 rem saves screen,color ram and vic chip:run performs save,run 500 reloads
7 rem screen assumed to start $400
8 rem write 3 new files to disk
9 rem for tape,use 1 instead of 8
10 sys 57812 "@:screen",8,1:poke 193,0:poke 194,4:poke 174,0:poke 175,8
15 sys 62957
20 sys 57812 "@:color",8,1:poke 194,216:poke 175,220:sys 62957
30 sys 57812 "@:vic registers",8,1:poke 194,208:poke 175,209:sys 62957
50 end
499 rem load back 3 files
500 poke 147,0:sys 57812 "screen",8,1:sys 62631
510 sys 57812 "color",8,1:sys 62631
520 sys 57812 "vic registers",8,1:sys 62631
600 goto 600:rem display screen till 'run/stop1' key