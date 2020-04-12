def average(num1, num2)
 (num1 + num2) / 2.0
end

def average_array(arr)
    # sum = arr.inject(0) { |sum, x| sum + x }
    # p sum / arr.length.to_f
    arr.sum / (arr.length * 1.0)
end

def repeat(str, n)
  p str * n
end

def yell(str)
    p str.upcase! + "!"
end

def alternating_case(str)
# array = []
# words = str.split
#     i = 0
    
#     while i < str.split.length
#         if i.even?
#             array << words[i].upcase
#         else array << words[i].downcase
#         end
#         i +=1
#     end
# return array.join(" ")

words = str.split(" ")

new_words = words.map.with_index do |word, i|
    if i % 2 == 0
            word.upcase
        else
            word.downcase
    end
end
return new_words.join(" ")

end

