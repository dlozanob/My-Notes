# Verilog

Is a HDL (Hardware Descriptive Language) standarized as IEEE 1364-2001.

>[!Note]
>Files have `.v` extension

---

Verilog main features:
- Is weakly typed (doesn't require explicit mention of object types)
- C based
- Case sensitive
- Uses `;`'s
- Signal and variable names can't start with: `<number>`, `<non-alphanumeric-character>`
---
 
Comments:

```verilog
// Single line comment

/* Multiline
comment */
```


Design methodologies:
- _Top-down_: First define the top level block then define the sub-blocks until defining the leaf cells to build up the entire top level block
- _Bottom-up_: First identify the building blocks and use them to build up bigger blocks until make the entire top-level block

>[!Note]
>In the synthesis process the digital design based on logic gates is created based on the Verilog code.


## Abstraction levels

- _Switch level_
	- Modules are composed by switches. NMOS and PMOS are used as switches.
	- Syntax implementation: ``<mos_name> <instance_name>(output, data, control)``

Example:

```verilog
pmos myPMOSInstance(Q, vdd, A);
nmos myNMOSInstance(Q, vss, A);
```

Interpretation:

![](attachments/Pasted%20image%2020230325194712.png)

- _Gate level_
	- The modules are implemented in terms of logic gates
	- Syntax implementation: `<primitive_name> <instance_name>(<output>, <input(s)>)`

Example:

```verilog
buf G0(Q, A);
and G1(Q, A, B);
or G2(Q, A, B);
nand G3(Q, A, B);
```

- _Data flow level_
	- Module is designed by specifying the data flow
	- Syntax implementation: `assign <signal_name> = <expression>`

Example:

```verilog
assign x = A & B;
assign y = A | B;
assign z = ~A;
```

- _Behavioral level_
	- Modules are described by their behaviour (highest abstraction level)
	- Syntax implementation:

```verilog
always@(<params>)
begin
	<algorithm>
end
```

Example:

```verilog
always@(i0, i1, sel)
begin
	if(sel)
		out = i0;
	else
		out = i1;
end
```


### Gate level modeling

Available logic gates are:
- _buf_
- _not_
- _and_
- _or_
- _xor_
- _nand_
- _nor_
- _xnor_

>[!Note]
>If any input has `X` or `Z` value, the output will be `X`

#### Controlled logic gates

Syntax: `<logic_gate> <instance_name>(<output>, <input>, <control>)`

- _bufif1_ :

![](attachments/Pasted%20image%2020230326143823.png)

![](attachments/Pasted%20image%2020230326144439.png)


- _bufif0_ :

![](attachments/Pasted%20image%2020230326143951.png)

![](attachments/Pasted%20image%2020230326144457.png)

- _notif1_ :

![](attachments/Pasted%20image%2020230326144012.png)

![](attachments/Pasted%20image%2020230326144515.png)

- _notif0_ :

![](attachments/Pasted%20image%2020230326144023.png)

![](attachments/Pasted%20image%2020230326144544.png)


#### Gate delays

- Rise delay: Introduces a delay at rising edge
- Fall delay: Introduces a delay at falling edge
- Turn-off delay: Introduces a delay when going from any logic value to `Z`

Syntax:

```verilog
// Assign a delay to all kinds
<gate_name> #(<delay_time>) <instance_name>(<input>, <output(s)>);

// Assign a delay to rise and fall edges
<gate_name> #(<rise_delay, fall_delay>) <instance_name>(<input>, <output(s)>);

// Assign a delay to all kinds, specifying each one
<gate_name> #(<rise_delay, fall_delay, turnOff_delay>) <instance_name>(<input>, <output(s)>);
```

>[!Note]
>If the delay transists to `X`, the minimum of the 3 delays is considered

---

Gate level implementation example:

```verilog
module half_sub(a, b, borrow, diff);
	input a, b;
	output borrow, diff;
	
	wire w;
	xor x(diff, a, b);
	not n(w, a);
	and y(borrow, w, b);
endmodule
```


### Data flow level modeling

A _continous assignment_ describes the circuit at a higher level of abstraction than using logic gates. A continous assignment statement starts with the `assign` keyword.

Syntax: `assign <netType_variable> = <logic_statement>`

```verilog
wire out;
assign out = A & B;
```

An _implicit continous assignment_ simplifies the process. Can be done just once.

```verilog
wire out = A & B;
```


#### Delays

Insert a delay for the assignation time.

Ways of specifying delays:
- _Regular assignment delay_
	- Syntax: `assign #<delay> <var> = <statement>`

		```verilog
		wire out;
		assign #10 out = A & B; // Takes 10 time units to assign any (A & B) change to out
		```

- _Implicit continous assignment delay_
	- Syntax: `<netType_variable> #<delay> <var> = <statement>`

		```verilog
		wire #10 out = A & B; // Takes 10 time units to assign any (A & B) change to out
		```

- _Net declaration delay_
	- Syntax: `<netType_variable> #<delay> <var>`

		```verilog
		wire #10 out;
		assign out = A & B;
		```

---

Data flow level implementation example:

```verilog
module fulladd4(a, b, c_in, sum, c_out);
	input [3:0] a, b;
	input c_in;
	output [3:0] sum;
	output c_out;

	assign {c_out, sum} = a + b + c_in;
endmodule
```


### Behavioral level modeling

Is written inside structured procedure statements.
Verilog supports two of these: `always` and `initial`
Multiple declaration of these blocks cause parallel execution.
Their activity starts at 0 simulation time.

The `initial` statement runs once when running the program and it's execution stops until the last block is executed.

Syntax:

```verilog
initial
begin
	<statements>
end
```

The `always` statement executes according to it's event.

Syntax:

```verilog
always @(<event>) begin
	<statements>
end
```

The `<event>` block represents any change. For instance:

```verilog
always // Triggered at any clock change (no control)
always @(posedge clk) // Triggered at clk's rising edge
always @(negedge clk) // Triggered at clock's falling edge
always @(A or B) // Triggered if (A or B) changes
always @* // Triggered if any of the inputs change
```

A deadlock condition will be created if an always statement has no control.

>[!Note]
>A _deadlock_ is a situation when a process A needs one resource holded by a process B to continue, and the latter need a resource holded by A. But A won't release it until having the required resource to finish the process, so the same happens to B.
>Hence, the execution will never stop.

>[!Note]
>If there's a single line statement, `begin` and `end` can be omitted

To break an `always` block use:

```Verilog
always @(<params>)
begin : <block name>
	.
	.
	disable <block name>;
	.
	.
end
```

A _procedural assignment_ updates _Register_ data type values. 

Types:
- Blocking assignments
	- Syntax: `<variable> = <value>`
	- Statements are executed sequentially in the order they are specified

	```verilog
	x = 4;
	y = 2'b10;
	```

>[!Note]
>Allowed to reassign variables by: `<variable> <binaryOperator>= <value>`

- Non-blocking assignments
	- Syntax: `<variable> <= <value>`
	- Statements are executed concurrently

	```verilog
	x <= 4;
	y <= 2'b10;
	```

>[!Note]
>It's recommended to don't mix both assignment ways


#### Delays

Set the assignment time.

- _Regular delay_ : Is the time before the right statement is evaluated and assigned to the variable.
	- Syntax: `#<delay> <variable> = <statement>`
- _Intra-assignment delay_ : Is the time before the right statement is assigned to the variable.
	- Syntax: `<variable> = #<delay> <statement>`

---

Behavioral level implementation example:

```verilog
module counter(clk, clear, Q);
	input clk, clear;
	output [3:0] Q;
	reg [3:0] Q;

	always @(posedge clear or negedge clk)
	begin
		if(clear)
			Q = 4'd0;
		else
			Q = (Q + 1)%16;
	end
endmodule;
```


## Block statements

Implemented only in behavioral level abstraction.

- _Block statement-sequence block_
	- The `begin`, `end` keywords are used to group multiple statements
	- Statements are executed sequentially
	- The execution must wait any delay

	```verilog
	initial
	begin
		x = 3; // Assigns at simulation time = 0
		#5 y = 4'b1011; // Assigns at simulation time = 5
		#10 z = -3; // Assigns at simulation time = 15
	end
	```

- _Block statement-parallel block_
	- The `fork`, `join` keywords are used to group multiple statements
	- Statements are executed concurrently
	- The execution uses different threads to keep running while a delay

	```verilog
	initial
	fork
		x = 3; // Assigns at simulation time = 0
		#5 y = 4'b1011; // Assigns at simulation time = 5
		#10 z = -3; // Assigns at simulation time = 10
	join
	end
	```

---

The _fork-join_ model is a way of execute a parallel program. Parallel tasks start and end at the same time.

![](attachments/Pasted%20image%2020230326172938.png)

---

- _If statement_

```verilog
// Single statement
if(<expression>) <statementIfTrue>;

// True-false single statement
if(<expression>) <statementIfTrue>; <statementIfFalse>;

// General form
if(<expression1>) begin
	<statement1>;
end else if(<expression2>) begin
	<statement2>;
end else
	<statement3>;
```

- _Case statement_

```verilog
case(<expression>)
	<alternative1>: begin 
		<statement1>; 
		end
	<alternative2>: begin 
		<statement2>;
		end
	default: <statement1>; 
endcase
```

- _For loop_

```verilog
for(<auxVar> = <initValue>; <auxVarStopCondition>; <auxVarReassignment>) begin
	<statements>
end
```

- _While loop_

```verilog
while(<expression>) begin
	<statements>
end
```

- _Do while loop_

```verilog
do begin
	<statements>
end
while(<expression>);
```

- _Repeat loop_

```verilog
repeat(<number>) begin
	<statements>
end
```

- _Forever loop_
	- Executes forever until a `$finish` or `disable` keyword is encountered

```verilog
forever begin
	<statements>
end
```


>[!Note]
>The keywords `break` and `continue` are supported


## Modules

Are circuit blocks that can be used to build up a more complex block.

Basic module framework:

```verilog
module <module_name>(
	input <inputs>,
	output <outputs>
	);
	<...module_architecture description...>
endmodule
```

To instantiate a module to use it in another, do:

```verilog
<module_name> <instance_name>(<signals>);
```

Port assignments:
- _input_
	- Internally net. Externally reg or net
- _output_
	- Internally reg or net. Externally net
- _inout_
	- Only wire data type


- __Example__ :
Suppose the following circuit.

![](attachments/Pasted%20image%2020230325201945.png)

Is a 4 to 1 multiplexor.
Is composed by 3,  2 to 1 multiplexors. 
So the 2 to 1 mux module definition is:

```verilog
module mux2to1(i0, i1, sel, out);
	input i0, i1, sel;
	output out;

	always @(i0, i1, sel)
	begin
		if(sel)
			out = i0;
		else
			out = i1;
	end
endmodule
```

The 4 to 1 module definition is:

```verilog
module mux4to1(i0, i1, i2, i3, s0, s1, out);
	input i0, i1, i2, i3, s0, s1;
	output out;
	wire x1, x2;

	mux2to1 mux1(i0, i1, s1, x1);
	mux2to1 mux2(i2, i3, s1, x2);
	mux2to1 mux3(x1, x2, s0, out);
endmodule
```


## Data types

Declaration syntax:

```verilog
<data_type> <var_name>, <other variables>; // Declaration
<data_type> <var_name> = <value>;

<var_name> = <value> // If already declared
```

- _Register_
	- Represents data storage elements
	- Default value: `X`
	- Data types:
		- _reg_ : Bit variable

			```verilog
			reg count;
			reg [7:0] bus;
			count = 3'b101;
			count[2]; // 1
			```

		- _integer_ : General purpose register data type
		  Values are stored as signed quantities. 32 bits by default.
		 - _real_  : Allows decimal and scientific notation. Default value is `0.0`
		   Rounded off to the nearest integer when assigned to an `integer` data type
		- _time_ : Used to store the simulation time. Is unsigned

			```verilog
			time newSimTime;
			initial
			begin
			newSimTime = $time; // Save elapsed simulation time
			end
			```


- _Net_
	- Represents connections between hardware elements
	- Default value: `Z`
	- Data types:
		- _wire_ : Single connection
		- _wand_ : And wire connection
		- _wor_ : Or wire connection

			```verilog
			wand y;
			assign y = A & B;
			assign y = A | B;
			// y = (A & B) & (A | B)
	
			/* ------------------------------------------------------------ */
	
			wor y;
			assign y = A & B;
			assign y = A | B;
			// y = (A & B) | (A | B)
			```
		
		- _supply0_ : $V_{dd}$ supply signal
		- _supply1_ : $gnd$ supply signal


### Vectors

Repesent multiple bit size. Any data type can be declared as vector.

Default size is scalar (1-bit).

Are declared specifying the range: `<data_type> [r1:r2] <var_name>`
Where `r1` is the most significant bit (MSB).

```verilog
wire [15:0] A;
wire [0:15] B;

A[15]; // A's MSB
B[0]; // B's MSB
```


### Arrays

Allowed for `Register` data types and `wire`.

Syntax: `<data_type> [r1:r2] <var_name> [r3:r4]`
There are $\mid r_{3} - r_{4} + 1 |$ `var_name`'s with length $| r_{1} - r_{2} + 1 |$ each one.

```verilog
reg [7:0] register_bank [15:0]; // 16 8-bit register banks
reg num [31:0]; // 32 1-bit numbers

reg [7:0] membyte [0:1023]; // 1k memory, 8-bit words
```


### Parameters

Are constant values. Allows module instances to be customized.
Syntax: `parameter <param_name> = <value>`

```verilog
parameter size = 8; // Defines 'size' as a constant value 8
```


### Strings

Can be stored in `reg` data types. Each character takes up a byte.

Syntax:

```verilog
reg [8*<str_length>:1] <str_name>; // Declaration
<str_name> = "<str_value>"; // Assignment

//Example
reg [8*10:1] myString;
myString = "Hallo Welt";
```

| Escaped character | Character displayed |
|-|-|
| `\n` | `<new line>` |
| `\t` | `<tab>` |
| `\%` | `%` |
| `\\` | `\` |
| `\"` | `"` |


### Numbers : 

Syntax: `<size>'<base><number>`

| Base | Notation |
|-|-|
| Binary | `b` or `B` |
| Octal | `o` or `O` |
| Decimal | `d` or `D` |
| Hexadecimal | `h` or `H` | 

```verilog
3'b101 // 3 bit, 101 binary
12'o42xx // 12 bit, 42xx octal (100 010 xxx xxx)
4'd3 // 4 bit, 3 decimal
12'ha35 // 12 bit, a35 hexadecimal
25 // 32 bits by default, 35 decimal signed number
```

X and Z extension:

```verilog
6'bx101 // xxx_101
8'dz7 // zzzz_0111
```


>[!Note]
>To improve readability use `__`'s. Ex.: `8b1011_1010`
>
 

## Operators

- _Arithmetic_
	- _Unary_ :
		- Plus signed: `+`
		- Negative signed: `-`
	- _Binary_ : 
		- Add: `+`
		- Substract: `-`
		- Product: `*`
		- Division: `/`
		- Power: `**`
		- Modulus: `%`
	  If any operator has a value x, the output will be x.

- _Logical_ :
	- Negation: `!`
	- And: `&&`
	- Or: `||`

- _Bitwise_ :
	- Bitwise and: `&`
	- Bitwise or: `|`
	- 1's complement: `~`
	- Bitwise xor: `^`
	- Bitwise xnor: `^~` or `~^`

- _Equality_ : 
	- Logical equality: `==`
	- Logical inequality: `!=`
	- Case equality: `===`
	- Case inequality: `!==`
	Logical operators don't include `X` and `Z`, case operators do.

	```verilog
	reg A = 4b'1010;
	reg B = 4b'1xxz;
	A == B; // x
	A === B; // 0
	```

- _Relational_ :
	- Greater than: `>`
	- Less than: `<`
	- Greater or equal than: `>=`
	- Less or equal than: `<=`

- _Reduction_: Takes one operand
	- And: `&`
	- Or: `|`
	- Nand: `~&`
	- Nor: `~|`
	- Xor: `^`
	- Xnor: `~^` or `^~`

```verilog
reg A = 4b'1010;
&A; // 1 & 0 & 1 & 0 = 0
```

- _Shift_ : 
	- Right shift: `>>`
	- Left shift: `<<`
	- Arithmetic right shit: `>>>`
	- Arithmetic left shit: `<<<`

```verilog
reg A = 4b'1010;
Y = A >> 1; // 0101
Y = A << 1; // 0100
Y = A >> 2; // 0010
Y = A >>> 1; // 1101 The vacant bit is filled with the MSB (1)
Y = A <<< 2; // 1000
```

- _Concatenation_ :
   Syntax: `{element1, ..., elementN}`

	```verilog
	reg A = 4b'1011;
	reg B = 3b'101;
	Y = {A, B}; // 7b'1011101
	Z = {2'bx1, 3b'101, 2'b10, 2{1'b1}}; // 10'b0_x1_101_10_1_1
	```

- _Conditional_ : 
  Syntax: `<condition> ? <ouputIfTrue> : <outputIfFalse>`

```verilog
reg m = 2'b10;
reg n = 2'b1x;
assign q = (m < n) ? 2'b10 : 2'b11; // 2'bxx
```


## Value and signal strength levels

| Value level | Description |
|-|-|
| 0 | Logic 0 |
| 1 | Logic 1 |
| X | Unknown logic value |
| Z | High impedance |

| Signal strength level | Type | Degree |
|-|-|-|
| supply | Driving | 8 (Strongest) |
| strong | Driving | 7 |
| pull | Driving | 6 |
| large | Storage | 5 |
| weak | Driving | 4 |
| medium | Storage | 3 |
| small | Storage | 2 |
| highz | High impedance | 1 (Weakest) |


The strongest signal prevails when there are two signals of different strenght driven on a wire.

![](attachments/Pasted%20image%2020230325212345.png)

An unknown logic value will be prooduced when there are two signals of same strenght driven on a wire.

![](attachments/Pasted%20image%2020230325212425.png)


## System tasks

### Internal variable monitoring system tasks

Are used to display in the console the values of the variables of a program.

Syntax: `$<systemTask> ("<format_string>", param(s))`

- _$display_
	- Displays once its executed
	- Adds a new line character at the end
- _$write_
- _$strobe_
	- Displays at the very end of the current simulation time unit when executed
- _$monitor_
	- Displays every time one of its parameters change

Example:

```verilog
module example;
	reg new_reg;
	initial
		begin
		new_reg = 1'b1;
		$strobe ("Strobe value of new_reg = %b", new_reg);
		$display ("Display value of new_reg = %b", new_reg);
		new_reg = 0'b1;
		$monitor ("Monitor value of new_reg = %b", new_reg);
		end
endmodule

// Console output:
// Strobe value of new_reg = 0
// Display value of new_reg = 1
// Monitor value of new_reg = 1
// Monitor value of new_reg = 0
```

- _$random_
	- Generates a random integer every time it's called
	- Syntax: `<var> = $random[<integer>]`


### Simulation control tasks

- _$reset_
	- Resets the simulation to time 0
- _$stop_
	- Halts the simulation and puts it in interactive mode (the user can enter commands)
- _$finish_
	- Exit the simulation back to the operating system


### Simulation time related tasks

- _$time_
	- Returns the current simulation time as a 64 bit integer
- _$stime_
	- Returns the current simulation time as a 32 bit integer
- _$realtime_
	- Returns the current simulation time as a real number


## Compiler directives

Control the compilation of a verilog description.
Syntax: `` `<compilerDirective> <argument>``

Some IEEE-1364 directives are:
- `` `define``
	- Gives a name to a collection of characters so it can be used then
	- Syntax: `` `define <name> <value>``

	```verilog
	`define size 7
	reg [0:`size] A;
	```

- `` `include``
	- Are replaced by the contents of its referencing file
	- Syntax: `` `include "<fileName>"``

	```verilog
	`include "disciplines.vams"
	```

