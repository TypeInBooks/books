*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000

        lda #$01
        sta $D015
        sta $07F8
        lda #$32
        sta $D000
        sta $D001
L70     jsr L110
        cmp #$FA
        bne L70
        rts

L110    inc $D001
        lda $D000
        jsr L170
        clc
        adc #$04
        sta $D000
        rts

L170    cmp #$50
        bcc L195
        inc $D001
L195    rts
