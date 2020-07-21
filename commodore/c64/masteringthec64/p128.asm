; 10 SYS7168
; 20 SYS7172:GOTO20
*=$0801
                byte $0b, $08, $0a, $00, $9e, $37, $31, $36
                byte $38, $00, $19, $08, $14, $00, $9e, $37
                byte $31, $37, $32, $3a, $89, $32, $30, $00
                byte $00, $00

*=$1C00 ;7168

        ldx #$14
        ldy #$14
        ;lda $00C5
        byte $AD, $C5, $00
        cmp #$24
        beq $1C10
        cmp #$0C
        beq $1C18
        rts
        cpx #$27
        beq $1C0F
        inx
        jmp $1C23
        cpx #$00
        beq $1C0F
        dex
        jmp $1C23
        jmp $1C0F
        lda #$01
        sta $07C0,x
        sta $DBC0,x
        dex
        lda #$20
        sta $07C0,x
        inx
        inx
        sta $07C0,x
        dex
        jmp $1C0F