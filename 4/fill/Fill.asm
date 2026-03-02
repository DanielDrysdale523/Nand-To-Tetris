// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

	//// Replace this comment with your code.

  @starting // starting point
  M=0 // place at upper left corner

(START)
  @KBD
  D=M 
  @WHITE
  D				;JEQ
  @BLACK
  0				;JMP

(WHITE)
  @starting
  D=M 
  @START
  D				;JLT
  @starting
  D=M
  @SCREEN
  A=A+D
  M=0
  @starting
  M=M-1 
  @START
  0				;JMP

(BLACK)
  @starting
  D=M
  @8192 
  D=D-A
  @START
  D				;JGE
  @starting
  D=M
  @SCREEN
  A=A+D 
  M=-1 
  @starting
  M=M+1 
  @START
  0				;JMP

(END)
  @END
  0				;JMP
