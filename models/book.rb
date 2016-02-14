class Book

attr_accessor :author, :title, :rating, :genre, :library

@@all = []

def initialize(title)
  @title = title
  @rating = rating
  @@all << self
end

def self.all
  @@all
end

def self.find_by_name(title)
  self.all.find do |book|
    book.title == title
end
end

def books
  books = Book.all
  selected_books = books.select do |book|
    book.author == self
  end
end

end