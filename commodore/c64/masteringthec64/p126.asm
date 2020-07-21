; 10 SYS7168
*=$0801
                byte $0B, $08, $0A, $00, $9E, $37
                byte $31, $36, $38, $00, $00, $00

*=$1C00 ;7168

        ldx #$00
        lda #$51
        sta $0400,x
        lda #$20
        sta $03FF,x
        inx
        bne $1C02
        ldy $1C06
        iny
        sty $1C06
        ldy $1C0B
        iny
        sty $1C0B
        cpy #$07
        bne $1C02
        rts