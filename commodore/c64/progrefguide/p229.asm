; 10 SYS (5120)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $35, $31, $32, $30, $29, $00, $00, $00

*=$1400

        ldx #$41
        txa
        jsr $ffd2
        inx
        cpx #$5b
        bne $1402

loop    jmp loop
