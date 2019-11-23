40010 open 4,4:cmd 4
40100 for j=0 to 24:for k=0 to 39:x=peek(1024+j*40+k)
40110 if x>128 then x=x-128:print chr$(18);
40120 if x<32 then print chr$(x+64);
40130 if x>31 and x<64 then print chr$(x);
40140 if x>63 and x<96 then print chr$(x+32);
40150 if x>95 and x<128 then print chr$(x+64);
40160 print chr$(146);
40170 next:print:next:print#4:close 4:end