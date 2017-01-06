require_relative 'Node'

class LinkedList

    @head
    @tail
    @length

    attr_reader :length

    def initialize()
        @head = nil
        @tail = nil
        @length = 0
    end

    def push(value)
        node = Node.new value
        if @head == nil
            @head = node
            @tail = node
        else
            @tail.next = node
            @tail = node
        end
        @length += 1
    end

    def pop()
        return nil if length == 0
        node = @head
        @head = @head.next
        @length -= 1
        return node.value
    end

    def [](value)
        return nil if value > @length
        node = @head
        while value >= 0 do
            return node.value if value == 0
            value -= 1
            node = node.next
        end
    end

end