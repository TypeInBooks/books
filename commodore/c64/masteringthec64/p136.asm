;1 FORA=0TO62:P0KE832+A,255:NEXT:POKE2042,13:P0KE53269,4
;10 SYS7168:GOTO10
;20 SYS7152
*=$0801
                byte $2c, $08, $01, $00, $81, $41, $b2, $30
                byte $a4, $36, $32, $3a, $97, $38, $33, $32
                byte $aa, $41, $2c, $32, $35, $35, $3a, $82
                byte $3a, $97, $32, $30, $34, $32, $2c, $31
                byte $33, $3a, $97, $35, $33, $32, $36, $39
                byte $2c, $34, $00, $3a, $08, $0a, $00, $9e
                byte $37, $31, $36, $38, $3a, $89, $31, $30
                byte $00, $44, $08, $14, $00, $9e, $37, $31
                byte $35, $32, $00, $00

*=$1BF0 ;7152
        
        jsr $1C00
        jmp $1BF0
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        jmp $1CA9
        lda $C5
        cmp #$40
        beq $1C1A
        cmp #$12
        beq $1C1B
        cmp #$0A
        beq $1C54
        cmp #$04
        beq $1C8D
        cmp #$03
        beq $1BFD
        cmp #$0D
        beq $1C93
        rts
        tay
        lda $D010
        and #$04
        cmp #$04
        beq $1C34
        ldx $D004
        cpx #$FF
        beq $1C43
        inx
        stx $D004
        tya
        jmp $1C16
        ldx $D004
        cpx #$3F
        beq $1C3F
        inx
        stx $D004
        tya
        jmp $1C16
        lda $D010
        ora #$04
        sta $D010
        ldx #$00
        stx $D004
        tya
        jmp $1C16
        tay
        lda $D010
        and #$04
        cmp #$04
        beq $1C6D
        ldx $D004
        cpx #$16
        beq $1C69
        dex
        stx $D004
        tya
        jmp $1C16
        ldx $D004
        cpx #$00
        beq $1C7C
        dex
        stx $d004
        tya
        jmp $1C16
        lda $D010
        and #$FB
        sta $D010
        ldx #$FF
        stx $D004
        tya
        jmp $1C16
        ldx $D005
        cpx #$2E
        beq $1CA5
        lda $D01E
        and #$04
        cmp #$04
        bne $1CA1
        tya
        jmp $1C16
        dex
        stx $D005
        tya
        jmp $1C16
        ldx $D005
        cpx #$ED
        beq $1CBD
        lda $D01E
        and #$04
        cmp #$04
        beq $1CBD
        inx
        stx $D005
        tya
        jmp $1C16

        