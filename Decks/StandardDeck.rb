require_relative 'StandardCard'
require_relative 'DeckQueue'

class StandardDeck

    @deck

    def initialize()
        @deck = DeckQueue.new
        (0..3).each do |suit|
            (1..13).each do |value|
                @deck.push StandardCard.new(value, suit)
            end
        end
    end

    def shuffle()
        @deck.shuffle
    end

    def next()
        @deck.pop
    end

end