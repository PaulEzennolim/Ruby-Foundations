# Loop through the range from 0 to 4 (inclusive)
for i in 0..4
    # Check if i is an even number
    if i % 2 == 0 then
      # Skip the current iteration and move to the next one
      next
    end
    # Print the current iteration number for odd numbers
    puts "Iteration #{i}"
end
  