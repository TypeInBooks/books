*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000

        lda 252
        sta 1024
        lda #5
        sta 1025
        lda #12
        sta 1026
        sta 1027
        lda #15
        sta 1028
        lda #23
        sta 1029
        rts