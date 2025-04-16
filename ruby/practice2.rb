prices = [100,200,300]

sum = prices.reduce(:+)
sum2 = prices.sum()

discounted_price = prices.map {|p| p * 0.9}


puts discounted_price.inspect

puts sum
puts sum2