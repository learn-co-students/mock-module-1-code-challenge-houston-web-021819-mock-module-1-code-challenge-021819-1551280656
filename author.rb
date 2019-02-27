require_relative './book.rb'

class Author

  attr_accessor :name, :books, :total_word_count

  @@all = []
  @@books = []


  def initialize(name)
    @name = name
    @books = []
    @total_word_count = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def self.books
    @@books
  end

  def total_word_count
    @total_word_count
  end

  def books
    @books
  end

  def write_book(title, word_count)
    new_book = Book.new()
    new_book.title = title
    new_book.word_count = word_count
    new_book.author = self
    @@books << new_book
    @books << new_book
  end

  def total_words
    words = []
    self.books.each do |book|
      words << book.word_count.to_i
    end
    words.sum
  end

  def self.most_words
    words = []
    total_words = []
    self.all.each do |author|
      author.books.each do |book|
        words << book.word_count.to_i
        author.total_word_count = words.sum
      end
      words = []
    end
    self.all.each do |author|
    total_words << author.total_word_count
  end
    self.all.find {|author| author.total_word_count == total_words.max}
  end




end
