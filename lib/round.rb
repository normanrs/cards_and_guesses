require 'pry'
require './lib/guess.rb'

class Round
  attr_reader :deck,
              :guesses,
              :correct_count,
              :top_card_counter

  def initialize(deck)
    @deck = deck
    @guesses = []
    @correct_count = 0
    @top_card_counter = 0
  end

  def current_card
    deck.cards[@top_card_counter]
  end

  def record_guess(guess_in)
    @guesses << Guess.new("#{guess_in[:value]} of #{guess_in[:suit]}", current_card)
    if guesses.count >= 1
      @top_card_counter += 1
    end
  end

  def number_correct
    guesses.each do |guess|
      @correct_count += 1 if guess.feedback == "Correct!"
    end
  end

end
