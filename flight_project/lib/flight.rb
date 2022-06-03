require_relative "./passenger.rb"

class Flight

    attr_reader :passengers
    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end
    
    def full?
        @passengers.length == @capacity
    end

    def board_passenger(person)
        if !self.full?
                @passengers << person
            end
    end

    def list_passengers        
        @passengers
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger_instance)
        board_passenger(passenger_instance)
    end


end