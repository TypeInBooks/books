; 10 SYS7168
*=$0801
                byte $0B, $08, $0A, $00, $9E, $37
                byte $31, $36, $38, $00, $00, $00

*=$1340 ;moved from $0340     
                byte 75, 34, 126, 38, 52, 43, 198, 45
                byte 97, 51, 172, 57, 188, 64, 149, 68
                byte 00, 00

*=$1C00 ;7168

        lda #$21
        sta $D404
        lda #$80
        sta $D405
        sta $D406
        lda #$0A
        sta $D418
        ldx #$00
        lda $133C,x
        sta $D400
        lda $133D,x
        sta $D401
        jsr $1C2C
        inx
        inx
        cpx #$14
        bne $1C14
        jmp $1C12
        txa
        pha
        ldx #$00
        ldy #$00
        iny
        bne $1C32
        inx
        bne $1C32
        pla
        tax
        rts
