class Player
    attr_accessor :lives

    def initialize(lives = 3)
        @lives = lives
    end

    def lose_life
        @lives -= 1
    end
    
    def out_of_lives?
        @lives <= 0
    end

    def to_s
        "Player#{player_number}: #{@lives}/3"
    end

    private

    def player_number
        object_id % 2 + 1
    end
end