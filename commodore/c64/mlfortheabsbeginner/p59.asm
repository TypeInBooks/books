*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        ldy #0
        ldx #$FF
        inx
        lda $00,x
        cmp #$38
        bcs L90
        sta $C200,y
        iny
L90     cpx #$FF
        sty $0334
        rts