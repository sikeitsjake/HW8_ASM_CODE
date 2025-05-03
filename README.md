Author: Jacob Folderauer
Affiliation: UMBC CMSC 313 Section 0830
Professor: Dr. Kidd
Description: This repository contains the NASM code to run a Hello World program on the UMBC GL Server.
Compilation: Follow the following steps in order to link, compile, and execute the program:
  1. nasm -f elf32 -g -F dwarf -o helloworld.o helloworld.asm
  2. ld -m elf_i386 -o helloworld helloworld.o
  3. ./helloworld

Assignment (Description of nasm and ld parameters): 

The **nasm** command has the following parameters:
  1. -f elf32: Which sets the format of the compilation to the ELF32 format which is common on Linux/Unix systems.
  2. -g: This enables the gdb debugger for the program. Gives debug information.
  3. -F dwarf: This specifies the format for the debugging information. DWARF is just a common format for the gdb debugger.
  4. -o helloworld.o: Creates the output file of that will be the result of the compilation.
  5. helloworld.asm: This is the input file that is being compiled.

The **ld** command has the following parameters:
  1. -m elf_i386: This specifies the target architecture. This specifically produces a 32-bit ELF formatted output for x86 architecture. 
  2. helloworld.o: This is the input file that is being linked to the output executable.
  3. -o helloworld: Creates the executable file.
