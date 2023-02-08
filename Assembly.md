# Assembly


The programm structure is the following:
- Library inclusion and symbol definition
- Setting directives: Sets general parameters of the $\mu$C
- Variable definition
- Instructions

## Instruction types

- According to their operation
	- Byte oriented: Arithmetic, logic, register or variable displacement
	- Bit oriented: Operate over a single bit
	- Control operation: Operate over CPU register but the W
	- Constant's operation: Use a constant for their execution
	- Table handling operations: Allows reading and writing of the FLASH memory
	- Extended set operation: Including for performing special operations

- According to the direction mode:
	- Inherent: Doesn't requires operands for the execution
	- Inmediat: Operates over constants using logic-arithmetic operations
	- Direct: Uses a register or a variable as operand
	- Relative: Jumps to a different code line of the programm (max jump: 128 lines up, 127 lines down)
	- Extended: Jumps to any memory direction
	- Indirect: Use pointers for modify variables and registers

- According to the storage taken in memory
	- 4 bytes: MOVFF, CALL, GOTO, MOVSF, MOVSS
	- 2 bytes: All the rest

- According to the execution time
	- 1 bus cycle: 2 bytes instructions
	- 2 bus cycles: 4 bytes instructions. Including inconditional jumps  and conditional ones (when a 2 bytes instruction is jumped)
	- 3 bus cycles: Occurs in conditional jumps when a 4 bytes instruction is jumped


## Pointers

Point to the RAM memory. The pointer registers are FSR0, FSR1, FSR2.

Each pointer has 5 access modes for the use of the indirect mode:
- INDF: Acces to the memory position but the pointer is not modified
- POSTINC: Acces to the memory position and then the pointer position is incremented
- POSTDEC: Acces to the memory position and then the pointer position is decremented
- PREINC: Before accessing the memory position, the pointer's position is incremented
- PLUSW: The pointer's position is incremented the actual value on the W register

## MPLAB X IDE annotations
 
In the $\mu$C's library ``C:\Program Files (x86)\Microchip\MPLABX\v3.30\mpasmx\p18f4550.inc`` the register directions are found

Troubleshooting relocalizator assembler error: Proyect properties -> mpasm (Global options) -> Build in absolute mode

It's possible to visualize the W register's status in the debugger window just by naming a variable WREG. Same for ports (e.g: RB4)

Pin visualization: Window -> Simulator -> IO Pins

Generate an stimulus in the simulation of a digital signal: Window -> Simulator -> Stimulus

Measure time of the execution of instructions: Window -> Debugging -> Stop watch

When debugging, it's possible to go for the next instruction with the F7 key


## Register handling

The following keywords are used in assembly for handling the $\mu$C's registers

- TRISX: Set the I/O status (1 -> Entrada)
- LATX: Modify outputs
- PORTX: Input query

Some recommendations:

Port B - Analog signals
Port C - Communications & Control
Port E - Aditional functions









El perro guardián es un tipo de protección ante códigos no deseados por el momento. Cuando el microcontrolador se encuentra en condiciones críticas, se reinicia.

Es un temporizador que corre desde cero, cuando llega hasta cierto límite (desborde), se reinicia el micro (2 minutos por defecto). Funciona con un oscilador RC propio.

Tras la sentencia end, se vuelve a repetir el código desde la primera instrucción. Se reinicia el micro de manera abrupta

Ajustar puertos como:

Entradas -> bsf <PUERTO>

Salidas -> clrf <PUERTO>

EQU: Memoria de datos

ORG: Memoria de instrucciones