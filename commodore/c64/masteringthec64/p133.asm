; 10 SYS7168
*=$0801
                byte $0B, $08, $0A, $00, $9E, $37
                byte $31, $36, $38, $00, $00, $00

*=$1C00 ;7168

        lda #$98
        sta $D016
        lda #$08
        sta $0286
        lda #$02
        sta $D022
        lda #$01
        sta $D023
        rts