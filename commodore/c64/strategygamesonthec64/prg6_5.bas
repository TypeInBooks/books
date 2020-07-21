10 print chr$(142);chr$(8):rem switch to upper case and disable lower case
20 sm=1024:rem top of screen memory
30 cm=55296:rem top of colour memory
40 y=10:x=10:rem x=row y=column
50 get a$:if a$="" then 50
60 l=asc(a$)
70 if l>64 then l=l-64
80 print chr$(147):rem clear screen
90 poke 1024+(y*40)+x,l:rem print character at location 10,10
100 poke 55296+(y*40)+x,1:rem colour of character
110 goto 50