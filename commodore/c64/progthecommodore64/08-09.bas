1 rem using non-maskable interrupts with basic
2 rem to provide completely regular timing
3 rem e.g. to play music notes display the
4 rem time, display game scores etc.
6 rem this version uses both timers of cia#2,
7 rem so delays can vary from few millionths
8 rem of second up to an hour or more.
10 rem this demo increments screen color fast,
11 rem producing normally impossible stripes
100 for j=49152 to 49162:read x:poke j,x:next
110 poke 792,0:poke 793,192:rem nmi vector to c000
120 poke 56589,127:rem all nmis off
130 poke 56589,130:rem timer nmi enabled
140 poke 56580,99:poke 56581,1:rem set timer
149 rem 16+1 in timer (1) sets latch, (2) starts timer a:-
150 poke 56590,17:rem start timer
160 poke 56582,2:poke 56583,0:rem set timer
168 rem 64+16+1 in timer (1) counts timer a,
169 rem (2) sets latch, (3) starts timer b:-:
170 poke 56591,81:rem start timer
180 data 72,138,72,152,72,238,33,208,76,81,254
181 rem pha/txa/pha/tya/pha/inc d021/jmp fe51
182 rem or try eg. 0,4 in place of 33,208
183 rem to increment top left screen character