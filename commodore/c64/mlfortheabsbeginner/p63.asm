*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28, $34
        byte    $39, $31, $35, $32, $29, $00, $00, $00

*=$C000
        lda #$FE
        and $DC0E
        sta $DC0E
        lda #$FB
        and $01
        sta $01
        ldx #$00
L80     lda $D000,x
        sta $CF00,x
        lda $D800,x
        sta $CE00,x
        inx
        bne L80
        lda #$04
        ora $01
        sta $01
        lda #$01
        ora $DC0E
        sta $DC0E
        rts
        