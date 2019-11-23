2 rem *** example:  def fn y(x)=x*x-2 solves sqr(2)
3 rem *** example:  def fn y(x)=x^3 5*x^2-3 solves x^3+5x^2=3
10 def fn y(x)=p*(1-1/(1+x)^n)/x-s
11 input "no. of payments";n
12 input "total sum";s
13 input "each payment is";p
20 guess=.1  :rem set guess at 10% per payment interval
30 dx=1/1024 :rem small increment with no rounding error
40 gradient=(fn y(guess+dx)-fn y(guess))/dx
50 guess=guess-fn y(guess)/gradient
60 if abs(guess-g1)<.00001 then print"solution=" guess: end
70 g1=guess: goto 40:  rem print g1 to watch consecutive guesses