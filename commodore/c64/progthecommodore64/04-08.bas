100 print "{clear}"
110 input "weight (pounds)";p
120 input "intended daily calorie intake";c
130 input "inactive, fairly, or very active (0-2)";a
140 input "male, female (m or f)";s$: s$=left$(s$,1)
150 s=l:if s$="f" then s=.9
200 print "{clear}" s$ "{space*2}weight now:" p
210 print "calorie intake:" c
220 print
300 for w=0 to 16
310 print "week" int(p*10)/10
400 for j=1 to 7
410 m=p*(14.3+a)*s c/10
420 d=m-c
430 dw=d/3500
440 p=p-dw
450 next j
500 next w