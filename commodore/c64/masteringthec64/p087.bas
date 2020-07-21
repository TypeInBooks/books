10 open 1,1,2, "screen save"
20 for a=1024 to 2023:b=peek(a):c=peek(a+54272)
30 print#1,b:print#1,c:next
40 close1