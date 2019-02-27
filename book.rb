class Book

    attr_accessor :title, :word_count, :author

    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def author(author)
        author = Author.all.find do | author |
            author.book == self
        end
    end

    def title
        @title
    end

    def word_count
        @word_count
    end

end

book = Book.new("book", 1000)
book2 = Book.new("book2", 2000)

