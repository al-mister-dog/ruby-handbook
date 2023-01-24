# Define a proc with two required parameters and one optional parameter
add = ->(a, b, c=0) { a + b + c }

# Get the parameters of the proc
puts add.parameters  # Outputs: [[:req, :a], [:req, :b], [:opt, :c]]