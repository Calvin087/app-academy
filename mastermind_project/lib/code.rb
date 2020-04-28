class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  def self.valid_pegs?(arr)
    if arr.all? { |ele| POSSIBLE_PEGS.has_key?(ele.upcase) }
      true
    else
      false
    end

  end

  def initialize(arr)

    @pegs = []

    if Code.valid_pegs?(arr)
        @pegs = arr.map(&:upcase)
      return true
    else
      raise "error"
    end
  end

  def pegs
    @pegs
  end

  def self.random(length)
    random_pegs = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
    return Code.new(random_pegs)
  end

  def self.from_string(str)
    str_n = str.split("")
    Code.new(str_n)
  end

  def [](num)
    @pegs[num]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess_str)
    count = 0

    (0...guess_str.length).each do |i|
      count +=1 if guess_str[i] == self[i]
    end

    return count
  end

  def num_near_matches(guess_str)
    count = 0

    (0...guess_str.length).each do |i|
      if guess_str[i] != self[i] && self.pegs.include?(guess_str[i])
        count += 1
      end
    end
    return count
  end

  def ==(code)
    self.pegs == code.pegs
  end


end
