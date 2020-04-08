def hipsterfy(word)
    vowels = "aeiou"

    i = word.length - 1

    while i > 0
        if vowels.include?(word[i])
            word[i] = ""
            break
        end
        i -= 1
    end

    return word
end

def vowel_counts(str)
    str = str.downcase
    vowels = "aeiou"
    hash = Hash.new(0)

    i = 0
    while i < str.length
        if vowels.include?(str[i])
            hash[str[i]] += 1
        end
        i += 1
    end
    return hash
end

def caesar_cipher(str, n)
    alph = "abcdefghijklmnopqrstuvwxyz"
    newStr = ""

    str.each_char do |char|
        if alph.include?(char)       
            oldIn = alph.index(char)
            newIn = oldIn + n
            newChar = alph[newIn % 26]
            newStr += newChar
        else
            newStr += char
        end
    end
    return newStr
end

p caesar_cipher("apple!", 1)
# bqqmf