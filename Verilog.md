# Verilog

Is a HDL (Hardware Descriptive Language) standarized as IEEE 1364-2001.

>[!Note]
>Files have `.v` extension

Verilog main features:
- Is weakly typed (doesn't require explicit mention of object types)
- C based
- Case sensitive
- Uses `;`'s

Supports 4 levels of abstraction:
- Switch level:
	- Modules are composed by switches. NMOS and PMOS are used as switches

Syntax implementation: ``<mos_name> <instance_name>(output, data, control)``

Example:

```verilog
pmos p(Q, vdd, A);
nmos n(vss, Q, A);
```

Interpretation:

![](attachments/Pasted%20image%2020230325194712.png)


- Gate level
- Data flow level
- Behavioral level


