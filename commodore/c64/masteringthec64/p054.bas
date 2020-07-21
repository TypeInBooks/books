5 wf=17
10 poke 54296,15:poke 54277,8:poke 54278,35:rem vol and adsr
15 for x=0 to 2
20 poke 54276,wf:rem waveform
22 if wf=17 then wf=33:goto 30:rem change waveforms
24 if wf=33 then wf=129:rem change waveforms
30 for a=0 to 8:readl,h:rem note data
40 poke 54272,l:poke 54273,h:rem make note
50 for r=1 to 300:next r:rem pause
60 next a:rem go back 8, do next note
65 restore:next x
70 data 75, 34, 126, 38, 52, 43, 198, 45, 97, 51, 172, 57, 188, 64, 149, 68, 0, 0