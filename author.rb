class Author
  attr_accessor :books, :word_count
  @@all = []
  def initialize(books)
    self.books = books
    self.word_count = word_count
    @@all << self 
  end

  def self.all
    @@all
  end
   
  def self.most_words
    highest_count = 0
    Books.all.each do |x|
      if x.word_count > highest_count
        highest_count = x.word_count
      end
    end
    return x.author
  end


######## Instance Methods #########

  def total_words
    word_array = self.all.word_count
    word_array.inject {|sum, x| sum + x}
  end

  def write_books(title, word_count)
    Book.new(self, title, word_count)
  end
end
