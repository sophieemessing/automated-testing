require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do

      card = Card.new(2, :diamonds)
      expect(card.to_s).must_equal "2 of diamonds"

      card = Card.new(12, :hearts)
      expect(card.to_s).must_equal "Queen of hearts"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do

      card = Card.new(1, :spades)
      expect(card.to_s).must_equal "Ace of spades"

      card = Card.new(13, :clubs)
      expect(card.to_s).must_equal "King of clubs"
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do

      card = Card.new(9, :hearts)
      expect (card.value).must_be_kind_of Integer
      expect(card.value).must_equal 9

      card = Card.new(12, :diamonds)
      expect (card.value).must_be_kind_of Symbol
      expect(card.value).must_equal :Queen

    end

    it "Can retrieve the value of the card using a `.suit`." do

      card = Card.new(9, :hearts)
      expect (card.suit).must_be_kind_of Symbol
      expect(card.suit).must_equal :hearts

      card = Card.new(12, :diamonds)
      expect (card.suit).must_be_kind_of Symbol
      expect(card.suit).must_equal :diamonds

    end
  end

end
