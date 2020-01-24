*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        ldx #0
        ldy #0
        lda #$A9
L40     iny
        beq L110
        cmp $EFFF,y
        bne L40
        inx
        cpx #4
        bne L40
L110    stx $0334
        rts
