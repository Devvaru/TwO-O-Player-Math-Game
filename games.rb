class Game
    attr_accessor :players, :current_player, :question, :answer

    def initialize(player1, player2, current_player = player2, other_player = player1)
        @players = [player1, player2]
        @current_player = current_player
        @other_player = other_player
    end

    def generate_question
        num1 = rand(21)
        num2 = rand(21)
        @question = "#{num1} + #{num2}?"
        @answer = num1 + num2
    end

    def ask_question
        generate_question

        player_swap

        puts "#{@current_player.to_s}: what's #{@question}"
        user_answer = gets.chomp.to_i

        if user_answer == @answer
            puts "You're right!"
        else
            puts "Incorrect!"
            @other_player.lose_life
            @other_player.current_lives
        end
    end

    def player_swap
        @current_player, @other_player = @other_player, @current_player
    end

    def out_of_lives
        if @players[0].lives == 0
            puts "#{@players[1]} wins!"
        elsif @players[1].lives == 0
            puts "#{@players[0]} wins!"
        end
    end

    def match
        loop do
            ask_question
            break if @players[0].lives == 0 || @players[1].lives == 0
        end
        out_of_lives
    end
end