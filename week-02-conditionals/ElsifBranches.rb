# Assign a value to the variable x
x = -42

# Check different conditions regarding the value of x
if x > 0
  # If true, print a message indicating that x is greater than 0
  puts "x is greater than 0"
elsif x == -42
  # If the first condition is not true, check if x equals -42
  puts "x equals -42"
elsif x < 0
  # If the second condition is not true, check if x is less than 0
  puts "x is less than 0"
else
  # If none of the above conditions are true, print a message indicating that x is 0
  puts "x is 0"
end
