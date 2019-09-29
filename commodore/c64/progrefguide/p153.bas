10 print"{clear}"
20 poke 2040,13
30 for s=832 to 832+62:poke s,255:next
40 v=53248
50 poke v+21,1
60 poke v+39,1
70 poke v,24
80 poke v+1,100
90 for a=836 to 891 step 3:poke a,0:next a
