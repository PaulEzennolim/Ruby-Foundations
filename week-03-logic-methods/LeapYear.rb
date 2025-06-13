# Get the year from the user
print "What year? "
year = gets.chomp.to_i

# Check if it's a leap year
if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
  puts "#{year} is a leap year"
else
  puts "#{year} is not a leap year"
end
