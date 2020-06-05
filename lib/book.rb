class Book

    attr_reader :name, :author

    def initialize(name, author)
        @name = name
        @author = author
    end

    def characters
        Character.all.select{ |char|
            char.book == self
        }
    end

    def new_character(name, signature)
        new_char = Character.new(name, self, signature)
    end

    def best_character
        "The objectively best character in #{self.name} (in your opinion) is #{self.characters[0].name} and 
        their signature is their #{self.characters[0].signature}! Eh, no accounting for taste."
    end

end