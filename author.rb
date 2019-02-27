class Author
attr_accessor :name, :books

@@all = []

  def initialize(name,books)
    @name = name
    @books = books
    @@all << self

    def self.all
      @@all
    end

    def books
      author.books.select |books| == self
    end
    books
  end

    def write_book(title, word_count)
      Book.new(title, self, word_count)
    end

    def total_words
      total_number.all.select {|word_count| word_count.books}
      word_count += word_count.books
    end
    total_words
  end



    def Self.most_words
      author_with_most_words = nil
      @@all.each do |current_author|
        author_with_most_words.word_count.length < current_author.word_count.length
      end
    end
    author_with_most_words
  end




  - `Author#total_words`
  should return the total number of words that author has written across all of their authored books.
  - `Author.most_words`
  should return the author instance who has written the most words
