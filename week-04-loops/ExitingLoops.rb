# Initialize the variable i with a value of 4
i = 4

# Start an infinite loop using the 'loop' keyword
loop do
  # Print the current iteration number
  puts "Iteration #{i}"

  # Decrement the value of i by 1 for the next iteration
  i -= 1

  # Check if i is less than 0
  if i < 0 then
    # If true, exit the loop using the 'break' keyword
    break
  end
end
