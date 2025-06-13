# Initialize the secret number
secret_number = rand(1..100)

# Create an array to track guessed numbers
guessed_numbers = Array.new(100, false)

# Counter for the number of attempts
attempts = 0

puts "Welcome to the Guessing Game! Try to guess the secret number between 0 and 100."

loop do
  print "Enter your guess: "
  guess = gets.chomp.to_i

  # Check if the guess is valid (within the allowed range)
  if guess < 0 || guess > 100
    puts "Please enter a number between 0 and 100."
    next
  end

  # Check if the number has been guessed before
  if guessed_numbers[guess]
    puts "You have already tried this number!"
    next
  end

  # Increment the attempts counter
  attempts += 1

  # Mark the guessed number as seen
  guessed_numbers[guess] = true

  # Check if the guess is correct
  if guess == secret_number
    puts "Congratulations! You found the right answer in #{attempts} tries!"
    break
  elsif guess < secret_number
    puts "Too small!"
  else
    puts "Too large!"
  end
end
