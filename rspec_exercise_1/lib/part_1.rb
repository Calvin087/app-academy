def average(num1, num2)
 (num1 + num2) / 2.0
end

def average_array(arr)
    sum = arr.inject(0) { |sum, x| sum + x }
    p sum / arr.length.to_f
end

def repeat(str, n)
  p str * n
end

def yell(str)
    p str.upcase! + "!"
end

def alternating_case(str)
array = []
words = str.split
    i = 0
    
    while i < str.split.length
        if i.even?
            array << words[i].upcase
        else array << words[i].downcase
        end
        i +=1
    end
return array.join(" ")
end

p alternating_case("code never lies, comments sometimes do.")
# "CODE never LIES, comments SOMETIMES do."