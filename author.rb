class Author 
    @@all = []
    attr_accessor :books, :title, :word_count

    def initialize(books: )
        self.books = books
        @@all << books
    end

    def write_book(title:, word_count:)
        new_book_instance = Book.new(title, word_count, self.author)
    end

    def total_words
        sum_words = 0
        self.books.each {|book| sum_words += book}
        return sum_words
    end

    def self.most_words 
        # need to access each instance of total_words,
        # run a comparison,
        # return the largest value
        author_with_most_words = nil
        Author.all.each do |author|
            author_with_most_words = author.total_words.map.max
        end
        author_with_most_words
    end



end

