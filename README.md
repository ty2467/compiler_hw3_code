
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
instruction is identified. The leaf operands are identified via them being leafs. In turn, they are loaded
into memory.
Right now, all variables are treated as heap variables. Hence you will see in line 40 is the MIPS code for 
allocating heap memory.


Future Steps (Part 4):
Register Allocation:
This compiler can currently generate code for compound but compact code. Next step is to be able to handle larger code that
requires 