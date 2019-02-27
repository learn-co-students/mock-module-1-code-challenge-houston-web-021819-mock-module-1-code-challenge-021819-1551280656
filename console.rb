require 'pry'
require_relative './book'
require_relative './author'

gabe_habash = Author.new('Gabe Habash')
andrew_sean_greer = Author.new('Andrew Sean Greer')
james_baldwin = Author.new('James Baldwin')
ofeigur_sigurdsson = Author.new('Ofeigur Sigurdsson')
cixin_liu = Author.new('Cixin Liu')

stephen_florida = gabe_habash.write_book('Stephen Florida', 28700)
fire_next_time = james_baldwin.write_book('The Fire Next Time', 10600)
giovanni = james_baldwin.write_book('Giovanni\'s Room', 15900)
oraefi = ofeigur_sigurdsson.write_book('Oraefi: The Wasteland', 40000)
three_body_problem = cixin_liu.write_book('The Three-Body Problem', 40000)
dark_forest = cixin_liu.write_book('The Dark Forest', 51200)
deaths_end = cixin_liu.write_book('Death\'s End', 60400)
less = andrew_sean_greer.write_book('Less', 27300)

binding.pry
gabe_habash
