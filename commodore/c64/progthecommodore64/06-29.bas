0 input"combine lines";l,u
1 def fn deek(c)=peek(c)+256*peek(c+1):c=fn deek(43):e=fn deek(45)-4
2 lt=fn deek(c+2)
3 if lt<l then c=fn deek(c):goto 2
4 if lt>l then print "line not found":end
5 s=c:c=c+4
6 if peek(c)>0 then c=c+l:goto 6
7 if peek(c+2)=0 goto 13
8 lt=fn deek(c+3):if lt<=u then print lt
9 if lt<=u then poke c,58:for j=c+1 to e:poke j, peek(j+4):next:goto 6
10 c=c+1:poke s,c-int(c/256)*256:poke s+1,c/256:s=c:c=c+4
11 if peek(c)>0 then c=c+l:goto 11
12 if peek(c+2)>0 goto 10
13 printc+3:c=c+1:poke s,c-int(c/256)*256:poke s+l,c/256:clr:end