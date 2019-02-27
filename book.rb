class Book
attr_accessor :author, :title, :word_count
@@all = []

  def initialize(author, title, word_count)
    @author = author
    @title = title
    @word_count = word_count
    @@all << self

    def self.all
      @@all
    end

    def author
    end

    def title
    end

    def word_count
    end
end
