class Book

    attr_accessor :author, :title, :word_count
    @@all = []

    def initialize(author: ,title: ,word_count: )
        self.author = author
        self.title = title
        self.word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end



   
end

