; joystick - button read routine

; author - bill hindorff

; 10 SYS (49664)

*=$0801

        BYTE    $0E, $08, $0A, $00, $9E, $20, $28,  $34, $39, $36, $36, $34, $29, $00, $00, $00

dx = $c110
dy = $c111

* = $c200

djrr    lda $dc00     ; get input from port a only
djrrb   ldy #0        ; this routine reads and decodes the
        ldx #0        ; joystick/firebutton input data in
        lsr a         ; the accumulator. this least significant
        bcs djr0      ; 5 bits contain the switch closure
        dey           ; information. if a switch is closed then it
djr0    lsr a         ; produces a zero bit. if a switch is open then
        bcs djr1      ; it produces a one bit. The joystick dir-
        iny           ; ections are right, left, forward, backward
djr1    lsr a         ; bit3=right, bit2=left, bit1=backward,
        bcs djr2      ; bit0=forward and bit4=fire button.
        dex           ; at rts time dx and dy contain 2's compliment
djr2    lsr a         ; direction numbers i.e. $ff=-1, $00=0, $01=1.
        bcs djr3      ; dx=1 (move right), dx=-1 (move left),
        inx           ; dx=0 (no x change). dy=-1 (move up screen),
djr3    lsr a         ; dy=0 (move down screen), dy=0 (no y change).
        stx dx        ; the forward joystick position corresponds
        sty dy        ; to move up the screen and the backward
        rts           ; position to move down screen.
                      ;
                      ; at rts time the carry flag contains the fire button state.
                      ; if c=1 then button not pressed. if c=0 then pressed.
                      ;
