60 data 11,100,50,10,5,2,1,.5,.25,.1,.05,.01
70 read number of denoms: dim nc(nu),qu(nu)
80 for j=1 to nu: read nc(j): next
110 input "{clear}# of employees"; employees: dim salaries of (employees)
120 for j=1 to em: print "employee #"j;
130 input salary of (j): sa(j)=sa(j)+nc(nu)/2
140 next
210 for j=1 to employees
220 for k=1 to number
230 x=int(sal(j)/nc(k)): sal(j)=sal(j)-x*nc(k):qu(k)=qu(k)+x
240 next k
250 next j
310 print "{clear} analysis:"
320 for j=1 to nu: if qu(j)=0 then 340
330 print qu(j) "of $" nc(j)
340 next
