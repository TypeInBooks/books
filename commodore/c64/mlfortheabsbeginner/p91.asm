*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000

        jsr L40
        inc $D020
        rts
L40     pla
        tax
        pla
        stx $0334
        sta $0335
        pha
        txa
        pha
        rts
