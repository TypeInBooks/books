*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        lda #$0F
        ldx #$FF
L3      sta $0400,x
        dex
        bne L3
        lda #$10
        sta $D018
        lda #$3B
        sta $D011
        ldy #$00
        sty $CC00
L16     sty $CC01
        ldx $CD00,y
        lda #$F8
L22     clc
        adc #$08
        dex
        cpx #$FF
        bne L22
        tay
        ldx $CC00
        lda #$08
        sta $CC02
L40     lda $CE00,y
        iny
        sta $0400,x
        inx
        dec $CC02
        bne L40
        stx $CC00
        ldy $CC01
        iny
        cpy #$06
        bne L16
        rts