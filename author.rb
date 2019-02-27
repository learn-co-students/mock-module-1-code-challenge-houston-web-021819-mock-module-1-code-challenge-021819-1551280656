class Author
    attr_accessor :name, :book

    @@all = []

    def initialize(name, book)
        self.name = name
        self.book = book
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        Book.all.select do |book|
            if book.author == self.name
                book
            end
        end
    end

    def write_book(title, word_count)
        Book.new(self.name, title, word_count)
    end

    def total_words
        book_word_count = []
        Book.all.select do |book|
            if book.author == self.name
                book_word_count << book.word_count
            end
        end
        book_word_count.inject(0) {|sum, i|  sum + i }
    end

    def self.most_words
        @@all.max_by {|author| author.total_words}
    end

end



