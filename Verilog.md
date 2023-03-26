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

- 


| A | Ctrl | Q |
|-|-|-|
| 0 | 0 | Z |
| 0 | 1 | 0 |
| 1 | 0 | Z |
| 1 | 1 | 1 |




### Data flow level modeling



### Behavioral level modeling








## Modules

Are circuit blocks that can be used to build up a more complex block.

Basic module framework:

```verilog
module <module_name>(<signals>);
	input <inputs>;
	output <outputs>;
	
	<...module_architecture description...>
endmodule
```

To instantiate a module to use it in another, do:

```verilog
<module_name> <instance_name>(<signals>);
```


Example:

Suppose the following circuit.

![](attachments/Pasted%20image%2020230325201945.png)

Is a 4 to 1 multiplexor.
Is composed by 3,  2 to 1 multiplexors. 
So the 2 to 1 mux module definition is:

```verilog
module mux2to1(i0, i1, sel, out);
	input i0, i1, sel;
	output out;

	@always(i0, i1, sel)
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


### Port assignments

- _Input_
	- Internally net. Externally reg or net
- _Output_
	- Internally reg or net. Externally net
- _Inout_
	- Only wire data type


