require_relative '../Decks/StandardDeck'
require_relative 'Players/GoFishPlayer'

class GoFish

    @player1
    @player2
    @pool

    def initialize()
        @player1 = GoFishPlayer.new
        @player2 = GoFishPlayer.new
        @pool = StandardDeck.new
        deal
    end

    def deal
        @pool.shuffle
        while pool.size > 0 do
            player1.turn
            player2.turn
        end
    end

end
