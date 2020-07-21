; 10 SYS (49152)
; not working

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28, $34, $39, $31, $35, $32, $29, $00, $00, $00

        lda #$93
        jsr $ffd2
        lda #$04
        sta $fe
        lda #$d8
        sta $fc
        lda #$81
        sta $fd
        sta $fb
        ldx #$14
loop2   ldy #$19
loop1   lda #$2b
        sta ($fd),y
        lda #$01
        sta ($fb),y
        dey
        bne loop1
        lda $fd
        clc
        adc #$28
        sta $fd
        bcc here
        inc $fe
here    lda $fb
        clc
        adc #$28
        sta $fb
        bcc there
        inc $fc
there   dex
        bne loop2
        rts