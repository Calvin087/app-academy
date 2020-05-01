require_relative "board"
require_relative "player"

class Battleship

    attr_reader :board, :player, :remaining_misses

    def initialize(num)
        @player = Player.new
        @board = Board.new(num)
        @remaining_misses = @board.size * 0.5
    end

    def board
        @board
    end

    def player
        @player
    end

    def start_game
        @board.place_random_ships
        puts "Number of ships remaining #{@board.num_ships}"
        @board.print
    end

    def lose?
        if @remaining_misses <= 0
            puts "You lose"
            true
        else
            false
        end
    end

    def win?
        if @board.num_ships == 0
            puts "you win"
            return true
        else
            return false
        end
    end

    def game_over?
        if self.lose? || self.win?
            return true
        else
            return false
        end
    end

    def turn
        guess = @player.get_move
        if @board.attack(guess) == false
            @remaining_misses -= 1
        end
        @board.print
        puts "Remaining misses #{@remaining_misses}"
    end

end
