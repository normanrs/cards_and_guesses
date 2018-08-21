require 'pry'
require './lib/guess.rb'

class Round
  attr_reader :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    deck.cards[0]
  end

  def record_guess(guess_in)
    guess = Guess.new("#{guess_in[:value]} of #{guess_in[:suit]}", current_card)
    @guesses << guess_in
    guess
  end



end
