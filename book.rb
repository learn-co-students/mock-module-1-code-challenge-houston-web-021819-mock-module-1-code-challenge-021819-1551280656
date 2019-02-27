class Book
attr_accessor :name :author

@@all = []


  def initialize(name:, author:)
    self.name = name
    self.author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    self.all.select do |book|
      author.book == self
  end

  def title
    name.book == self
  end

  def word_count
    self.all.select do |book|
    word_count.book == self
    end
  end
end
