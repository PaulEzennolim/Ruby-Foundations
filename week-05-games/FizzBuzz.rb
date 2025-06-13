# Iterate through numbers from 1 to 100
(1..100).each do |number|
    # Check if the number is a multiple of both 3 and 5
    if (number % 3 == 0) && (number % 5 == 0)
      puts 'FizzBuzz'
    # Check if the number is a multiple of 3
    elsif number % 3 == 0
      puts 'Fizz'
    # Check if the number is a multiple of 5
    elsif number % 5 == 0
      puts 'Buzz'
    # If the number is not a multiple of 3 or 5, print the number itself
    else
      puts number
    end
  end
  