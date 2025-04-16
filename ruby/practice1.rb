movies = {
    "good bad ugly" => { seats: 30, price: 220},
    "goat" => {seats:40, price: 230}
}

def display_movies(movies)
    movies.each do |name, details|
        puts "
        Name : #{name}
        seats : #{details[:seats]}
        price : #{details[:price]}"
    end
end

def book_tick(movies)

    puts "Enter movie name"
    name = gets.chomp

    if movies.key?(name)
        puts "Enter number of seats"
        no = gets.chomp.to_i

        if no > 0 && no <= movies[name][:seats]
            movies[name][:seats] -= no
            price = movies[name][:price] * no
            puts "price : #{price}"
        else
            puts "Invalid number of tickets"
        end
    else
        puts "Invalid movie name"
    end
end

def cancel_ticket(movies)

    puts "Enter movie name to be cancelled : "
    name = gets.chomp

    if movies.key?(name)
        puts "Number of tickets to be cancelled"
        cancel = gets.chomp.to_i
        movies[name][:seats] += cancel
        puts "refund amount #{cancel * movies[name][:price]}"
    end
end


display_movies(movies)
book_tick(movies)
cancel_ticket(movies)
display_movies(movies)