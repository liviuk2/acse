	.data
L0 : 	.WORD 0
L1 : 	.WORD 0
	.text
	READ R1 0
	READ R2 0
	DIV R3 R1 R2
	MUL R4 R3 R2
	STORE R2 L1
	SUB R2 R1 R4
	STORE R1 L0
	WRITE R2 0
	HALT