- `` `timescale``
	- Defines the time unit and the time precision for the modules that follow it
	- Syntax: `` `timescale <timeUnit><unit>/<timePrecision><unit>``

	```verilog
	// Units can be: s, ms, us, ns, ps, fs
	`timescale 10ns/1ns
	```


## Tasks

Are used when any of these:
- There are delay, timing, or event control constructs in the task
- The task has zero or more than one output arguments
- The task has no input arguments

Main features:
- Can contain time control statements: `@(posedge)`, `#`
- Allows nested tasks and functions
- Can have multiple return values

Syntax:

```verilog
task <name>;
	input <input(s)>;
	output <output(s)>;

	begin
		<statements>
	end
endtask
```


- __Example__ :

```verilog
task sum;
	input [7:0] a, b;
	output [7:0] c;
	begin
		c = a + b;
	end
endtask

initial
begin
	reg [7:0] x, y, z;
	sum(x, y, z);
end
```

```verilog
module taskCalling(a, b, c);
	input a, b;
	output c;
	
	`include "myTask.v"

	always @(a)
	begin
		sum(a, b, c);
	end
endmodule
```


- _Static tasks_ don't have the keyword `automatic`.
	- Variables declared within are allocated statically
	- Each concurrent call to the task will overwrite the variables of the task from all other concurrent calls to the task

- _Reentrant tasks_ have the keyword `automatic` between the `task` keyword and the task name.
	- Variables declared within are allocated dynamically for each concurrent task call
	- All variables will be replicated in each concurrent call to store state specific to that invocation
	- Variables declared are de-allocated at the end of task invocation


## Functions

Conditions of use:
- The function can't advance the simulation time (must be parallel)
- The function can't have nonblocking assignments
- No variable can be named as the function it is scoped inside

Main features:
- Executes in zero simulation time
- Nested functions are allowed
- Returns a single value when called

Syntax:

```verilog
function <returnVarType> <functionName> (<portList>);
	<statements>
endfunction
```

- __Example__ :

```verilog
function [7:0] sum;
	input [7:0] a, b;
	begin
		sum = a + b;
	end
endfunction
```

```verilog
module functionCalling(a, b, c);
	input [7:0] a, b;
	output [7:0] c;
	wire [7:0] c;

	`include "myFunction.v"

	assign c = sum(a, b);
endmodule
```


>[!Note]
>Functions can be reentrant by using the keyword `automatic`




