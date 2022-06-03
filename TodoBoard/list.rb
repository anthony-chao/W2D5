require_relative "./item.rb"

class List

    attr_accessor :label
    def initialize(label)
        @label = label
        @items = []
    end

    def add_item(title, deadline, description="")
        new_item = Item.new(title, deadline, description)
        if !Item.valid_date?(deadline)
            return false
        else
            @items << new_item
            return true
        end
    end

    def size
        @items.length
    end

    def valid_index?(index)        
        index < size && index >= 0

    end

    def swap(index1, index2)

        if valid_index?(index1) && valid_index?(index2)
            @items[index1], @items[index2] = @items[index2], @items[index1]
            return true
        else
            return false
        end

    end

    def [](index)
        @items[index]

    end

    def priority
        @items[0]
    end

    def print
        p ------------------------
        p @label
        p ------------------------
        p "index  |  Item     | Deadline "
        @items.each.with_index { |item, idx| p idx.to_s + " | " + item[] + deadline}
    end 

end