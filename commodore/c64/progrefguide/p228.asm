; 10 SYS (5120)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $35, $31, $32, $30, $29, $00, $00, $00

*=$1400

        lda #$48
        jsr $ffd2
        lda #$49
        jsr $ffd2
        lda #$0d
        jsr $ffd2

loop    jmp loop
