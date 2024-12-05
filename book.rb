class Book
    
    attr_accessor  :title, :word_count, :author

    @@all = []
    def initialize(title, author=nil, word_count)
        #@books = []
        @author = author
        @title = title  
        @word_count = word_count 
        #@books << title
        @@all << self
    end
   def self.all
        @@all
    end
    # def author 
    #     @author
    # end
    # def title
    #     self.title
    # end
    # def word_count
    #     self.word_count
    # end

end
