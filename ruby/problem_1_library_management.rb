
# Problem 1: Library Management System

# Base class
class LibraryItem
  attr_accessor :title, :author, :publication_year

  def initialize(title, author, publication_year)
    @title = title
    @author = author
    @publication_year = publication_year
  end

  def due_date(loan_period_days = 14)
    Date.today + loan_period_days
  end
end

# Book subclass
class Book < LibraryItem
  attr_accessor :isbn, :number_of_pages

  def initialize(title, author, publication_year, isbn, number_of_pages)
    super(title, author, publication_year)
    @isbn = isbn
    @number_of_pages = number_of_pages
  end
end

# DVD subclass
class DVD < LibraryItem
  attr_accessor :running_time, :genre

  def initialize(title, author, publication_year, running_time, genre)
    super(title, author, publication_year)
    @running_time = running_time
    @genre = genre
  end

  def due_date(loan_period_days = 7)
    Date.today + loan_period_days
  end
end

# Magazine subclass
class Magazine < LibraryItem
  attr_accessor :issue_number, :publisher

  def initialize(title, author, publication_year, issue_number, publisher)
    super(title, author, publication_year)
    @issue_number = issue_number
    @publisher = publisher
  end
end

# Demo
require 'date'

book = Book.new("Ruby 101", "Jane Doe", 2022, "123-456789", 350)
dvd = DVD.new("Inception", "Christopher Nolan", 2010, "148 min", "Sci-Fi")
magazine = Magazine.new("Tech Weekly", "Tech Media", 2024, "42", "Tech Pub")

puts "Book Due Date: #{book.due_date}"
puts "DVD Due Date: #{dvd.due_date}"
puts "Magazine Publisher: #{magazine.publisher}"
