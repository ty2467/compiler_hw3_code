
Background:
1. Previous my team split up and, because of complications with the parser step, it is not convenient for me to use the 
parser code. therefore unfortunately until i can find time to make it up, the AST are manually hardcoded. They are in node_class.py
They provide the 5 sample programs
2. The original proposal was to make a matrix multiplication language. You will realize that the addition operator here does 
not correspond to what happens in matrix addition. This is because during coding, i realized that matrix addition alone would require
at least half a dozen lines of instruction to correspond to the tile of "+". 
After research, it appears that no production compiler that supports matrix translates any matrix multiplication into source code. What 
is done instead is a library that translates a matrix addition into the loop based step by step addition of each element. 
Therefore it is suitable to support numeric operations.


File Description 
1. real_assembly.py is the file that generates the assembly code. It uses post order traversal and maximal munch. 
The operator led patterns are defined in a tile dictionary. Where, upon identifying an operator, a pattern of
instruction is identified. 


Future Steps (Part 4):
Register Allocation:
This compiler can currently generate code for compound but compact code. Next step is to be able to handle larger code that
requires 