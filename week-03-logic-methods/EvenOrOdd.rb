# Prompt the user to input a number
print "Please input a number: "

# Read a line of input from the user, remove trailing newline, and convert to integer
number = gets.chomp.to_i

# Check if the entered number is even
if number % 2 == 0 then
  # If even, print a message indicating that the number is even
  puts "#{number} is even"
else
  # If odd, print a message indicating that the number is odd
  puts "#{number} is odd"
end
