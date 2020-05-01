class Board

    attr_reader :size

    def initialize(n)
        @size = n * n
        @grid = Array.new(n){Array.new(n, :N)}
    end

    def [](position)
        row, col = position
        @grid[row][col]
    end

    def []=(position, val)
        row, col = position
        @grid[row][col] = val
    end

    def num_ships
        @grid.flatten.count { |ele| ele == :S }
    end

    def attack(position)
        if self[position] == :S
            self[position] = :H
            puts "You sunk my battleship!"
            return true
        else
            self[position] = :X
            return false
        end
    end

    def place_random_ships
        total_ships = @size * 0.25
        
        while self.num_ships < total_ships
            r_col = rand(0...@grid.length)
            r_row = rand(0...@grid.length)
            pos = [r_col, r_row]
            self[pos] = :S
        end
    end

    def hidden_ships_grid
        @grid.map do |row|
            row.map do |ele|
                if ele == :S
                     :N
                else
                     ele
                end
            end
        end
    end

    def self.print_grid(grid)
        grid.map do |row|
            puts row.join(" ")
        end
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(hidden_ships_grid)
    end

end
