
class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select do |book|
      book.author == self
    end
  end

  def write_book(title, word_count)
    Book.new(self, title, word_count)
  end

  def total_words
    sum_words = 0
    self.books.select do |book|
      sum_words = sum_words + book.word_count
    end
    sum_words
  end

  def self.most_words
    word_sums = (
      @@all.map do |author|
        author.total_words
      end )
    @@all.find do |author|
      author.total_words == word_sums.max
    end
  end

end