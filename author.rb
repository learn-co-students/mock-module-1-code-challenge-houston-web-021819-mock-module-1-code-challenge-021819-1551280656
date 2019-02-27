class Author
attr_accessor :name :book

@@all = []

  def initialize(name:, book:)
    self.name = name
    self.book = book
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    authors_books = []
    Author.select do |Auth|
    authors_books << author.books
    end
  authors_books
  end

  def write_book(title, word_count)
    Book.new(title, word_count, self)
  end

  def total_words
    authors_books = self.books
    word_count = authors_books.all.select do |word_count|
    find_word_total = word_count.each { |a| sum+=a }
    end
  return find_word_total
  end

  def most_words
    self.all.total_words.max
  end
end
