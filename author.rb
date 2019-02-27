class Author
    attr_accessor :name
    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_words
        most_word_count = 0
        Author.all.each do |author|
            if author.total_words > most_word_count
                most_word_count = author.total_words
            end
        end
        Author.all.find do |author|
            author.total_words == most_word_count
        end
    end

    def write_book(title, word_count)
        new_book = Book.new(title,word_count)
        new_book.author = self
        return new_book
    end

    def books
        Book.all.select do |book|
            book.author == self
        end
    end 

    def total_words
        words = []
        self.books.each do |book|
            words << book.word_count
        end
        return words.inject(0){|sum,x| sum + x }
    end
end
