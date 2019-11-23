10 rem 'run' builds file of words;
11 rem 'run 200' assesses words.
13 rem tape use  101 open 1,1,1,"5-letter words"
14 rem and       301 open 1,1,0,"5-letter words"
98 rem build file of words on disk
101 open 1,8,2,"5-letter words,s,w"
110 input w$
120 if len(w$)<>5  goto 110
130 print#1,w$
140 if w$<>"end**" goto 110: rem signals end
150 close 1: end
198 rem put in letter values
200 dim v(26)
210 for j=1 to 26
220 print chr$(64+j);
230 input " value"; v(j)
240 next
298 rem read disk & print word values
301 open 1,8,2,"5-letter words,s,r"
310 input#1,w$
320 if w$="end**" then close 1: end
330 print w$;
340 s=0: for j=1 to 5:rem compute score by evaluating each letter
350 l$=mid$(w$,j)
360 a=asc(l$)-64
370 s=s v(a): next
380 print s
390 goto 310