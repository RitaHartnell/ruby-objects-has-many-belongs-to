#require 'pry'

require_relative "./book.rb"
require_relative "./character.rb"

#test file


harry_potter1 = Book.new("Harry Potter and the Sorcerers Stone", "J.K. Rowling")

harry_charry = 
[["Harry Potter", "lightning bolt scar"], 
["Hermionie Granger", "big brain"], 
["Ron Weasly", "big heart"],
["Lord Voldemort", "big badness"],
["Crookshanks", "big floof"]
]

harry_charry.map { |char|
    Character.new(char[0], harry_potter1, char[1])
}

#binding.pry

puts harry_potter1.best_character

