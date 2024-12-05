class Author

    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
     end
# the initialization also had that array of intances(of the Book class)error.
#before thgis I had--- def initialize(name, books=[])--which is not abstract or a good practice
#So now the initialization looks better
     
    def self.all 
        @@all
    end

    def books
        Book.all.select {|book| book.author ==self}
    end

    def write_book(title, word_count)
        new_book = Book.new(title, word_count)
        new_book.author = self
        new_book
        
    end

    def add_book(book)
         book.author = self
         @@all << self
     end

    

    # def total_words
    #     total = 0
    #     self.books.each do |book|#that error array of instances in this line(also) author need not have an array of all the instances of the book.
    #         total += book.word_count
    #     end
    #     total
    # end
    # =begin
    #  In the above one, I used an array of instances(of Book class). 
    # Since, it is not a good practice to have an array of instances of another class inside
    # your class, moving forward to have the book to keep track of all its authors. 
    # And am going to iterate over that
    # =end

    def total_words
        total = 0
        Book.all.each do |book|
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
        author_with_most_words
     end

end
