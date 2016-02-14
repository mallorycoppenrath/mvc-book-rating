require_relative '../config/environment.rb'
require_relative 'seed.rb'

def reload!
  load('../config/environment.rb')
end

choice = 0

while choice != 'exit'

puts 'What is the name of the action you want to take?
You can add, find, or type index to see a current list of books!'

choice = gets.chomp.downcase

case choice

when 'add'
puts 'What is the title of the book you want to add?'
book_title = gets.chomp
puts "How would you rate this book? (Type a number 1 to 5.)"
rating = gets.chomp
controller = BooksController.new
controller.add(book_title)

when "find"
  puts 'What is the name of the book you want to see?'
  title = gets.chomp
  book = Book.find_by_name(title)
  puts "Book: #{book.title}"
  
when 'index'
 Book.all.each do |book|
  puts book.title
end
end

end
# ----------------------------------------
#   when "author"
#   puts 'What is the name of the action you want to take?'
#   action = gets.chomp

#   when "add"

#   puts 'What is the name of the author you want to add?'
#   author_name = gets.chomp
#   author = Author.new(author_name)
#   puts "Great you have created #{author.name}!"

# when "find"
#   puts 'What is the name of the author you want to see?'
#   author_name = gets.chomp
#   author = Author.find_by_name(name)
#   puts "Author: #{author_name.capitalize}"

# when "index"
#   Author.all.each do |author|
#       puts author.name
#   end
#     end
# end