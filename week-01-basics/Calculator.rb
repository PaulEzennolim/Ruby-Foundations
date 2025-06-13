# Prompt the user to enter a mathematical expression
print "Enter a mathematical expression: "

# Read the input and store it in the variable 'calc'
calc = gets.chomp

# Use the eval method to evaluate the mathematical expression
result = eval(calc)

# Display the result of the evaluation
puts "The result of #{calc} is #{result}"
