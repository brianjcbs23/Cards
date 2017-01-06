require_relative 'StandardDeck'

class Table
    @deck

    def initialize()
        @deck = StandardDeck.new
        @deck.shuffle
    end

    def next()
        @deck.next
    end
end