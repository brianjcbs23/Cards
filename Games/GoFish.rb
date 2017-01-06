require_relative '../Decks/StandardDeck'
require_relative 'Players/GoFishPlayer'

class GoFish

    @player1
    @player2
    @pool

    def initialize()
        @player1 = GoFishPlayer.new
        @player2 = GoFishPlayer.new
        
    end
end
