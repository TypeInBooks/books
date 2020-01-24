*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        lda #$03
        sta $0334
        lda #$00
loop    clc
        adc #$07
        dec $0334
        bne loop
        sta $0335
        rts