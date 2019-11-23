20 for v=-20 to 200 step 12.7:gosub 100:print v;v$:next:end
100 t9$=str$(v)
105 e9=0:for j9=1 to len(t9$):if mid$(t9$,j9,1)="e" then e9=j9
110 next:if e9>0 and mid$(t9$,e9+1,1)="-" then t9$="0.00":goto 150
115 if e9>0 and mid$(t9$,e9+1,1)="+" then t9$="***overflow":goto 150
120 if mid$(t9$,2,1)="." then t9$=left$(t9$,1)+"0"+mid$(t9$,2)
125 d9=0:for j9=1 to len(t9$):if mid$(t9$,j9,1)="." then d9=j9
130 next
135 if d9=0 then d9=len(t9$)+1:t9$=t9$+"."
140 t9$=t9$+"00"
145 t9$=left$(t9$,d9+2)
150 v$=right$("{space*12}"+t9$,12)
155 return