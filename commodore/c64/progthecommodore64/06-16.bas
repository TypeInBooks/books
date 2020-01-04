63499 rem set up values
63500 a=2049:input "lower, upper line numbers";f,t
63510 dim t$(76):for k=1 to 76:read t$(k):next
63520 def fn deek(a)=peek(a)+256*peek(a+1):cm=39:rem set max line length
63599 rem start new basic line
63600 l=fn deek(a+2):x=fn deek(a):q=0:if x=0 or l>t then end
63610 if l<f then a=x:goto 63600
63620 print right$("{space*4}"+str$(l),5)" ";:cc=6:rem align line numbers
63699 rem peek and print basic
63700 for k=a+4 to a+93:p=peek(k):rem p is current character
63710 if co>cm-7 then print:print "{space*6}";:cc=6
63720 if p=0 then print:a=x:goto 63600:rem next line
63730 if p=34 then q=not q:rem toggle quote flag
63740 if q then gosub 63900:next:rem look for special characters
63750 if not q and p>127 then print t$(p-127);:cc=cc+len(t$(p-127)):next
63760 printchr$(p);:cc=cc+1:rem cc counts characters
63770 next
63799 rem keywords in token order
63800 data " end "," for "," next "," data "," input# "," input "," dim "
63810 data " read "," let "," goto "," run "," if "," restore ", " gosub "
63820 data " return ", " rem "," stop "," on "," wait "," load "," save "
63830 data " verify "," def "," poke "," print# "," print "," cont "," list "
63840 data " clr "," cmd "," sys "," open ", "close "," get "," new "," tab("
63850 data " to "," fn "," spc(", " then "," not "," step ",+,-,*, /,^," and "
63860 data " or ",>,=,<," sgn "," int","abs"," usr"," fre"," pos"," sqr"
63870 data " rnd"," log"," exp"," cos"," sin"," tan"," atn"
63880 data " peek"," len"," str$"," val"," asc"," chr$"
63890 data " left$"," right$"," mid$"," go "
63899 rem user-definable special chrs
63900 if p=5 then print "{white}";:cc=cc+5
63910 if p=17 then print "{up}";:cc=cc+4
63920 if p=18 then print "{reverse on}"; :cc=cc+7
63930 printchr$(p);:cc=cc+1:return