100 ba=8192:rem base address may differ
105 open 4,4
110 for j=0 to 7:p(j)=2^j:next
115 for x=0 to 319 step 7
120 x$=""
125 for y=199 to 8 step-1:v=0
130 for bt=0 to 6
140 x1=x+bt:x2=x1 and 7:if bt and x2 then 150
145 by=ba+(y and 248)*40+(x1 and 504)+(y and7)
150 v=v+p(bt)*sgn(peek(by) and p(7-x2))
155 next
160 print v;
165 x$=x$+chr$(v+128)
170 next
175 print#4,chr$(8)x$
180 next:close4