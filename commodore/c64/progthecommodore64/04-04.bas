100 print"1. interest rate"
110 print"2. time period"
120 print"3. mortgage"
200 get x$:if x$<"1" or x$>"3" goto 200
210 on val(x$) goto 1000, 2000, 3000