;
; ex7.asm
;
; Created: 14/10/2018 4:53:20 PM
; Author : milic
;

	ldi r16, 0xff		; load the bit pattern 1111 1111 into r16
	out ddra, r16		; write the bits to the port a's data direction register (this sets the bits to input 0 or output 1)

	ldi r16, (1<<pb0)	; write the bit pattern 0000 0001 to r16
	out porta, r16		; write the pattern to port a's output control register