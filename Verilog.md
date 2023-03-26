# Verilog

Is a HDL (Hardware Descriptive Language) standarized as IEEE 1364-2001.

>[!Note]
>Files have `.v` extension

Verilog main features:
- Is weakly typed (doesn't require explicit mention of object types)
- C based
- Case sensitive
- Uses `;`'s


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
