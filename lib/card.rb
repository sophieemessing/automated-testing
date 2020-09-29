
# card.rb

VALID_SUITS = [:hearts, :diamonds, :clubs, :spades]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError, "invalid suit" unless VALID_SUITS.include?(suit)
    raise ArgumentError, "invalid value" if value < 1 || value > 13

    @value = value
    @suit = suit

    case value
    when (2..10)
      @value = value
    when 1
      @value = :Ace
    when 11
      @value = :Jack
    when 12
      @value = :Queen
    when 13
      @value = :King
    else
      raise ArgumentError, "invalid card"
    end
  end

  def to_s
    return "#{value.to_s} of #{suit.to_s}"
  end

end
