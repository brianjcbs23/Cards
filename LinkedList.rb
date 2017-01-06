require_relative 'Node'

class LinkedList

    @head
    @tail

    def initialize()
        @head = nil
        @tail = nil
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
    end

    def pop()
    end

    def index()
    end

end