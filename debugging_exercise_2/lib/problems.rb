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

def unique_chars?(str)
    alreadySeen = []
    
    str.each_char do |char|
        if alreadySeen.include?(char)
            return false
        end
        alreadySeen << char
    end
    return true
end

def dupe_indices(array)
    hash = Hash.new { |h, k| h[k] = [] }
    array.each_with_index do |ele, ind|
        hash[ele] << ind
    end
    return hash.select { |ele, arr| arr.length > 1 }
end

def ana_array(arr1, arr2)
    if hash_help(arr1) == hash_help(arr2)
        return true
    end
    return false
end

def hash_help(arr)
    count = Hash.new(0)
    arr.each { |ele| count[ele] +=1 }
    return count
end

p ana_array(["i","c","e","m","a","n"], ["c","i","n","e","m","a"])
# to eq(true)