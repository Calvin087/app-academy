class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  
  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    matching_chars = []

    @secret_word.each_char.with_index do | s_char, ind |
      if char == s_char
        matching_chars << ind
      end
    end
    matching_chars
  end

  def fill_indices(char, arr)
    arr.each do |ind|
      @guess_word[ind] = char
    end
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts "already attempted dummy"
      return false
    end

    @attempted_chars << char

    matching = self.get_matching_indices(char)
    self.fill_indices(char, matching)
    @remaining_incorrect_guesses -= 1 if matching.empty?
    true
  end

  def ask_user_for_guess
    puts "Enter a character"
    their_guess = gets.chomp
    return self.try_guess(their_guess)
  end

  def win?
    if @guess_word.join("") == @secret_word
      puts "WIN"
      return true
    else
      return false
    end
  end

    def lose?
      if @remaining_incorrect_guesses == 0
        puts "LOSE"
        return true
      else
        false
      end
    end

    def game_over?
      if self.win? || self.lose?
        puts @secret_word 
        return true
      else
        return false
      end
    end

end
