class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = Hash.new(0)
  end

  def add_participant(name, cost)
    @participants[name] = cost
  end

  def total_cost
   total_cost = @participants.values.sum
   total_cost
  end

  def split
    split = total_cost / 2
    split
  end

  def owed
   @participants.transform_values do |cost|
    split - cost
   end
  end
end