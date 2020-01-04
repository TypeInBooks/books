800 s=2049:input " start of basic";s
802 e=40960:input"   end of basic";e
804 sc=1024:input"start of screen";sc
999 vb=int(sc/16384):vb=(not vb) and 3
1000 poke 648,sc/256:poke 53272,(peek(53272) and 15) or ((sc/64) and 240)
1002 poke 56576,(peek(56576) and 252) or vb
1010 poke 55,e-int(e/256)*256
1015 poke 56,e/256
1020 poke 43,s-int(s/256)*256
1030 poke 44,s/256
1040 poke s-1,0
1050 print "{clear}"