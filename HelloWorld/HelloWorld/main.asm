;
; HelloWorld.asm
;
; Created: 3/7/2018 9:21:47 PM
; Author : chfs
;

                            ; SETUP
    ldi r16, 0xff           ; load the bit pattern 1111 1111 into r16
    out ddrb, r16           ; write the bit pattern to port b's data direction register

                            ; MAIN
    ldi r16, (1<<pb7)       ; write the bit pattern 1000 0000 to r16
    out portb, r16          ; write the pattern to port b's output control register
