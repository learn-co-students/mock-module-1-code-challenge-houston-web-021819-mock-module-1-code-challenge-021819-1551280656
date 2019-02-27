class Author
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
      Book.all.select do |book| 
        book.author.name == self.name
      end
    end

    def write_book(title, word_count)
        book = Book.new(title, @name)
        book.word_count = word_count
    end

    def total_words
       author_book = Book.all.select {|book| book.author.name == self.name}
       total_words = 0
       author_book.map do |book|
        total_words += book.word_count
       end
       total_words
    end

    def self.most_words
        book_word_count = 0
        Book.all.map do |current_book|
            if current_book.word_count > book_word_count
                current_book.word_count = book_word_count
                Author.all.select {|author| author.name == current_book.author.name}  # get author instance
            end
        end

    end
end