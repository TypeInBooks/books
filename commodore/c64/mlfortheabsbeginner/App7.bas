5 rem * tune *
10 chip=54272:c=chip
20 nl(0)=c+0:nh(0)=c+1:w(0)=c+4:ad(0)=c+5:sr(0)=c+6:volume=c+24
30 for reg=chiptochip+24:pokereg,0:next
40 poke ad(0),64+9:poke sr(0),240+0
50 poke volume,15
60 read f,dur:if f<0 then poke w(0),0:end
65 dur=dur*20
70 nh(1)=int(f/256):nl(1)=f-nh(1)*256:pokenh(0),nh(1):pokenl(0),nl(1)
80 poke w(0),32+l:rem add 1 for gate
90 for count=1 to dur:next count
100 poke w(0),32+1:rem turn off gate
110 for pause=1 to 50:next
120 goto 60
310 data 4820,8,6420,8,6420,12,6068,4,6420,8,8100,8,8100,8,7220,8,9637,8
320 data 9637,8,9637,12,8581,4,8100,8,7220,8,8100,16,4820,8,6420,8,6420,12
330 data 6068,4,6420,8,8100,8,8100,8,7220,8,9637,8,7220,8,7220,12,6068,4
340 data 6068,8,5396,8,4820,16
399 data -1,-1,-1