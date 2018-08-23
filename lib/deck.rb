require 'pry'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards  = cards
  end

  def count
    cards.count
    # binding.pry
  end

  def sort
    value_rank = {"2" => 1, "3" => 5, "4" => 9, "5" => 13,
                "6" => 17, "7" => 21, "8" => 25, "9" => 29,
                "10" => 33, "Jack" => 37, "Queen" => 41,
                "King" => 45, "Ace" => 49}

    suit_rank = {"Clubs" => 0, "Diamonds" => 1, "Hearts" => 2, "Spades" => 3}
    sort_done = false
    sorted = []
    until sort_done == true
      (cards.count - 1).times do
      # cards.each_with_index do |card, place|
      place = 0
        sort_done = true
        if (value_rank[cards[place].value] + suit_rank[cards[place].suit]) > (value_rank[cards[place + 1].value] + suit_rank[cards[place + 1].suit])
          sort_done = false
          cards.insert(place + 1, cards[place])
          cards.delete_at(place)
        end
      place = place + 1
      end
    end
    cards
  end
end
