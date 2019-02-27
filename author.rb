require 'pry'
require_relative './book.rb'
class Author
    attr_accessor :name, :book, :title, :words
    @@all = []
 def initialize(name, book)
    self.name = name
    self.book = book
    @@all << self
 end
 @@books = []
 def books(books)
    @@books << self.book
 end

 def self.all
  @@all.name 
 end
 def write_book(title, words)
    Book.new 
 end
 @@total_words = []
 
 def total_words
    @@total_words<< @@books.length
    @@total_words
 end

 def self.most_words
   most_words = @@total_words.max
   most_words
    
 end



end
