class Player
    attr_accessor :lives, :player_number

    def initialize(player_number, lives = 3)
        @player_number = player_number
        @lives = lives
    end

    def lose_life
        @lives -= 1
    end

    def current_lives
       puts "Player#{@player_number} has #{@lives}/3 lives left"
    end

    def to_s
        "Player#{@player_number}"
      end
end