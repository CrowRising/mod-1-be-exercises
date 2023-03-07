class Reunion
  attr_reader :name,
              :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost_of_event
    total_cost_of_event = 0
    @activities.each do |activity|
      total_cost_of_event += activity.participants.values.sum
    end
    total_cost_of_event
  end
end