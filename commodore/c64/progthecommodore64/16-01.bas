1 rem returns p=-41 to +41
10000 pp=peek(56320)
10010 p=((ppand4)=0)-((ppand8)=0)+40*((ppand1)=0)-40*((ppand2)=0)
10020 return