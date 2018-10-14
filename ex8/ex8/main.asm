;
; ex8.asm
;
; Created: 14/10/2018 8:51:55 PM
; Author : milic
;

; The Arduino's CPU is running at 16 MHz = 16000000 cc/s
; So, high school physics formula, T = 1 / f = 0.0000000625s
; So, to get half a second delay we need 0.5 = 0.0000000625 * X -> X = 8 * 10^6 cycles
; So we use a nested loop (in this case triple nested) to get up to that number of cycles

SETUP:
	ldi r16, 0xff		; load 1111 1111 into r16
	out ddra, r16		; set the port a's bits to output

	ldi r16, (0<<pb0)	; load 0000 0001 into r16
	ldi r17, (1<<pb0)	; load 0000 0001 into r17
LED_TOGGLE:
	eor r16, r17		; toggle r16 into the opposite of whatever it was
	out porta, r16		; set the port a's first pin to high
SETUP_DELAY:
    ldi r20, 128		; load 128 into r20
	ldi r19, 150		; load 150 into r19
	ldi r18, 41			; load 41 into r18
DELAY: 
	dec  r20			; decrement r20 by 1
    brne DELAY			; check if the zero flag is active
    dec  r19
    brne DELAY
    dec  r18
    brne DELAY
LED_OFF:
	rjmp LED_TOGGLE		; jump to LED_TOGGLE
