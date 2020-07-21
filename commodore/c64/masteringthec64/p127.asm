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
        inx
        bne $1C02
        lda #$51
        sta $04FF,x
        lda #$01
        sta $D8FF,x
        inx
        bne $1C0F
        lda #$51
        sta $05FE,x
        lda #$01
        sta $D95E,x
        inx
        bne $1C1C
        lda #$51
        sta $06FD,x
        lda #$01
        sta $DAFD,x
        inx
        bne $1C29
        rts
