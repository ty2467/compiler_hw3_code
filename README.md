Name and Uni:
Mike Yang, ty2467

Background:
1. Previous my team split up and, because of complications with the parser step, it is not convenient for me to use the 
parser code. Therefore AST are manually hardcoded. They are in node_class.py. They provide the 5 sample programs
This hardcoded aspect is very unfortunate.  
I will try to make the parser live on my end some time, so that the whole stream line works from HW 1 to HW3.

2. The original proposal was to make a matrix multiplication language. You will realize that the addition operator here does 
not correspond to what happens in matrix addition. This is because during coding, i realized that matrix addition alone would require
at least half a dozen lines of instruction to correspond to the tile of "+". 
After research, it appears that no production compiler that supports matrix translates any matrix multiplication into source code. What 
is done instead is a library that translates a matrix addition into the loop based step by step addition of each element. 
Therefore it is suitable to support numeric operations.


File Description
1. real_assembly.py:
The file that generates the assembly code. It uses post order traversal and maximal munch. 
The operator led patterns are defined in a tile dictionary. Where, upon identifying an operator, a pattern of
instruction is located in the dictionary.
The leaf operands are identified via them being leafs. In turn, they are loaded into memory.
Right now, all variables are treated as heap variables. Hence you will see in line 40 is the MIPS code for 
allocating heap memory whenever a variable or int is met.

   In traversal, the leaf nodes are first identified and loaded into memory. Then the operator above these leafs uses
    the returned registers to do their computation. 

    By the same vein, the operators above other operators use the registers storing the computed results of the deeper
    operators.

    Register limits is respected, by a list of available temporary registers from mips ($t1 -> $t7). They are stored in
    reverse order, so that popping and adding to them is extremely easy in python.
    Another list holds the registers that are in usage. This is so that we keep track of who is not available.

Notes on the instructions:
lw, is used for load word
li, is used for the syscall 9: which is to allocate heap memory for MIPS


2. node_class.py:
Test cases.

3. create_assembly.sh
the shell script to be ran.
Running instruction:
first:

    chmod +x create_assembly.sh 

    ./create_assembly.sh



Future Steps (Part 4):
1. Register Allocation:
This compiler can currently generate code for compound but compact code. Next step is to be able to handle larger code that
requires 

2. Control Flow optimization

3. Global Optimization

4. Local Optimization

etc.



Video:
<video width="320" height="240" controls>
  <source src="~/Desktop/HW3_demo_compiler.mov" type="video/mp4">
  Your browser does not support the video tag.
</video>
