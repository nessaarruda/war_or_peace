class Turn

  attr_reader :player1, 
              :player2, 
              :spoils_of_war

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end

  def type
    if @player1.deck.rank_of_card_at(0) != @player2.deck.rank_of_card_at(0)
      :basic 
    elsif @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0) && @player1.deck.rank_of_card_at(2) == @player2.deck.rank_of_card_at(2)
      :mutually_assured_destruction
    elsif @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0)
      :war
    end 
# A :basic turn is one in which the rank_of_card_at(0) from the players’ decks are not the same rank.
# A :war turn occurs when both players’ rank_of_card_at(0) are the same.
# :mutually_assured_destruction occurs when both players’ rank_of_card_at(0) AND rank_of_card_at(2) are the same.
  end

  def winner
    # if the turn has a type of :basic, it will return whichever player has a higher rank_of_card_at(0)
    #   if the turn has a type of :war the winner will be whichever player has a higher rank_of_card_at(2)
    #   if the turn has a type of :mutually_assured_destruction the method will return No Winner.
  end

  def pile_cards
  # when this method is called, cards will be sent from the players’ decks into the @spoils_of_war based on these rules
  # for a :basic turn, each player will send one card (the top card) to the spoils pile
  # for a :war turn, each player will send three cards (the top three cards) to the spoils pile
  # for a :mutually_assured_destruction turn, each player will remove three cards from play (the top three cards in their deck). These cards are not sent to the spoils pile, they are simply removed from each players’ deck.
end

  def award_spoils(winner)
    # this method will add each of the cards in the @spoils_of_war array to the winner of the turn.
  end
end