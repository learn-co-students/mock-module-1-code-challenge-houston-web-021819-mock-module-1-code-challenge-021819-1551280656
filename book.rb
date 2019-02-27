class Book
    @@all =[]
    attr_accessor :name,:author, :title, :word_count
    def initialiaze(author,title,name)
        self.name = name
        self.author = author
        self.title = title
        self.word_count = world
        @@all << self
    end 
    def self.all
        @@all
    end 
    def word_count()
        self.words.size
    end
    end 
