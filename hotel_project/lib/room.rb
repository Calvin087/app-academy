class Room
    def initialize(cap_num)
        @capacity = cap_num
        @occupants = []
    end

    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    def full?
        if @occupants.length < @capacity
            return false
        elsif @occupants.length >= @capacity
            return true
        end
    end

    def available_space
        return @capacity - @occupants.length
    end

    def add_occupant(guest_name)
        if !self.full?
            @occupants << guest_name
            return true
        else
            return false
        end
    end

end
