; Jacob Folderauer
; CMSC 313 HW8 ASM HELLO WORLD
; Hello World Program - asmtutor.com
; Compile with: nasm -f elf helloworld.asm
; Link with: (64 bit system require elf_i386 option): ld -m elf_i386 helloworld.o -o helloworld
; Run with: ./helloworld

SECTION .data
msg	db	'Hello World!', 0Ah	; Assign msg variable with your message string

SECTION .text
global _start

_start:
	
	mov	edx, 13	 ; Number of bytes to write - one for each letter plus 0Ah (line feed character)
	mov	ecx, msg ; move the memory address of our message string into ecx
	mov	ebx, 1	 ; write to the STDOUT file 
	mov	eax, 4	 ; invoke SYS_WRITE (kernel opcode 4)
	int	80h

	mov	ebx, 0 	 ; Return 0 status on exit (no errors)
	mov 	eax, 1	 ; Invoke SYS_EXIT (opcode 1)
	int	80h
