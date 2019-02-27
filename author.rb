class Author

    attr_accessor :name

    @@all = []

    def initialze(name)
        @name = name
        @@all << self
        @books = []
    end

    def self.all
        @@all
    end

    def books(book)
        @books << book
        book.author = self
    end

    def write_book(book)
        book = Book.new()
    end

    def total_words
        total_words = 0
        Book.word_count.each do | word_count |
            total_words += word_count
        end
    end

    def most_words
        most_words = nil
        Book.word_count.each do | word_count |
            if most_words = nil || most_words < word_count
                most_words = word_count
            end
        end
    end

end

author = Author.new("Name")


