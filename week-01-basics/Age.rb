# Ask the user for their name
print "What is your name? "

# Read the input and store it in the variable 'name'
name = gets.chomp

# Ask the user for the year of birth
print "What is your year of birth? "

# Read the input as a string and convert it to an integer using to_i
# Store the result in the variable 'year'
year = gets.chomp.to_i

# Create a Time object with the current date and time
time = Time.new

# Retrieve the current year from the time object
current_year = time.year

# Calculate the age by subtracting the birth year from the current year
age = current_year - year

# Display a response with the entered name and calculated age
puts "Hello, #{name}! You are #{age} years old."
