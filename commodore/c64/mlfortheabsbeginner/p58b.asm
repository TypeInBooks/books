*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        ldx #0
        ldy #$FF
L30     iny
        lda $F000,y
        cmp #$38
        bcs L90
        sta $C200,x
        inx
L90     cpy #$FF
        bne L30
        stx $0334
        rts