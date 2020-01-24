*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        ldx #0
loop    lda $04C8,x
        sta $04F0,x
        inx
        cpx #28
        bne loop
        rts