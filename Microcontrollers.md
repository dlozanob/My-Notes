# Microcontrollers

The most important companies are:

- Microchip
- Motorola
- Texas Instruments
- ST
- Atmel

We'll study the Microchip's $\mu$C PIC18F4550.
Uses a PICKITT3/PICKITT2

PIC stands for Peripheral Interface Controller. Developed in the 70's.


## PIC18F4550's features

Harvard architecture with a RISC instruction set. 75 standard and 8 extended set instructions.

- 8 bits
- Set of 77 instructions
- Flash memory: 32 kb
- SRAM: 2kb 
- EEPROM (Electrically Erasable Programmable Memory): 256 bytes
- I/O pins: 34
- Analogous pins: 13
- RS232, SPI, IIC, Paralell and USB 2.0 Device ports
- 3 timers of 16 bits and one of 8 bits with two PWM channels
- Interruption sources: 21
- Reset sources: 7
- RAM: 4 kb
- Input power range: -0.3 - 7.5 V
- Vdd pin input current: 250 mA
- Digital pins: 34


### Ports distribution

There are 5 port groups: A, B, C, D, E. With a total of 34 pins.

The indicator of a single pin takes the nomenclature: R X N. Where X is the port group and N is the pin number. Example: RA2.

31 of these can be digital outputs.

### Clock sources

- Internal oscillator
- External oscillator
- Crystal





## Digital microprocessors & architectures

The processor pretends to emulate a human's brain. It's composed by:

- Arithmetic Logic Unit (ALU): Executes simultaneous instructions in order to complete a routine
- Control Unit (CU): Operation order of the instructions executed by the ALU, general control and data flow. It's a sequential logic device.

The microprocessor uses transistors in the $\mu$m's scale.

A microcontroller requires 3 functional units: _microprocessor_, _memory_ block (RAM & ROM) and a set of _I/O ports_. Also requires input power and a clock source.

Main $\mu$controllers' architecture:

- Harvard: Created by a Harvard's research team
	- Advantages: Fater and flexible

- Von Neumann: Created by a Princetown's research team where John Von Neumann participated
	- Advantages: Takes less storage and less power drain

Any microcontroller has an architecture and a set of instructions, the latter may be:

- RISC: Faster execution and learning
- CISC: Performs routines with a lower number of instructions

Some examples of $\mu$controllers implementations:

- $\mu$C PIC: Harvard RISC
- $\mu$C HC08: Von Neumann CISC
- $\mu$C MSP430: Von Neumann RISC


## Instructions basics

Any instruction requires 4 clock edges to be completely performed:

- Read the instruction
- Debug the instruction
- Execute the instruction
- Output the result

A bus cycle's period is 4 times the period of the source clock.

Any ALU's instruction is represented by an operation binary code. Each of them has an associated mnemonic.


## CPU registers and pointers

- Work register (W): 8bits. Temporal memory space for handling variables while the execution of the programm
- Programm Counter (PC): 21 bits. Determines the instruction to be executed at every instant. Increments by 2 and 4 per 2 and 4 bytes instruction respectively.
- Direct Pointing Registers (FSR0, FSR1, FSR2): 12 bits each of them
- Stack Pointer (SP): 5bits
- Bank Selection Register (BSR): Fast access storage for variables
- Programm Condition Register (STATUS): 8bits


### STATUS register bits

Or STATUS flags (pg. 73). Shows the ALU's arithmetic status. Depend on the last executed instruction

- N (Negative bit): 1 -> The result is below zero
- OV (Overflow bit): 1 -> There's an overflow in the result that is above the 7 bits
- Z (Zero bit): 1 -> Result is zero
- DC (Digit carry/borrow bit): 1 -> Indicates if a carry from the 4 low-bits to the 4 high-bits was generated
- C (Carry/borrow bit): 1 -> Indicates if a total carry of the 8 bits was generated







## Delays

Intended wait time before an operation.

Delay example:

```Assembly

```



## Interruptions

Each interruption has 3 bit for control their operation:

- IF (Interrupt Flag): Activates when the interruption is triggered
- IE (Interrupt Enable): Mask. Locally enables the interruption
- Priority bit: Select the interruption's priority (low or high)

There are  registers for the control of interruptions:
- RCON (Reset Control Register)
Bits: IPEN (Interrupt Priority), SBOREN, RI, TO, PD, POR, BOR

- INTCON (Interrupt Control Register)
Bits: GIE/GIEH (Global Interrupt), PEIE/GIEL, TMR0IE: Timer0's IE when this reaches certain time limit (overflow),

INT0IE: External interruption 0 IE , RBIE: Keyboar interruption IE, TMR0IF: IF of the interruption (overflow) of Timer0

INT0IF: IF de la interrupción externa 0, RBIF: IF de la interrupción de teclado

- INTCON2: Contiene los bits de prioridad para Timer0 y la interrupción de teclado. Su bit RBPU permite habilitar resistencias de pull-up para

todos los pines del puerto B (se recomienda poner un retardo después de habilitarla).

- INTCON3: Controla las interrupciones externas número 1 y 2

- PIR1, PIR2

- PIE1, PIE2

- IPR1, IPR2






## External links

- [Assembly](Assembly.md)
- [C](C)