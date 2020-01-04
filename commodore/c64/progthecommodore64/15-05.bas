20 rem data marked with asterisks protects against
21 rem hardware reset; if this isn't required,
22 rem omit the data. also omit if basic uses
23 rem ram after $8000.
24 rem 
100 print "message, statement, or title"
110 input m$
120 input "present program name";n$
130 input "autorun program name";p$
140 print "{clear}{down*2}":print m$
200 open 15,8,15,"i"
210 open 1,8,3,n$+",p,r"
220 open 2,8,4,p$+",p,w"
230 for j=679-2 to 9999
240 read x: if x<0 then 300
250 print#2,chr$(x);:next
300 for k=j to 2048
310 if k=770 then print#2,chr$(167);:next
320 if k=771 then print#2,chr$(2);:next
330 if k=808 then print#2,chr$(234);:next
340 print#2,chr$(peek(k));:next
400 get#1,x$,x$
410 get#1,x$:if st=64 then close 1:close 2:close 5:end
420 print#2,chr$(asc(x$+chr$(0)));:goto 410
500 data 167,2,169,131,141,2,3,169,164,141
510 data 3,3,169,1,133,43,169,8,133,44,169
520 data 0,168,153,0,216,136,208,250,169
530 data 1,141,33,208,133,162,165,162,208,252
540 data 162,5,189,15,253,157,3,128,221,3: rem ***
550 data 128,208,251,202,208,242,169,2,141: rem ****
560 data 1,128,169,254,141,3,128,169,245,141,0: rem****
570 data 128,169,188,141,2,128,169,128,133,56: rem****
580 data 169,234,141,40,3,32,89,166,76,174,167,-1