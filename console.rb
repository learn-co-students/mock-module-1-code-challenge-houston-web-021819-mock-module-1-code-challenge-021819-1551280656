require 'pry'
require_relative './book'
require_relative './author'



c_book1 = Book.new('Charles', 'Alice in Wonderland', 500)
c_book2 = Book.new('Charles', 'Hello World', 600)

e_book1 = Book.new('Emily', "You Got This", 700)

charles = Author.new('Charles', 'Alice in Wonderland')
emily = Author.new('Emily', "You Got This")

binding.pry


