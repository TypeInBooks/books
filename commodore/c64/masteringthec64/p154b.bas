5 a$="0123456789abcdef"
10 input"decimal no (max 255)";de
20 c=int(de/16):d=(de/16-c)*16
30 h$=mid$(a$,c+1,1)+mid$(a$,d+1,1)
40 print h$
50 goto 10