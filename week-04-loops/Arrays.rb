# An array of numbers
numbers = [1, 4, 7, 15, 20, 25, 28, 30, 34, 40]

# An array to store the doubled values of the numbers
doubles = Array.new(10, 0)

# Loop through each element of the 'numbers' array with its index
numbers.each_with_index do |num, index|
  # Calculate the double of the current number and store it in the 'doubles' array
  doubles[index] = num * 2
end

# Iterate through each element of the 'doubles' array and print it
doubles.each { |x| puts x }
