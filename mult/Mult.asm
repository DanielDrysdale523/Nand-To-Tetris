// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

	//D = RAM[2]
	@R2
	M=0
	
	(START)
	@R1
	D=M

	//if r2 = 0, branch to program end   x
	@END
	D			;JEQ
	
	//load r3
	@R2
	D=M
	@R0
	D=D+M
	@R2
	M=D

	//load r2
	@R1
	M=M-1
	//branch to x
	@START
	0			;JMP

	(END)
	@END
	0			;JMP
