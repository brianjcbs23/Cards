require_relative 'StandardCard'

class StandardDeck
    attr_reader :deck
    @deck

    def initialize()
        @deck = Queue.new
        (0..3).each do |suit|
            (1..13).each do |value|
                @deck.push StandardCard.new(value, suit)
            end
        end
    end

    def shuffle()
        #Should I make my own queue class that includes a shuffle method?
        size = @deck.size
        i = 0
        shuffle_array = []
        while i < size do
            shuffle_array << @deck.pop
            i += 1
        end
        shuffle_array.shuffle!
        shuffle_array.each do |card|
            @deck.push card
        end
    end

    def next()
        @deck.pop
    end

end