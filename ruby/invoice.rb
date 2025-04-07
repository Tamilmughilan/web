prices = [100, 200, 300, 400]

# Method 1: Total sum
total = prices.reduce(:+)

# Method 2: 1/3 off each price
discounted_prices = prices.map { |p| p * (2.0 / 3) }
discount_total = discounted_prices.reduce(:+)

# Output
puts "Prices: #{prices}"
puts "Total: #{total}"
puts "Total after 1/3 discount: #{discount_total.round(2)}"
