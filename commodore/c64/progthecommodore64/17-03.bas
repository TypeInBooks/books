100 m=yd/xd:yp=0:rem m is the gradient. y-position starts 0
110 for xp=1 to xd: print#n,east: rem exact form varies with plotter
120 if m*xp>yp then print#n,northeast: yp=yp+1:xp=xp+1:if xp<xd goto 120
130 next
140 if yp-1<yd then print#n,northeast: yp=yp+1:goto 140:rem finish