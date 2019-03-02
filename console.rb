require 'pry'
require_relative './book'
require_relative './author'


author2 = Author.new(name: "Jess")
author1 = Author.new(name: "Bobby")
book1 = Book.new(author: author1, title: "the book title", word_count: 23)
book2 = Book.new(author: author2, title: "blah", word_count: 90)
book3 = Book.new(author: author1, title: "third book", word_count: 12323)
book4 = Book.new(author: author2, title: "flatiron", word_count: 78)


binding.pry


