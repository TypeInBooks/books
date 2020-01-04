10 poke 53281,0:poke 53280,0:print "{white}{clear}"
20 a$="       "
30 b$=a$+"Q"+a$+"A"+a$+"Z"+a$+"S"+a$+"X"
40 b$=b$+b$+b$+b$
100 for j=1 to 40
110 d1$=mid$(b$,j,40)
120 d2$=mid$(b$,80-j,40)
130 d3$=mid$(b$,j+20,40)
140 d4$=mid$(b$,100-j,40)
150 print "{home}"+d1$+"{home}{down*3}"+d2$+"{home}{down*6}"+d3$+"{home}{down*9}"+d4$
160 next:for d=1 to 50:next:goto 100