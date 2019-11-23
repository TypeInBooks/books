10 input "what number";n$
20 l=len(n$)
30 for j=1 to l: if mid$(n$,j,1)="0" then n$=left$(n$,j-1) +"o"+ right$(n$,l-j)
40 next
50 print n$