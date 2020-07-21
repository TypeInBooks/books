10 dim a(8,8)
20 for i=1 to 8:for j=1 to 8
30 a(i,j)=0
40 next j:next i
50 a(2,3)=5:a(5,4)=3
60 a(7,7)=-5:a(8,8)=-3
70 a$="23547788"
80 for i=1 to 2:rem comp piece
90 x=val(mid$(a$,i*2-1,1)):y=val(mid$(a$,i*2,1))
100 print"piece no ";i;x;y;a(x,y)
110 next i
120 for i=1 to 2:rem opponent piece
130 x=val(mid$(a$,i*2+3,1)):y=val(mid$(a$,i*2+4,1))
140 print"pience no ";i;x;y;a(x,y)
150 next i