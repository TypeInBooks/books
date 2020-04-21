10 rem ** spellbound **
20 print"{clear}":poke53280,2:poke53281,15
30 b$="{space*8}":fp=1
40 input"{blue}players (2-6)";np$
50 np=val(np$):ifnp<2ornp>6then20
60 print"{clear}"
70 forj=0to3
80 printtab(8+7*j)j+1;
90 next
100 ln=6:gosub1000
110 printtab(18)"pool"
120 ln=11:gosub1000
130 print"{red}";tab(6)"ready?{space*2}"
140 ln=17:gosub1000
150 printtab(6)"{brown}scores:"
160 ln=19
170 gosub1000
180 forj=0tonp-1
190 printtab(8+4*j)j+1;
200 next
210 gosub2000
220 geta$:ifa$=""then220
230 forc=1to4
240 gosub3000
250 next:c=0
260 ti$="000000":t$="":ng=0:forj=1to4:f(j)=1:next
270 ln=11:gosub1000
280 print"{reverse off}{gray}";tab(32)str$(int(ti/60));" ";
290 geta$
300 ifa$=chr$(136)orti>1200thenc=c+1:gosub3000:b=b+1:goto260
310 ifa$<>" "then270
320 ln=11:gosub1000
330 print"{purple}";tab(6)"groups?{space*4}{blue}";
340 geta$
350 ifa$=" "andng>1then410
360 ifa$="p"andfp=0ora$="1"andf(1)=1ora$="2"andf(2)=1then390
370 ifa$="3"andf(3)=1ora$="4"andf(4)=1then390
380 goto340
390 ifa$="p"thent$=t$+p$:fp=1:ng=ng+1:pb=10:print"p";:goto340
400 t$=t$+l$(val(a$)):f(val(a$))=0:ng=ng+1:printa$;:goto340
410 ln=14:gosub1000
420 print"{red}{reverse on}";tab(13)t$
430 ln=11:gosub1000
440 printtab(6)"ok? (y/n)";b$
450 geta$:ifa$=""then450
460 ln=14:gosub1000:printtab(13)b$;b$
470 ifa$="y"then500
480 ifa$="n"then650
490 goto450
500 ln=11:gosub1000:printtab(6)"who?";b$
510 geta$:ifa$=""then510
520 ifval(a$)<1orval(a$)>npthen510
530 s(val(a$))=s(val(a$))+len(t$)+pb+b:b=0
540 gosub2000
550 forj=1tonp
560 ifs(j)=>100thenwp=j
570 next
580 iffp=1thenln=8:gosub1000:printtab(19)"{space*2}"
590 ln=11:gosub1000:print"{red}";tab(6)"ready?{space*4}";
600 ifwp=0then230
610 ln=11:gosub1000
620 printtab(6)"player";wp;"wins"
630 geta$:ifa$=""then630
640 forj=1to4:s(j)=0:next
650 p$=left$(t$,2)
660 ln=8:gosub1000
670 print"{black}{reverse on}";tab(19)p$:fp=0:pb=0
680 ln=11:gosub1000:print"{red}";tab(6)"ready?{space*4}";
690 goto230
1000 print"{home}";
1010 forj=1toln
1020 print"{down}";
1030 next
1040 return
2000 ln=21:gosub1000
2010 forj=0tonp-1
2020 sc$=str$(s(j+1))
2030 print"";tab(8+4*j)sc$;
2040 next
2050 return
3000 n=int(rnd(1)*105)+1:ifc=5thenc=1
3010 fork=1ton
3020 readx$
3030 next
3040 l$(c)=x$
3050 ln=3:gosub1000
3060 print"{black}{reverse on}";tab(8+7*(c-1))"{space*3}{left*3}";l$(c);
3070 restore
3080 return
4000 data a,a,ab,ad,an,ar,at,and,ave,b,ba,be,bl,br,c,ca,ce,ch,d,da,de,do,e,e,e
4010 data e,ea,ed,ee,en,er,ell,ent,est,f,fa,fe,fo,g,ge,gr,h,ha,he,hi,ho
4020 data i,i,in,ing,ish,ive,j,l,la,ld,le,li,ll,lo,m,ma,me,mi,mo
4030 data n,na,nd,ne,no,o,o,ot,ond,p,pa,pe,pr,ple,per,r,ra,re,rm,rt,rat,rch,s
4040 data sa,se,so,sl,st,sh,t,t,ta,te,u,v,ve,w,wa,wo,y
