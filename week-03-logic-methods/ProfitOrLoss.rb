# Get cost price from the user
print "Enter the cost price: "
cost_price = gets.chomp.to_f

# Get selling price from the user
print "Enter the selling price: "
selling_price = gets.chomp.to_f

# Calculate profit or loss
profit_loss = selling_price - cost_price

# Check if there is a profit, loss, or neither
if profit_loss > 0
  puts "Profit: #{profit_loss}"
elsif profit_loss < 0
  puts "Loss: #{-profit_loss}"
else
  puts "Neither profit nor loss"
end
