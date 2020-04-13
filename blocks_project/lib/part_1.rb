def select_even_nums(array)
    array.select { |n| n.even? }
end

def reject_puppies(array)
    array.reject { |i| i["age"] <= 2 }
end

def count_positive_subarrays(array)
    return array.count { |arr| arr.sum > 0 }
end

def aba_translate(str)
    vowel = "aeiou"

    word = ""

    str.each_char do |char|
        if vowel.include?(char)
            word += char + "b" + char
        else
            word += char
        end
    end
    return word
end

def aba_array(arr)
    newArr = arr.map { |word| aba_translate(word) }

    return newArr
end