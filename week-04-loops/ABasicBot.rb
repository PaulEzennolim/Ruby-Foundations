# Read quotes from the file and store them in the quotes array
quotes = File.readlines("quotes.db")

# Set initial values
running = true
num_exit_requests = 0

# Main loop to handle user input
while running
  # Display prompt
  print "> "
  # Get user input
  input = gets.chomp

  # Extract the text of the command
  input_text = input[0...input.length/2]
  # Validate the command
  command_valid = input_text.reverse == input[input.length/2..input.length]

  # Check if the command is 'exit' and is valid
  if input_text == "exit" && command_valid
    num_exit_requests += 1
    # Check the number of exit requests
    if num_exit_requests < 3
      puts "Are you sure you would like to exit?"
    else
      puts "Oh ok, bye."
      running = false
    end
  else
    # Reset the exit request count if the command is not 'exit'
    num_exit_requests = 0
  end

  # Check if the command is valid
  if command_valid
    if input_text == "status"
      # If the command is 'status', print "Bot running"
      puts "Bot running"
    elsif input_text != "exit"
      # If the command is valid but not understood, print an internal error code
      puts "Internal error code #{rand(1000)}"
    end
  # Check if the last letter is a question mark
  elsif input[-1] == "?"
    # If the input is a question, print a random quote from the quotes array
    puts quotes.sample
  else
    # If the command is not valid, randomly choose between two response messages
    if rand > 0.5
      puts "Invalid command"
    else
      puts "This does not compute, please repeat"
    end
  end
end
