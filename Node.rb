class Node

    @value
    @next

    attr_reader :value, :next
    attr_writer :value, :next

    def initialize(value)
        @value = value
        @next = nil
    end

end