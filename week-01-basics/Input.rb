# Display a greeting message
puts "Hello, good to see you again!"

# Prompt the user to input their name
print "What is your name? "

# Read a line of input from the user, remove trailing newline, and store it in the variable 'name'
name = gets.chomp

# Display a personalized greeting using string interpolation
print "Hi #{name}!"
