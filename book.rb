class Book
    @@all = []
    attr_accessor :author, :title, :word_count

    def initialize(author, title, word_count)
        @author = author
        @title = title
        @word_count = word_count
        
        @@all << self
    end

    def self.all
        @@all
    end
end
