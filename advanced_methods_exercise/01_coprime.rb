# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1, num_2)

    nums = [num_1, num_2]
    sort = nums.sort
    highestNum = sort[1]
 
    final = (2..highestNum).each do |num|
        if highestNum % num == 0
            return false
        else
            return true
        end
    end
    return final
end
# Working piece of crap

# Actual Solution
def coprime?(num_1, num_2)
    (2..num_1).none? { |factor| num_1 % factor == 0 && num_2 % factor == 0}
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
