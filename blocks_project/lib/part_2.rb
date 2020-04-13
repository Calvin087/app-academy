def all_words_capitalized?(arr)
    arr.all? { |word| word == word.capitalize}
end

def no_valid_url?(str)
    ending = ['.com', '.net', '.io', '.org']
    
    str.none? do |url|
        ending.any? { |endy| url.end_with?(endy) }
    end
end

def any_passing_students?(array)
    array.any? do |student|
        grades = student[:grades]
        avg = grades.sum / (grades.length * 1.0)
        avg >= 75
    end
end