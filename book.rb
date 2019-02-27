class Book
    @@all = []
    attr_accessor :title, :author, :word_count
    def initialize(title, author)
        @title = title
        @author = author
        @@all << self
        @word_count = 0 #default 0 so it can be used in the Author#total_words
    end

    def self.all
        @@all 
    end

    def author
        author = Author.new(@author)  
        author
    end 

    def title
        @title
    end

    def word_count
        @word_count 
    end
end

