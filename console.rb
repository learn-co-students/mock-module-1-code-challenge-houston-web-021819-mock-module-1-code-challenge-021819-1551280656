require 'pry'
require_relative './book'
require_relative './author'


reynolds = Author.new("Alister Reynolds")
banks = Author.new("Ian M. Banks")
asher = Author.new("Neal Asher")
hamilton = Author.new("Peter F. Hamilton")

revelation = reynolds.write_book("Revelation Space", 91000)
redemption = reynolds.write_book("Redemption Ark", 88000)
absolution = reynolds.write_book("Absoluteion Gap", 108000)
consider = banks.write_book("Consider Phlebus", 135000)
player = banks.write_book("The Player Of Ganes", 79000)
weapons = banks.write_book("Use of Weapons", 100000)
sonata = banks.write_book("The Hydrogen Sonata", 184000)
skinner = asher.write_book("The Skinner", 87000)
technician = asher.write_book("The Technician", 99000)
intelligence = asher.write_book("Dark Intelligence", 102000)
factory = asher.write_book("War Factory", 108000)
infinity = asher.write_book("Infinity Engine", 109000)
dysfunction = hamilton.write_book("The Reality Dysfunction", 300000)
alchemist = hamilton.write_book("The Neutronium Alchemist", 330000)
naked = hamilton.write_book("The Naked God", 350000)
pandora = hamilton.write_book("Pandora's Star", 250000)
judas = hamilton.write_book("Judas Unchained", 291000)


binding.pry


puts "All done!"