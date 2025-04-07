class Product
  attr_accessor :name, :price, :description

  def initialize(name,price,description)
    @name = name
    @price = price
    @description = description
  end

  def discount
    @price * 0.9
  end
end

class Book < Product
  attr_accessor :author, :isbn

  def initialize(name,price,description,author,isbn)
    super(name,price,description)
    @author = author
    @isbn = isbn
  end

  def discount
    @price * 0.85
  end
end

class Clothing < Product
  attr_accessor :size, :color

  def initialize(name,price,description,size,color)
    super(name,price,description)
    @size = size
    @color = color
  end

  def discount
    @price * 0.8
  end
end

# Creating instances
book = Book.new("Ruby for Beginners", 50, "Learn Ruby from scratch", "John Doe", "123456789")
clothing = Clothing.new("T-Shirt", 30, "Cotton t-shirt", "M", "Blue")

# Accessing attributes
puts "Book: #{book.name}, Author: #{book.author}, Price after discount: $#{book.discount}"
puts "Clothing: #{clothing.name}, Size: #{clothing.size}, Price after discount: $#{clothing.discount}"
