class ColoradoLottery
  attr_reader :registered_contestants,
              :winners,
              :current_contestants

  def initialize
    @registered_contestants = {}
    @winners = []
    @current_contestants = {}
    @can_register = false
  end

  def interested_and_18?(first_name, game_interests)
  # require 'pry'; binding.pry
     if first_name.age >= 18 && first_name.game_interests.any? 
      true
    else
      false
    end
  end

  # def can_register?(contestant, game)
  #   contestant
    

  # end
end