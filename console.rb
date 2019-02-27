require 'pry'
require_relative './book'
require_relative './author'

#test code here
##test 1: Book class
book1 = Book.new("Li", "titleA", 10000)
book2 = Book.new("Li", "titleB", 20000)
book3 = Book.new("Wang", "titleC", 30000)
book4 = Book.new("Wang", "titleD", 40000)

book1.author
book3.author
book1.title
book1.word_count 
book2.title
book2.word_count
book3.title
book3.word_count

Book.all

binding.pry
#test 2: Author class
author1 = Author.new("Li")
author2 = Author.new("Wang")

#The 4 lines below should return a Book instance. PASSED
book1 = author1.write_book("titleA", 10000) 
book3 = author2.write_book("titleC", 30000)
book2 = author1.write_book("titleB", 20000)
book4 = author2.write_book("titleD", 40000)

#test connection
author1.add_book(book1)
author1.add_book(book2)
author1.books #should return an array of book1 and book2 instances. PASSED

author2.add_book(book3)
author2.add_book(book4)
author2.books #should return an array of book3 and book4 instances. PASSED

author1.total_words #should return 30000
author2.total_words #should return 70000
Author.most_words #should return author2 instance
binding.pry


