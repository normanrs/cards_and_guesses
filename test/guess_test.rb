require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess.rb'

class GuessTest < Minitest::Test
  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_it_has_response
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    actual = guess.response
    expected = "10 of Hearts"
    assert_equal expected, actual
  end

  def test_it_has_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    actual = guess.card.value + guess.card.suit
    # binding.pry
    expected = "10Hearts"
    assert_equal expected, actual
  end

  def test_correct?
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    # binding.pry
    assert_equal true, guess.correct?
  end

  def test_feedback_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    actual = guess.feedback
    expected = "Correct!"
    assert_equal expected, actual
  end

  def test_feedback_correct
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    actual = guess.feedback
    expected = "Incorrect."
    binding.pry
    assert_equal expected, actual
  end
end
