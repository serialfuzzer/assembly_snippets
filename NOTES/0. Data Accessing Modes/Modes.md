# What are the data accessing modes in Assembly?

1. **Immediate mode**: In immediate accessing mode, the data to access is given directly to the program instead of memory address to where the data is located at. 
2. **Register addressing mode**: In register addressing mode, registers are used to access the data instead of memory addresses
3. **Direct addressing mode**: In this mode, we give instruction to access the data located at a specific memory address. For example, we could give the instruction to copy the data located at 2002 and the assembler would copy the data of that memory address directly to our register. 
4. **Indexed addressing mode**: in this mode, data is stored in a form resembling to an array. 

    ```movl disp(base, index, scale), dest```

    **disp**:
        An optional displacement value added to the address calculated using the base and index. You can use a constant value or another register for this.
    **base**:
         A register containing the base address of the data structure (e.g., the starting address of an array).
    **index**:
         A register containing the index value used to access specific elements within the structure.
    **scale**:
         An optional value (1, 2, 4, or 8) that multiplies the index value before adding it to the base address. This allows for efficient access to elements with larger byte sizes.
    **dest**:
         The destination register where the data will be loaded.

5. **Indirect addressing mode**: In this addressing mode, the data is contained in a memory address that is stored in a register. If eax contained the value 4, in indirect addressing mode, the value would be loaded from the memory address 4 

6. **Base pointer addressing mode**: this addressing mode is similar to indirect addressing mode but there's additional parameter called offset which is added to the memory address before the data is loaded. this addressing mode could be used to store data in the form of arrays (conceptual )