10 poke 56334,peek(56334) and 254
20 poke 1,peek(1) and 251
30 for a=0 to 512 step 2:poke 8192+a,peek(53248+a/2):poke 8193+a,peek(53248+a/2)
40 next
50 poke 56334,peek(56334) or 1
60 poke 1,peek(1) or 4
70 poke 53272,24
80 print"{clear}@{left}b{left}d{left}f{left}h{left}j{left}l{left}n{left}p{left}r{left}t{left}v{left}x{left}z"
90 print"a{left}c{left}e{left}g{left}i{left}k{left}m{left}o{left}q{left}s{left}u{left}w{left}y{left}[ "
