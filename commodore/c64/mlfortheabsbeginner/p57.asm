*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        ldx #0
        ldy #0
        lda #$A9
L40     cmp $F000,y
        beq L90
L60     iny
        bne L40
        stx $0334
        rts
L90     inx
        cpx #4
        bne L60
        stx $0334
        rts