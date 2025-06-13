# Define the maximum method
def maximum(a, b, c)
    # Use the ternary operator to find the maximum of three numbers
    max = (a > b) ? (a > c ? a : c) : (b > c ? b : c)
    return max
end
  
  # Get three numbers from the user
  print "First Number: "
  num1 = gets.chomp.to_i
  
  print "Second Number: "
  num2 = gets.chomp.to_i
  
  print "Third Number: "
  num3 = gets.chomp.to_i
  
  # Call the maximum method with the user inputs
  result = maximum(num1, num2, num3)
  
  # Print the result
  puts "The maximum is #{result}"
  