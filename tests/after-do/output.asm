	.data
L0 : 	.WORD 0
L1 : 	.WORD 0
	.text
	ADDI R1 R0 #0
	STORE R1 L0
	ADDI R2 R0 #0
	STORE R2 L1
	BT L2
L3 : 	ADDI R1 R0 #5
	STORE R1 L0
	ADDI R2 R0 #7
	STORE R2 L1
	BT L4
L2 : 	LOAD R1 L0
	SUBI R3 R1 #10
	STORE R1 L0
	SLT R3 0
	ANDB R3 R3 R3
	BEQ L6
	LOAD R1 L0
	ADDI R3 R1 #1
	ADD R1 R0 R3
	STORE R1 L0
	BT L2
L6 : 	ADDI R2 R0 #1
	STORE R2 L1
	BT L3
L4 : 	LOAD R1 L0
	WRITE R1 0
	STORE R1 L0
	LOAD R2 L1
	WRITE R2 0
	STORE R2 L1
	HALT
