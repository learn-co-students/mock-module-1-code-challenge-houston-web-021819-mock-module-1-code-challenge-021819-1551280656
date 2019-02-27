class Author
  @@all = []
  attr_accessor :name

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    Book.all.select do |novel|
      novel.author == self
    end
  end

  def write_book (title, word_count)
    Book.new(self, title, word_count)
  end

  def total_words
    word_count_sum = 0
    self.books.each do |authors_books|
      word_count_sum += authors_books.word_count
    end
    word_count_sum
  end

  def self.most_words
    leading_author = nil
    leader = 0
    self.all.each do |author|
      if author.total_words > leader
        leader = author.total_words
        leading_author = author
      end
    end
    leading_author
  end
end
