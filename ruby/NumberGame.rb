number = rand(1..100)
guesses = 0

while guesses < 10
  print "Guess a number (1-100): "
  guess = gets.to_i
  guesses += 1

  if guess == number
    puts "Congrats! You guessed it!"
    break
  elsif guess < number
    puts "Too low."
  else
    puts "Too high."
  end
end

puts "Sorry, you lose. The number was #{number}" if guesses == 10
