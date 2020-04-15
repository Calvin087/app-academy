def my_map(arr, &prc)
    nArr = []
    arr.each { |num| nArr << prc.call(num) }
    nArr
end

def my_select(arr, &prc)
    nArr = []
    arr.each do |num|
        if prc.call(num) == true
            nArr << num
        end
    end
    nArr
end

def my_count(arr, &prc)
    num = 0
    arr.each do |ele|
        if prc.call(ele) == true
            num += 1
        end
    end
    return num
end

def my_any?(arr, &prc)
    falso = 0
    verdad = 0
    
    arr.each do |ele|
        if prc.call(ele) == true
            verdad += 1
        else
            falso += 1
        end
    end

    if falso == arr.length
        return false
    else 
        return true
    end

end


def my_all?(arr, &prc)

    arr.each do |ele|
        if prc.call(ele) == false
            return false
        end
    end

    return true
end


def my_none?(arr, &prc)
    arr.each do |ele|
        if prc.call(ele) == true
            return false
        end
    end
    true
end