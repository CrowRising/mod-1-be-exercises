class Contestant
  attr_reader :first_name,
              :last_name,
              :age,
              :state_of_residence,
              :spending_money
              :game_interests

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @age = info[:age]
    @state_of_residence = info[:state_of_residence]
    @spending_money = info[:spending_money]
    @game_interests = []
  end

  def game_interests
    @game_interests
  end

  def add_game_interest(names)
    @game_interests << names
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end  

  def out_of_state?
    if @state_of_residence = 'CO'
      false
    else
      true
    end
  end

end