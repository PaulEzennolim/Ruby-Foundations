# Method to check if the user is old enough to vote
def check_age
  print "How old are you? "
  age = gets.chomp.to_i

  # Check if the age is 18 or more
  if age >= 18
    return true  # If the user is 18 or older, return true (indicating they can vote)
  else
    puts "You are not allowed to vote."
    return false  # If the user is younger than 18, print a message and return false
  end
end

# Method to handle the voting choices
def do_vote
  print "Who do you want to vote for? "
  choice = gets.chomp.downcase

  # Respond based on the user's voting choice
  case choice
  when "trump"
    puts "You should not be allowed to vote."  # If the user chooses "trump," print a specific message
  when "clinton"
    puts "Your vote for Bernie has been recorded."  # If the user chooses "clinton," print a specific message
  else
    puts "You seem confused, we will count this as a vote for Trump."  # For any other choice, print a default message
  end
end

# Main part of the program
if check_age
  do_vote  # If the user is old enough to vote (check_age returns true), proceed to the voting part (do_vote)
end
