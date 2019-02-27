require_relative './author.rb'

class Book


  attr_accessor :title, :author, :word_count

  @@all = []

  def initialize()
    @title = title
    @author = author
    @word_count = word_count
  end

  def self.all
    Author.books
  end


  def author
    @author
  end

  def title
    @title
  end

  def word_count
    @word_count
  end

end
