class Match
    attr_accessor :score, :players

    def initialize(player1, player2)
        @score = [player1.lives, player2.lives].map(&:to_i)
        @players = [player1, player2]
    end

    def generate_question
        num1 = rand(21)
        num2 = rand(21)
        @question = "#{num1} + #{num2}?"
        @answer = num1 + num2
    end

    def ask_question
        generate_question
        current_player = @players[@score.sum % 2] # Alternates between player1 and player2

        puts "#{current_player}, what's #{@question}"
        user_answer = gets.chomp.to_i

        if user_answer == @answer
            puts "You're right!"
        else
            puts "Incorrect! #{current_player} loses a life."
            current_player.lives -= 1
            @score[@score.sum % 2] = current_player.lives
        end

        @score.each_with_index do |lives, i|
            puts "#{@players[i]} has #{lives} lives left."
        end
    end
end