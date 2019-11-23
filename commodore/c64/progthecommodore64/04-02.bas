560 rem  short subroutine to covert a string of
565 rem  4 hex digits to decimal and print result
575 rem  example of use:
580 rem  l$="abcd":gosub 600    prints 43981
590 rem  uses variables h,j,k,l, and l$
600 l=0:for j=1 to 4:l%=asc(mid$(l$,j)):l%=l%-48+(l%>64)*7:l=16*l+l%:next:printl
610 return