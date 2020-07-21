10 dim a(9,9)
20 p=5:q=5
30 a$="pq....."
40 b$=str$(10*p+q)
50 h$=right$(b$,len(b$)-1)
60 a(p,q)=1:i=1:rem piece number
70 a$=left$(a$,i-1)+h$+right$(a$,len(a$)-(i+1))
80 x=val(mid$(a$,2*i-1,1)):y=val(mid$(a$,2*i,1))
90 u=x+1:v=y+1
100 c=a(u,v):a(u,v)=a(x,y):a(x,y)=0
110 print"piece table was: ";a$
120 print"piece moved forwards by one square sideways and down"
130 b$=str$(10*u+v)
140 h$=right$(b$,len(b$)-1)
150 a$=left$(a$,i-1)+h$+right$(a$,len(a$)-(i+1))
160 print"piece table is now: ";a$