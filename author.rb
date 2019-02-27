class Author
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @books = []
        @@all << self
    end

    def self.all
        @@all
    end

    def write_book(book_title, book_word_count)
        new_book = Book.new(self, book_title, book_word_count)
        new_book
    end

    def add_book(book)
        @books << book
        book.author = self
    end

    def books
        @books
    end

    def author_name
        self.author.name
    end

    def total_words
        sum = 0
        @books.inject(0) do | sum, book | 
            sum + book.word_count 
        end
    end

    def self.most_words
        most_words = 0
        author_with_most_words = nil
        self.all.each do | author |
            if author.total_words > most_words
                most_words = author.total_words
                author_with_most_words = author
            end
        end
        author_with_most_words
    end
end
