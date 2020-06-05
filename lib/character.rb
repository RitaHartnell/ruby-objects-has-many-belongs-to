class Character
    attr_reader :name, :book, :signature

    @@all = []

    def initialize(name, book, signature)
        @name = name
        @book = book
        @signature = signature
        @@all <<self
    end

    def self.all
        @@all
    end
    
end