*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        
        lda #$03
        clc
        adc #$05
        sta $0334

        lda #$27
        clc
        adc #$F4
        sta $0335
        
        lda #$03
        sec
        adc #$05
        sta $0336

        lda #$27
        clc
        adc #$F4
        lda #$03
        adc #$14
        sta $0337

        rts