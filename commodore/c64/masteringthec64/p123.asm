; 10 SYS7168
*=$0801
                byte $0B, $08, $0A, $00, $9E, $37
                byte $31, $36, $38, $00, $00, $00

*=$1C00 ;7168

        ldx #$00
        lda #$51
        sta $0400,x
        lda #$01
        sta $D800,x
        lda #$20
        sta $03FF,x
        inx
        cpx #$28
        bne $1C02
        rts