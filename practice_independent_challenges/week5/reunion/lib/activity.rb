class Activity
  attr_reader :name,
              :participants
              # :total_cost
              
  def initialize(name)
    @name = name
    @participants = {}
    # @total_cost = 0
  end

  def add_participant(name, cost)
    @participants[name] = cost
    # @total_cost = @total_cost + cost
    return @participants
  end

  def total_cost
   total_cost = @participants.values.sum
   total_cost
  end
end