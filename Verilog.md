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


To create intermediate signals use:

```verilog
wire <signal(s)>;
```



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


## Modules

Are circuit blocks that can be used to build a more complex block.

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



