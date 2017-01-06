require_relative '../Decks/StandardDeck'

class CardPickup
    @deck

    def initialize()
        @deck = StandardDeck.new
        @deck.shuffle
    end

    def next()
        @deck.next
    end
end