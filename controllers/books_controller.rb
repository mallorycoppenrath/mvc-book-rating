class BooksController

def add(title)
  book = Book.new(title)
  rating = book.rating
  puts "Great you have added #{book.title} with a rating of #{rating}!"
end

def find(title)
  book = Book.find_by_name(title)
  puts "Book: #{book.title.capitalize}"
end

def display
Book.all.each do |book|
    puts "book: #{book.title}"
  end
end

end