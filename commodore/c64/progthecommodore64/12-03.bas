10 s$="{white}this is {cyan}a {purple} {reverse on}moving{reverse off} {green}message!"
20 for j=1 to len(s$)
30 print mid$(s$,j)left$(s$,j)
40 c$=mid$(s$,j,1)
50 if c$>" " and c$<="z" then for k=l to 50: next
60 print "{up}";: next: run