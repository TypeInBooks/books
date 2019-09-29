; four paddle read routine (can also be used for two)
;
; author - bill hindorff

; 10 SYS (49152)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $39, $31, $35, $32, $29, $00, $00, $00

porta=$dc00
ciddra=$dc02
sid=$d400

*=$c100

buffer  *=*+1
pdlx    *=*+2
pdly    *=*+2
btna    *=*+1
btnb    *=*+1

* = $c000

pdlrd   ldx #1        ; for four paddles or two analog joysticks
pdlrd0                ; entry point for one pair (condition x 1st)
        sei
        lda ciddra    ; get current value of ddr
        sta buffer    ; save it away
        lda #$c0
        sta ciddra    ; set port a for input
        lda #$80
pdlrd1
        sta porta     ; address a pair of paddles
        ldy #$80      ; wait a while
pdlrd2
        nop
        dey
        bpl pdlrd2
        lda sid+25    ; get x value
        sta pdlx,x
        lda sid+26
        sta pdly,x    ; get y value
        lda porta     ; time to read paddle fire buttons
        ora #80       ; make it the same as other pair
        sta btna      ; bit 2 is pdl x, bit 3 is pdl y
        lda #$40
        dex           ; all pairs done?
        bpl pdlrd1    ; no
        lda buffer
        sta ciddra    ; restore previous value of ddr
        lda porta+1   ; for 2nd pair -
        sta btnb      ; bit 2 is pdl x, bit 3 is pdl y
        cli
        rts
