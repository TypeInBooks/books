10 input "size of board";n
20 dim q(n)
30 for j=1 to n: q(j)=0: next: for j=1 to n
40 r=1+int(rnd(1)*n): if q(r)>0 goto 40
50 q(r)=j: next
100 for j=1 to n-1
110 for k=j+1 to n
120 if abs(q(j)-q(k)) <> k-j then next: next: goto 200
130 r=1+int(rnd(1)*n)
140 if r=j or r=k goto 130
150 temp=q(r): q(r)=q(k): q(k)=temp: goto 100
200 for j=1 to n: for k=1 to n
210 if k<>q(j) then print "{reverse on}{white}W";
220 if k= q(j) then print "{reverse on}{black} ";
230 next: print: next: print
300 goto 30