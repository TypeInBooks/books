60000 input "renumber from,to ";l,h
60005 input "start, increment ";s,i
60010 dim l(600,2):a=2049:b=256:j=-1
60100 j=j+1:l(j,0)=peek(a+2)+b*peek(a+3):l(j,2)=a+4
60105 if l(j,0)<l or l(j,0)>h then l(j,1)=l(j,0):goto 60120
60110 l(j,1)=s+r*i:r=r+1:nl=l(j,1)
60115 poke a+2,nl-int(nl/b)*b:poke a+3,nl/b
60120 a=peek(a)+b*peek(a+1):if a>0 goto 60100
60200 for k=0 to j-30:a=l(k,2)
60205 p=peek(a):sp=0:if p=0 then next k:end
60210 if p<>137 and p<>138 and p<>141 and p<>155 and p<>167 and p<>203 then a=a+1:goto 60205
60300 n=0:a=a+1:p=peek(a):if p=32 then sp=sp+1:goto 60300 
60305 if p=164 goto 60300
60310 if p<asc("0") or p>asc("9") goto 60205
60315 if p>47 and p<58 then n=10*n+(p-48):a=a+1:p=peek(a):goto 60315
60320 for q=0 to j-30:if n=l(q,0) goto 60330
60325 next q:print "*** unreferenced line in" l(k,1):goto 60500
60330 if l(q,0)=l(q,1) goto 60500
60400 n$=str$(l(q,1)):o$=str$(l(q,0))
60405 d=len(n$):d2=len(o$):if d<d2 then n$=chr$(32)+n$:goto 60405
60410 if d>d2+sp then print "{reverse on}*** put" n$ "into line" l(k,1):goto 60500
60415 x=a-d-1:for q=2 to d:poke x+q,asc(mid$(n$,q)):next
60500 if p=32 then a=a+1:p=peek(a):goto 60500
60505 if p=44 or p=171 then sp=0:goto 60300
60510 goto 60205