*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000

        lda #$4C
        sta $CFF0
        lda #$49
        sta $CFF1
        lda #$53
        sta $CFF2
        lda #$54
        sta $CFF3
        lda #$0D
        sta $CFF4
        lda #$00
        sta $CFF5
        sei
        lda #$2B
        sta $0314
        lda #$C0
        sta $0315
        cli
        rts

        jsr $FF9F
        ldx $C6
        beq L90
        dex
        lda $0277,x
        cmp #$85
        bne L90
        ldy #$FF
L78     iny
        inx
        lda $CFF0,y
        sta $0277,x
        bne L78
        stx $C6
L90     jmp $EA31