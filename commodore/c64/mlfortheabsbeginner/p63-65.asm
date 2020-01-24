*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        jsr p63
        jsr p64
        jsr p65
        rts

p63
        lda #$FE
        and $DC0E
        sta $DC0E
        lda #$FB
        and $01
        sta $01
        ldx #$00
L80     lda $D000,x
        sta $CF00,x
        lda $D800,x
        sta $CE00,x
        inx
        bne L80
        lda #$04
        ora $01
        sta $01
        lda #$01
        ora $DC0E
        sta $DC0E
        rts

p64
        lda #$08
        sta $CD00
        lda #$05
        sta $CD01
        lda #$0C
        sta $CD02
        sta $CD03
        lda #$0F
        sta $CD04
        rts

p65
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