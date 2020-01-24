*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000

        lda #$1B
        sta $0334
        lda #$09
        sta $0335
        lda #$00
        ror $0335
L70     rol $0335
        lsr $0334
        bcc L120
        clc
        adc $0335
L120    bne L70
        sta $0336
        rts