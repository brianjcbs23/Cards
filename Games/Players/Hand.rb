class Hand

    @hand

    def initialize()
        @hand = []
    end

    def add(card)
        @hand << card
    end

    def sort()
    end

    def size()
        @hand.length
    end
    alias length size
    
end
