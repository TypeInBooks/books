*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        lda #$CA
        and #$9F
        sta $0334
        lda #$A2
        ora #$84
        eor $0334
        sta $0334
        rts