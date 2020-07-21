; 10 SYS (49152)

*=$0801

                byte $0E, $08, $0A, $00, $9E, $20, $28, $34
                byte $39, $31, $35, $32, $29, $00, $00, $00

*=$C000

        sei
        lda #$10
        sta $0314
        lda #$C0
        sta $0315
        cli
        rts
        nop
        nop
        nop
        pha
        txa
        pha
        tya
        pha
        lda $C5
        cmp $FB
        beq $C06C
        sta $FB
        cmp #$03
        bne $C029
        lda #$30
        sta $C100
        jmp $C04A
        cmp #$04
        bne $C035
        lda #$00
        sta $C100
        jmp $C04A
        cmp #$05
        bne $C041
        lda #$10
        sta $C100
        jmp $C04A
        cmp #$06
        bne $C06C
        lda #$20
        sta $C100
        lda $028D
        cmp #$01
        bne $C059
        lda $C100
        adc #$08
        sta $C100
        ldx #$00
        ldy $C100
        lda $C101,y
        sta $0277,x
        inx
        iny
        cpx #$08
        bne $C05E
        stx $C6
        pla
        tay
        pla
        tax
        pla
        jmp $EA31

*=$C101
        byte 04
        text "list{return}{ct d*3}"
        text "run{return}{ct d*4}"
        text "print{ct d*3}"
        text "then{ct d*4}"
        text "load{ct d*4}"
        text "save{ct d*4}"
        text "verify{ct d*2}"
        text "goto{ct d*4}"
        