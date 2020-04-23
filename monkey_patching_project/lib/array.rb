# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    
    if self.length > 0
        newArr = self.sort
    
        min = newArr[0]
        max = newArr[-1]
    
        max - min
    else 
        return nil
    end

  end
end

class Array
    def average
        total = 0.0

        if self.length > 0
            self.each do |int|
                total += int
            end
            return total / self.length
        else
            return nil
        end
    end
end

class Array
    def median
        sort = self.sort
        middle = (self.length) / 2.0

        if sort.length.even? && sort.length > 0
            (sort[middle] + sort[middle - 1]) / 2.0
        else !sort.length.even?
            sort[middle]
        end

    end
end

class Array
    def counts
        hash = Hash.new(0)
        self.each do | ele|
            hash[ele] += 1
        end

    return hash
    end
end

class Array
    def my_count(arg)
        hash = Hash.new(0)
        self.each do | ele|
            hash[ele] += 1
        end

    return hash[arg]
    end
end

class Array
    def my_index(arg)
        hash = Hash.new { |h, k| h[k] = [] }

        self.each_with_index do |ele, ind|
            hash[ele] << ind
        end
        return hash[arg][0]
    end
end

class Array
    def my_uniq
        hash = Hash.new { |h, k| h[k] = [] }

        self.each_with_index do |ele, ind|
            hash[ele] << ind
        end
        return hash.keys
    end
end

class Array
    def my_transpose
        ind_1 = 0
        cols = []

        while ind_1 < self.length
            cols[ind_1] = []
            ind_2 = 0
            while ind_2 < self[ind_1].length
                cols[ind_1][ind_2] = self[ind_2][ind_1]
                ind_2 += 1
            end
            ind_1 += 1
        end
return cols
    end
end

# ####### READ THE LAST SOLUTION TO UNDERSTAND BETTER 
# https://stackoverflow.com/questions/28930157/transposing-rows-to-columns-with-limitations-on-what-methods-i-can-use

# arr_2 = [
#           ["w", "x"],
#           ["y", "z"]
#         ]

# p arr_2.my_transpose

#     # [   
#     #     ["w", "y"],
#     #     ["x", "z"]
#     # ]