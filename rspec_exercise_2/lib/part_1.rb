require "byebug"

def partition(arr, n)
    arr1 = []
    arr2 = []
    arr.each do |num|
       if num >= n
        arr2 << num
       else
        arr1 << num
       end
    end
    return [arr1] + [arr2]
end

def merge(hash1, hash2)
    return hash1.merge(hash2)
end



def censor(str, curse_arr)
    strN = str.split(" ")

    newStr = strN.map do |word|
        if curse_arr.include?(word.downcase)
            starW(word)
        else 
            word
        end
    end
    return newStr.join(" ")
end

def starW(word)
    vowels = "aeiou"

    string = ""

    word.each_char do |char|
        if vowels.include?(char.downcase)
            string += "*"
        else
            string += char
        end
    end
    return string
end

debugger

def power_of_two?(num)

    powerOf = 1

    while powerOf < num
        powerOf *= 2
    end

    return powerOf == num
end

p power_of_two?(16)
# to eq(true)