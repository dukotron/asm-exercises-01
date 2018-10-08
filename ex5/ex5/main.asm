;
; ex5.asm
;
; Created: 08/10/2018 2:39:31 PM
; Author : milic
;

	ldi r16, 34
	ldi r17, 55
	ldi r18, 12
	ldi r19, 3
	ldi r20, 33

	sub r17, r18
	mul r19, r20
	add r17, r0

	add r16, r17
	nop