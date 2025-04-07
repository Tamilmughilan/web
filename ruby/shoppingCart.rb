class Product
  attr_accessor :name, :quantity, :price

  def initialize(name,quantity,price)
    @name = name
    @quantity = quantity
    @price = price
  end

  def discounted_price
    if @quantity > 5
      @price * 0.9
    else
      @price
    end
  end

  def total_price
    @quantity * discounted_price
  end
end

class ShoppingCart
  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def calculate_total
    total = 0.0
    @products.each do |product|
      total += product.total_price
    end
    total
  end
end

laptop = Product.new("Laptop", 1, 800)
headphones = Product.new("Headphones", 6, 50)  
mouse = Product.new("Mouse", 3, 25)

cart = ShoppingCart.new
cart.add_product(laptop)
cart.add_product(headphones)
cart.add_product(mouse)

final_total = cart.calculate_total
puts "Final total: $#{final_total}"
