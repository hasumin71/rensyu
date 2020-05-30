class Book
  def initialize(title,price)
    @title = title 
    @price = price 
  end
end

book = Book.new("ぼくの夏休み",600)
puts book.title