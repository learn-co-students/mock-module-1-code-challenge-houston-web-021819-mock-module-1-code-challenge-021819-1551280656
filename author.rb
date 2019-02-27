class Author
    attr_accessor :books, :name
    @@all = []

    def initialize(name, books=[])
        self.name = name
        self.books = books
        @@all << self
        @books = []
    end

    def self.all 
        @@all.map do |author|
            author
        end
    end

     def add_book(book)
         book.author = self
         @title = book.title
         @word_count = book.word_count
         @books << book

     end

    def write_book(title, word_count=0)
        title = Book.new(title, word_count)
        
        @title = title
        @word_count = word_count
        title.author = self
        @books << title
    end

    def book 
        @title
    end

    def books
        @books
    end

    def total_words
        total = 0
        self.books.each do |book|
            total += book.word_count
        end
        total
    end

    def self.most_words
        
        author_with_most_words = nil
        self.all.each do |author|
            if author_with_most_words==nil 
                 author_with_most_words = author
            elsif  author_with_most_words.total_words<author.total_words
                author_with_most_words = author
            end
        end
        author_with_most_words.name
     end

end
