class Book

    attr_accessor :book, :author, :title, :word_count

    def initialize(book, author, title, word_count)
        @book = book
        @author = author
        @title = title
        @word_count = word_count
    end

end

#- `Book.all`
#should return all of the books
#- `Book#author`
#should return the author instance who wrote this book
#- `Book#title`
#should return the title of the book
#- `Book#word_count`
#should return the number of words in the book

#`ruby console.rb`