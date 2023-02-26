class Activity
  attr_reader :name,
              :participants
              
  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, cost)
    @participants[name] = cost
    return @participants
  end

  def total_cost
   total_cost = @participants.values.sum
  end
end