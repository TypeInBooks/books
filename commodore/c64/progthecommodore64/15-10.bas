20000 open 100,8,0,"$:u=u"
20010 for j=1 to 35:get#100,x$:next
20020 get#100,y$:close 100
20030 bf=asc(x$+chr$(0))+256*asc(y$+chr$(0))
20040 print bf"blocks free"