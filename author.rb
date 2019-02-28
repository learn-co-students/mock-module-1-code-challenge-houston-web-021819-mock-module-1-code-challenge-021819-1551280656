class Author 
    attr_accessor :name
    @@all = []

    def initialize(name: )
        self.name = name
        @@all << self
    end
    
    def self.all
        @all
    end

    def books
        Book.all.select do |book|
            book.author == self
        end
    end

    def write_book(title: ,word_count: )
        new_book = Book.new(title: title, word_count: word_count, author: self)
    end

    def total_words
        words_array = []
        books.each do |x|
            words_array << x.word_count
        end
        sum = 0
        words_array.each { |a| sum+=a }
        sum
    end

end

