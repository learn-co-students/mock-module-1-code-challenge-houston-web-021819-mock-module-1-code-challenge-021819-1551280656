class Author

    #should return all of the authors
    def authors_all
        @authors
    end
    

    #should return all of the books an author has written
    def author_books
        @books
    end

    #should take arguments of a title and word count and make a new Book instance associated with this author
    def author_write_book(title, word_count)
        @title.select[:title] 
        @word_count
    end

    #should return the total number of words that author has written across all of their authored books.
    def author_total_words 
        @word_count
    end

    #should return the author instance who has written the most words
    def author_most_words


    end

end

