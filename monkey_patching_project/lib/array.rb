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
        
    end
end