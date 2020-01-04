500 rem q=degrees subtended by each straight line segment.
505 rem q=10 plots a 36-sided figure
510 g=r:h=0: rem r=radius. and are intermediate values
520 n=360/q: rem n=number of sides=number of repetitions of loop
530 f=cos(q*{126}/l80): i=sin(q*{126}/l80) :rem trig parameters
540 for j=0 to n
550 c=g*f-h*i:a=g*i+h*f: rem these are the x and y coordinates of the next pt.
560 rem draw the straight line segment to the point x=c,y=a
570 g=c:h=a
580 next j