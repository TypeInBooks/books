10 s=54272
20 for l=0 to 24:poke s+l,0:next
30 poke s+3,8
40 poke s+5,41:poke s+6,89
50 poke s+14,117
60 poke s+18,16
70 poke s+24,143
80 read fr,dr
90 if fr=0 then end
100 poke s+4,65
110 for t=1 to dr*2
120 fq=fr+peek(s+27)/2
130 hf=int(fq/256):lf=fq and 255
140 poke s+0,lf:poke s+1,hf
150 next
160 poke s+4,64
170 goto 80
500 data 4817,2,5103,2,5407,2
510 data 8583,4,5407,2,8583,4
520 data 5407,4,8583,12,9634,2
530 data 10207,2,10814,2,8583,2
540 data 9634,4,10814,2,8583,2
550 data 9634,4,8583,12
560 data 0,0
