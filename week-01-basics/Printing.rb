# Initialize variables with strings
greeting = "Hello"
target = "World"

# Combine the greeting and target strings using a temporary variable
x = greeting
x = x + " "
x = x + target

# Print the combined string
puts x

# Use string interpolation to directly combine greeting and target and print the result
puts "#{greeting} #{target}"

# Reverse the characters in the target string
y = target.reverse

# Use string interpolation to combine greeting and reversed target, then print the result
puts "#{greeting} #{y}"
