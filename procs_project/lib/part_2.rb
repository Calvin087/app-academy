def reverser(str, &prc)
    return prc.call(str.reverse)
end

def word_changer(str, &prc)
    broke = str.split(" ")
    newArr = []
    broke.each do |word|
        newArr << prc.call(word)
    end
    return newArr.join(" ")
end

def greater_proc_value(n, prc_1, prc_2)
    result1 = prc_1.call(n)
    result2 = prc_2.call(n)

    if result1 > result2
        return result1
    else
        return result2
    end
end

def and_selector(arr, prc_1, prc_2)
    newArr = []

    arr.each do |num|
        if prc_1.call(num) == true && prc_2.call(num) == true
            newArr << num
        end
    end
    return newArr
end


def alternating_mapper(arr, prc_1, prc_2)
    newArr = []

    arr.each_with_index do |num, i|
        if i.even?
            newArr << prc_1.call(num)
        else
            newArr << prc_2.call(num)
        end
    end
    return newArr
end