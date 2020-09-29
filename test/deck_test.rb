require_relative 'test_helper'

describe "constructor" do
  before do
    @deck = Deck.new
  end

  it "can be instantiated" do
    expect(@deck).must_be_instance_of Deck
  end
end

describe "draw method" do
  before do
    @deck = Deck.new
  end
  it "must respond to draw method" do
    expect(@deck).must_respond_to :draw
  end

  it "returns a card" do
    expect(@deck.draw).must_be_instance_of Card
  end

  it "can draw 52 cards from the deck" do
    52.times do
      expect(@deck.draw).must_be_instance_of Card
    end
    expect(@deck.draw).must_be_nil
  end
end

describe "shuffle method" do
  before do
    @deck = Deck.new
  end
  it "responds to shuffle" do
    expect(@deck).must_respond_to :shuffle
  end
end