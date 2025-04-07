library = {
  "978-0143127741" => { title: "The Alchemist", author: "Paulo Coelho", copies: 5 },
  "978-0062315007" => { title: "Sapiens", author: "Yuval Noah Harari", copies: 3 },
  "978-0451524935" => { title: "1984", author: "George Orwell", copies: 4 }
}

# Add a new book
puts "Enter the new book's title:"
title = gets.chomp
puts "Enter the author's name:"
author = gets.chomp
puts "Enter the ISBN:"
isbn = gets.chomp
puts "Enter the number of copies:"
copies = gets.chomp.to_i
library[isbn] = { title: title, author: author, copies: copies }
puts "New book added!"

# Update copies
puts "Enter the ISBN to update copies:"
update_isbn = gets.chomp
if library[update_isbn]
  puts "Enter the new number of copies:"
  library[update_isbn][:copies] = gets.chomp.to_i
  puts "Book copies updated!"
end

# Remove a book
puts "Enter the ISBN to remove:"
remove_isbn = gets.chomp
if library.delete(remove_isbn)
  puts "Removed book with ISBN: #{remove_isbn}"
  puts "Book removed successfully!"
end

# Search a book
puts "Enter the ISBN to search:"
search_isbn = gets.chomp
book = library[search_isbn]
if book
  puts "Book Details:\nTitle: #{book[:title]}\nAuthor: #{book[:author]}\nCopies Available: #{book[:copies]}"
end

# List all books
puts "\nLibrary Catalog:"
puts "ISBN Title Author Copies"
library.each do |isbn, info|
  puts "#{isbn} #{info[:title]} #{info[:author]} #{info[:copies]}"
end
