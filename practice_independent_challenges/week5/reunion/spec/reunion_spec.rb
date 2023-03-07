require './lib/activity'
require './lib/reunion'

RSpec.describe Reunion do
  before(:each) do
    @reunion = Reunion.new("1406 BE")
    @activity1 = Activity.new("Brunch")
    @activity2 = Activity.new("Dinner and a Movie")
    @activity3 = Activity.new("Meow Wolf")
  end

  describe '#initialize' do
    it 'exists' do
      expect(@activity1).to be_an(Activity)
    end
  end

  describe '#attributes' do
    it 'has name' do
      expect(@reunion.name).to eq("1406 BE")
    end

    it 'has activities' do
      expect(@reunion.activities).to eq([])
    end
  end

  describe '#activities' do
    it 'can add activities' do
      @reunion.add_activity(@activity1)
      expect(@reunion.activities).to eq([@activity1])
    end
  end

  describe '#total event cost' do
    it 'has event total' do
      @reunion.add_activity(@activity1)
      @activity1.add_participant("Maria", 20)
      @activity1.add_participant("Luther", 40)

      expect(@reunion.total_cost_of_event).to eq(60)
    end
  end
end