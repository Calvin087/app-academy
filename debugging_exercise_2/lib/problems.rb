# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.


def largest_prime_factor(num)
    count = 0

    (2..num).each do |numz|
        if  isPrime(numz) && num % numz == 0
            count = numz
        end     
    end
    return count
end

def isPrime(num)
    if num < 2
        return false
    end
    
    (2...num).each do |number|
        if num % number == 0
            return false
        end
    end
    true
end