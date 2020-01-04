10 open 1,1,1,"rom area file"
20 for j=8*4096 to 10*4096-1
30 p=peek(j)
40 print#1,chr$(p);:rem ; is essential
50 next
60 close