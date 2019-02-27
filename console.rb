require 'pry'
require_relative './book'
require_relative './author'

JKR = Author.new("J.K. Rowling")
sorcerers_stone = JKR.write_book("The Sorcerer's Stone", 40000)
the_chamber_of_secrets = JKR.write_book("The Chamber of Secrets", 50000)

CSL = Author.new("C.S. Lewis")
lion_witch_wardrobe = CSL.write_book("The Lion, the Witch, and the Wardrobe", 30000)
prince_caspain = CSL.write_book("Prince Caspain", 35000)
dawn_treader = CSL.write_book("Voyage of the Dawn Treader", 45000)

Tolkien = Author.new("J.R.R. Tolkien")
the_hobbit = Tolkien.write_book("The Hobbit", 70000)
the_fellowship = Tolkien.write_book("The Fellowship of the Ring", 150000)
the_two_towers = Tolkien.write_book("The Two Towers", 200000)
the_return_of_the_king = Tolkien.write_book("The Return of the King", 300000)


binding.pry


puts "done!"