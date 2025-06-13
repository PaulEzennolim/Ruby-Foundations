# Outer loop iterating over the range from 1 to 3
(1..3).each do |i|
    # Inner loop iterating over the range from 1 to 3
    (1..3).each do |j|
      # Print the product of i and j followed by a space
      print "#{i * j} "
    end
    # Move to the next line after completing the inner loop
    puts
  end
  