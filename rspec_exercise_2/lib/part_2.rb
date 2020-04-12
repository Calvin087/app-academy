def palindrome?(word)
    i = word.length - 1
    nStr = ""

    while i >= 0
        nStr += word[i]
        i -= 1
    end
    return nStr == word
end


def substrings(str)
    newArr = []
    (0...str.length).each do |sIndex|
       (sIndex...str.length).each do |eIndex|
       newArr << str[sIndex..eIndex]
       end
    end
    return newArr
end

def palindrome_substrings(str)
    # arrays = substrings(str)

    # newArr = []

    # arrays.each do |word|
    #     if palindrome?(word) && word.length > 2
    #         newArr << word
    #     end
    # end
    #     return newArr

substrings(str).select { |substr| palindrome?(substr) && substr.length > 1 }
end