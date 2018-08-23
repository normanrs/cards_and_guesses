require 'pry'

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards  = cards
  end

  def count
    cards.count
  end

  def sort
    value_rank = {"2" => 1, "3" => 5, "4" => 9, "5" => 13,
                "6" => 17, "7" => 21, "8" => 25, "9" => 29,
                "10" => 33, "Jack" => 37, "Queen" => 41,
                "King" => 45, "Ace" => 49}

    suit_rank = {"Clubs" => 0, "Diamonds" => 1, "Hearts" => 2, "Spades" => 3}
    sort_done = true
    while sort_done
      sort_done = false
      (@cards.count - 1).times do |place|
      # @cards.each_with_index do |card, place|
        if (value_rank[@cards[place].value] + suit_rank[@cards[place].suit]) > (value_rank[@cards[place + 1].value] + suit_rank[@cards[place + 1].suit])
          @cards[place], @cards[place + 1] = @cards[place + 1], @cards[place]
          # cards.insert(place + 2, cards[place])
        sort_done = true
        end
      place = place + 1
      end
    end
    return @cards
  end
end
