class Book
    
    attr_accessor :author, :title, :word_count

    @@all = []
    def initialize(title, word_count)
        @books = []
        self.author = author
        self.title = title  
        self.word_count = word_count 
        @books << title
        @@all << self
    end

    # def word_count
    #     self.word_count
    # end

    def self.all
        @@all.map do |book|
            book.title
        end
    end

end
