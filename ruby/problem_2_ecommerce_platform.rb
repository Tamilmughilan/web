
# Problem 2: E-Commerce Platform

# Base class
class Product
  attr_accessor :name, :price, :description

  def initialize(name, price, description)
    @name = name
    @price = price
    @description = description
  end

  def discount
    @price * 0.10 # Default 10% discount
  end
end

# Book subclass
class Book < Product
  attr_accessor :author, :isbn

  def initialize(name, price, description, author, isbn)
    super(name, price, description)
    @author = author
    @isbn = isbn
  end

  def discount
    @price * 0.15 # Books get 15% discount
  end
end

# Clothing subclass
class Clothing < Product
  attr_accessor :size, :color

  def initialize(name, price, description, size, color)
    super(name, price, description)
    @size = size
    @color = color
  end

  def discount
    @price * 0.05 # Clothing gets 5% discount
  end
end

# Demo
book = Book.new("Ruby Mastery", 50.0, "Programming Guide", "Alice", "111-XYZ")
shirt = Clothing.new("T-Shirt", 20.0, "Cotton shirt", "M", "Blue")

puts "Book Discount: $#{book.discount}"
puts "Clothing Discount: $#{shirt.discount}"
