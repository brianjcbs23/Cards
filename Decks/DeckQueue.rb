class DeckQueue

    @queue

    def initialize()
        @queue = []
    end

    def push(value)
        @queue << value
    end

    def pop()
        @queue.delete_at(0)
    end

    def shuffle
        @queue.shuffle!
    end

    def length()
        @queue.length
    end
    alias size length
end
