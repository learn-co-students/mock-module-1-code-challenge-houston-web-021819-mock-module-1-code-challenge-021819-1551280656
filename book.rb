require 'pry'
require_relative './author.rb'
class Book
    attr_accessor :title, :author,  :word_count
    @@all = []
    def initialize(title, author, word_count)
       self.title = title
       self.author = author 
       self.word_count = word_count
       @@all << self
    end

    def self.all
     @@all
    end

end
