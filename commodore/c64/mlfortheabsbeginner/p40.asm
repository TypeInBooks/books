*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        lda #$01
        sta $D015
        sta $D027
        sta $2040 ;07f8
        lda #$32
        sta $D000
        sta $D001
        lda $D000
        adc #$04
        sta $D000
        adc #$04
        sta $D000
        adc #$04
        sta $D000
        adc #$04
        sta $D000
        adc #$04
        sta $D000
        rts