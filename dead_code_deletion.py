import node_class

#trouble: have to
tiles_hash = {
    "+":
        {"pattern": "BinaryOp", "instruction": "add {dest}, {src1}, {src2}", "cost": 1},
    "*":
        {"pattern": "BinaryOp", "instruction": "mul {dest}, {src1}, {src2}", "cost": 2},
    "=":
        {"pattern": "Assign", "instruction": "sw {computed_temp}, {variable_address}", "cost": 3},
    "-":
        {"pattern": "BinaryOp", "instruction": "sub {dest}, {src1}, {src2}", "cost": 1},
    "/":
        {"pattern": "BinaryOp", "instruction": "div {dest}, {src1}, {src2}", "cost": 1}
    }

temp_count = 0
instructions = []

def traverse(node):
    global temp_count
    global instructions

    if not node.children: # return the instruction if you are the leaf

        instruction =  f"li temp{temp_count}, {node.value}"
        instructions.append(instruction)

        '''
            Later after register allocation, when I see the variables mapped to their registers, 
            I will do this 
        '''
        register_of_result = f"temp{temp_count}"
        temp_count += 1
        return register_of_result

    else:
        child_computation_results = []
        for child in node.children:
            child_computation_results.append( traverse(child) )

        # print(node.node_type, node.value)
        if node.value in tiles_hash:

            instruction_template = tiles_hash[node.value]["instruction"]
            instruction = ""
            if tiles_hash[node.value]["pattern"]  == "BinaryOp": #same for all four, left div right, left minus right.
                instruction = instruction_template.format(dest = f"temp{temp_count}", src1 = child_computation_results[0], src2 = child_computation_results[1])
            elif tiles_hash[node.value]["pattern"] == "Assign":
                instruction = instruction_template.format(computed_temp = child_computation_results[1], variable_address = child_computation_results[0])


            instructions.append(instruction)
            register_of_result = f"temp{temp_count}"

            temp_count += 1
            return register_of_result



def main():
    global instructions
    global temp_count
    for a in node_class.module_nodes:
        temp_count = 0
        instructions = []
        final_register = traverse(a)
        print(instructions)

if __name__ == "__main__":
    main()





