class StandardCard
    @value
    @suit

    attr_reader :value, :suit

    SUIT = {
        0 => "Spade",
        1 => "Heart",
        2 => "Club",
        3 => "Diamond"
    }

    VALUE = {
        1 => "A",
        11 => "J",
        12 => "Q",
        13 => "K"
    }

    def initialize(value, suit)
        if value == 1 or value >= 11
            @value = VALUE[value]
        else
            @value = value.to_s
        end
        @suit = SUIT[suit]
    end

    def to_s()
        return @value + " of " + @suit + "s"
    end
end