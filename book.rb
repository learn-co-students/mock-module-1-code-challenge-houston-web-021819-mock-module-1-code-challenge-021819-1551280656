class Book
    @@all = []
    attr_accessor :author, :title, :word_count

    def initialize(author: ,title: ,word_count: )
        self.author = author
        self.title = title
        self.word_count = word_count
        @@all << self
    end

    def self.all 
        @@all 
        # book_array = []
        # self.all.each do |x|
        #     book_array << x.title
        # end
        # if you want just the book titles???
    end



end

