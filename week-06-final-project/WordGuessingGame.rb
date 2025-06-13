ATTEMPTS = 9

# Return true if the array of characters matches the word
def is_solved(word, characters)
  # Iterate over the characters of 'word' and compare them to
  # the characters in the 'characters' array
  (0...word.length).each do |index|
    return false if word[index] != characters[index]
  end
  true
end

# Print the characters guessed so far and the remaining attempts
def output(attempts, characters)
  # Iterate over the characters and print them
  characters.each { |char| print char }
  puts "\nRemaining attempts: #{attempts}"
end

# Checks if a guessed character occurs in the word.
# Update all occurrences of the character in the
# array of already guessed characters
def update_and_check(characters, word, guess)
  found = false
  guess = guess.downcase # Convert the guess to lowercase for case-insensitive comparison

  (0...word.length).each do |w|
    # Make the check case insensitive
    if word[w].downcase == guess
      found = true
      # Update the characters array
      characters[w] = word[w]
    end
  end

  found
end

# The basic game logic: Keep asking for characters until dead or won
def game_loop
  words = ["COM1001", "Hello", "Sheffield"]
  word = words.sample
  characters = Array.new(word.length, '_')
  attempts = ATTEMPTS

  # Keep querying for a new character until the game is over
  while (!is_solved(word, characters)) && attempts.positive?
    output attempts, characters
    print 'Your next guess: '
    c = gets.chomp
    unless update_and_check(characters, word, c)
      attempts -= 1
    end
  end

  # Once the current game is over, inform the player of the outcome
  if is_solved(word, characters)
    puts "You have won with #{ATTEMPTS - attempts} wrong attempts!"
  else
    puts 'You have lost.'
  end
end

# Ask the player if they want to play another game
loop do
  game_loop
  print 'Do you want to play another game? (Y/N): '
  response = gets.chomp.upcase
  break unless response == 'Y'
end
