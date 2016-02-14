books = ['Self-Help', 'You Are A Little Bit Happier Than I Am', 'What We Talk About When We Talk About Love',
 'Tumble Home'].map do |title|
  Book.new(title) do |book|
    book.title = "#{title}"
    author = Author.new("#{author}")
    author.name = "#{author}"
    book.author = author
  end
end

['Raymond Carver', 'Tao Lin', 'Lorrie Moore', 'Amy Hempel'].each do |name|
  Author.new(name) do |author|
    author.name = "#{author.name}"
    book = Book.new("#{title}")
    book.title = "#{title}"
    author.book = book
  end
end