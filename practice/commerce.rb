class Product

    attr_accessor :name, :price, :description

    def initialize(name, price, description)
        @name = name
        @price = price
        @description = description
    end

    def discount
        @price * 0.9
    end
end

class Book < Product

    attr_accessor :author, :title

    def initialize(name,price,description, author, title)
        super(name, price, description)
        @author = author
        @title = title
    end

    def discount
        @price * 0.85
    end
end

class Shoes < Product

    attr_accessor :size, :sport

    def initialize(name, price, description, size, sport)
        super(name, price, description)
        @size = size 
        @sport = sport
    end

    def discount
        @price * 0.75
    end
end

b1 = Book.new("a",100,"book a","sins","a book")
s1 = Shoes.new("nike", 7995, "Air max 5", 11, "tennis")

puts "
Book : #{b1.name}
title : #{b1.title}
Author : #{b1.author}
price : #{b1.price}
"
puts "
Brand : #{s1.name}
model : #{s1.description}
price : #{s1.price}
size : #{s1.size}
sport : #{s1.sport}
"