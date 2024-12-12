class Node:
    def __init__(self, node_type, children=None, value=None):
        self.node_type = node_type  # e.g., 'Assign', 'Call'
        self.children = children if children else []  # List of child nodes
        self.value = value  # Optional value, like a constant or variable name

    def add_child(self, child):
        self.children.append(child)

    def __repr__(self):
        return f"Node(type={self.node_type}, value={self.value}, children={self.children})"

#a = (b+c)*d
module_node_1 = Node("Module", children=[
    Node("Assign", value = "=", children=[
        Node("Name", value="a"),          # LHS of assignment
        Node("BinOp", value="*", children=[  # Multiplication node
            Node("BinOp", value="+", children=[  # Addition node
                Node("Name", value="b"),        # Operand: b
                Node("Name", value="c")         # Operand: c
            ]),
            Node("Name", value="d")             # Operand: d
        ])
    ])
])

#x = y-z
module_node_2 = Node("Module", children=[
    Node("Assign", value="=", children=[
        Node("Name", value="x"),          # LHS of assignment
        Node("BinOp", value="-", children=[  # Subtraction node
            Node("Name", value="y"),        # Operand: y
            Node("Name", value="z")         # Operand: z
        ])
    ])
])


#result = m / (n + p)
module_node_3 = Node("Module", children=[
    Node("Assign", value="=", children=[
        Node("Name", value="result"),    # LHS of assignment
        Node("BinOp", value="/", children=[  # Division node
            Node("Name", value="m"),          # Operand: m
            Node("BinOp", value="+", children=[  # Addition node
                Node("Name", value="n"),        # Operand: n
                Node("Name", value="p")         # Operand: p
            ])
        ])
    ])
])



#output = x * (y - z) + w
module_node_4 = Node("Module", children=[
    Node("Assign", value="=", children=[
        Node("Name", value="output"),     # LHS of assignment
        Node("BinOp", value="+", children=[  # Addition node
            Node("BinOp", value="*", children=[  # Multiplication node
                Node("Name", value="x"),         # Operand: x
                Node("BinOp", value="-", children=[  # Subtraction node
                    Node("Name", value="y"),         # Operand: y
                    Node("Name", value="z")          # Operand: z
                ])
            ]),
            Node("Name", value="w")              # Operand: w
        ])
    ])
])

#total = (a + b) * (c - d)
module_node_5 = Node("Module", children=[
    Node("Assign", value="=", children=[
        Node("Name", value="total"),     # LHS of assignment
        Node("BinOp", value="*", children=[  # Multiplication node
            Node("BinOp", value="+", children=[  # Addition node
                Node("Name", value="a"),        # Operand: a
                Node("Name", value="b")         # Operand: b
            ]),
            Node("BinOp", value="-", children=[  # Subtraction node
                Node("Name", value="c"),         # Operand: c
                Node("Name", value="d")          # Operand: d
            ])
        ])
    ])
])

# module_nodes = [module_node_1, module_node_2, module_node_3, module_node_4, module_node_5]

#x = 42
#x = y - z
module_node_dead_code = Node("Module", children=[
    # Dead code: This assignment is never used
    Node("Assign", value="=", children=[
        Node("Name", value="x"),          # LHS of assignment (dead code)
        Node("Constant", value=42)        # Arbitrary constant
    ]),
    # The real assignment that overwrites the dead code
    Node("Assign", value="=", children=[
        Node("Name", value="x"),          # LHS of assignment
        Node("BinOp", value="-", children=[  # Subtraction node
            Node("Name", value="y"),        # Operand: y
            Node("Name", value="z")         # Operand: z
        ])
    ])
])

module_nodes = [module_node_1, module_node_2, module_node_3, module_node_4, module_node_5, module_node_dead_code]