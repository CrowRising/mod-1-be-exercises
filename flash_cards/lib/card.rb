class Card
  attr_reader :card, :place, :geography
  def initialize(card, place, geography)
    @card = card
    @place = place
    @geography = geography
    
  end
  def question
    @card
  end
  def answer
    @place
  end
  def category
    @geography
  end
 
end