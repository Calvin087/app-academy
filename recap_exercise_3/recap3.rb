def no_dupes?(arr)
    count = Hash.new(0)

    arr.each do |ele|
        count[ele] += 1
    end

    p count.keys.select { |el| count[el] == 1 }

end

def no_consecutive_repeats?(arr)
    (0...arr.length).each do |ind|
        if arr[ind] == arr[ind + 1]
            return false
        end
    end
    true
end