# Initialize an empty array to store strings
strings = []

# Read strings until "END" is entered
loop do
  print "> "
  input = gets.chomp

  # Check for termination condition
  break if input == "END"

  # Add the input string to the array
  strings << input
end

# Print the reversed order of strings
puts strings.reverse
