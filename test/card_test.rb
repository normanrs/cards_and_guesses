require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card.rb'

class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new("10", "Hearts")
    assert_instance_of Card, card
  end

  def test_it_has_value
    card = Card.new("10", "Hearts")
    actual = card.value
    expected = "10"
    assert_equal expected, actual
  end

  def test_it_has_suit
    card = Card.new("10", "Hearts")
    actual = card.suit
    expected = "Hearts"
    assert_equal expected, actual
  end

end
