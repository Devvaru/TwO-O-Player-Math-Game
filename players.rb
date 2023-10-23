class Player
    attr_accessor :name, :lives

    def initialize(name = gets.chomp, lives = 3)
        @name = name
        @lives = lives
    end
end