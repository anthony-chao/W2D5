class Item

    def self.valid_date?(date_string)
        date_components = date_string.split('-')
        year = date_components[0]
        month = date_components[1]
        day = date_components[2]
        
        if date_components.length == 3 && year.length == 4 && month.to_i > 0 && month.to_i < 13 && day.to_i > 0 && day.to_i < 32
            return true
        else
            return false
        end
    end

    attr_accessor :title, :deadline, :description

    def initialize(title, deadline, description)
        @title = title
        @deadline = deadline
        @description = description

        raise "raises error due to invalid date" if !Item.valid_date?(deadline)

    end

    def deadline=(new_deadline)
        if Item.valid_date?(new_deadline)
            @deadline = new_deadline
        else
            raise "raises error due to invalid date"
        end
    end

end

