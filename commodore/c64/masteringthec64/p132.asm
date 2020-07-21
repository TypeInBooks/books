; 10 SYS7168
*=$0801
                byte $0B, $08, $0A, $00, $9E, $37
                byte $31, $36, $38, $00, $00, $00

*=$1C00 ;7168

        sei
        lda $01
        and #$FB
        sta $01
        lda #$00
        lda $D000,x
        sta $2000,x
        inx
        bne $1C09
        lda $D0FF,x
        sta $20FF,x
        inx
        bne $1C12
        lda $01
        ora #$04
        sta $01
        cli
        lda #$18
        sta $D018
        rts