10 open 1,8,4,"kernal 02"
20 open 2,8,5,"kernal 03"
30 for j=14*4096 to 65535
40 get#1,x$:get#2,y$
50 if x$<>y$ then print j; "new=" asc(y$+chr$(0))
60 next:close 1:close 2