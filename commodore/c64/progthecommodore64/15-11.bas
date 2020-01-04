10 z$=chr$(0):open 2,8,2,"$"
20 get#2,x$,x$
30 for j=1 to 35:get#2,a$,b$,c$,d$
40 printj asc(a$+z$) asc(b$+z$) asc(c$+z$) asc(d$+z$)
50 next:close 2:end