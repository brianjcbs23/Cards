require_relative 'Hand'

class GoFishPlayer

    @hand
    @sets

    def initialize()
        @hand = Hand.new
        @sets = []
    end

    def turn()
        puts @hand
    end

    def draw(card)
        @hand.add card
    end

end
