; 10 SYS7168
*=$0801
                byte $0B, $08, $0A, $00, $9E, $37
                byte $31, $36, $38, $00, $00, $00

*=$1C00 ;7168

        lda #$21
        sta $D404
        lda #$80
        sta $D405
        sta $D406
        lda #$0A
        sta $D418
        ldx #$E6
        sta $D400
        stx $D401
        dex
        jsr $1C30
        cpx #$64
        bne $1C17
        lda #$00
        sta $D400
        sta $D401
        jsr $1C30
        jmp $1C12
        ldy #$00
        iny
        bne $1C32
        rts