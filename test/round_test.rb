require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'
require './lib/deck.rb'
require './lib/round.rb'

class RoundTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_start_with_no_guesses
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    actual = round.guesses
    expected = []
    assert_equal expected, actual
  end

  def test_current_card
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    actual = round.current_card
    expected = card_1
    assert_equal expected, actual
  end

  def test_record_guess
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Guess, round.record_guess({value: "3", suit: "Hearts"})
  end

  def test_correct_guess
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    test_guess = round.record_guess({value: "3", suit: "Hearts"})
    actual = (test_guess.card.value) + (test_guess.card.suit)
    expected = "3Hearts"
    assert_equal expected, actual
  end


end
