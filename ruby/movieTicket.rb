movies = {
     "Avengers" => { seats: 10, price: 200 },
      "Inception" => { seats: 8, price: 250 },
      "Titanic" => { seats: 5, price: 150 }
}

def display_movies(movies)
  puts "Available Movies:\n"
  movies.each do |name, details|
    puts "#{name} - Seats: #{details[:seats]}, Price: #{details[:price]}"
  end
end

def book_ticket(movies)
  print "Enter the movie name: "
  movie_name = gets.chomp
  if movies.key?(movie_name)
    print "Enter number of tickets: "
    tickets = gets.chomp.to_i
    if tickets > 0 && tickets <= movies[movie_name][:seats]
      total_price = tickets * movies[movie_name][:price]
      movies[movie_name][:seats] -= tickets
      puts "Booking successful! Total Price: #{total_price}"
    else
      puts "Invalid number of tickets or not enough seats available."
    end
  else
    puts "Movie not found."
  end
end

def cancel_ticket(movies)
  print "Enter the movie name: "
  movie_name = gets.chomp
  if movies.key?(movie_name)
    print "Enter number of tickets to cancel: "
    tickets = gets.chomp.to_i
    if tickets > 0
      movies[movie_name][:seats] += tickets
      puts "Cancellation successful! #{tickets} tickets refunded."
    else
      puts "Invalid number of tickets."
    end
  else
    puts "Movie not found."
  end
end

loop do
  puts "\nMovie Ticket Booking System"
  puts "1. View Movies"
  puts "2. Book Ticket"
  puts "3. Cancel Ticket"
  puts "4. Exit"
  print "Choose an option: "
  choice = gets.chomp.to_i

  case choice
  when 1 then display_movies(movies)
  when 2 then book_ticket(movies)
  when 3 then cancel_ticket(movies)
  when 4 then break
  else puts "Invalid choice, try again."
  end
end
