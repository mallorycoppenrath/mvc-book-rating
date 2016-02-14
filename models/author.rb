class Author

attr_accessor :name, :book_title, :book, :library

@@all = []

def initialize(name)
  @name = name
  # @book_title = book_title
  @@all << self
end

def self.all
  @@all
end

def books
  books = Book.all
  selected_books = books.select do |book|
    book.author == self
  end
end

def add_book(title)
  book.author = self
end

def find_by_name(author_name)
  self.all.find do |author|
      author.name == name
  end
end


end