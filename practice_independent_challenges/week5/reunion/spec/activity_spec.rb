require 'spec_helper'

RSpec.describe do
  before(:each) do 
    @activity = Activity.new("Brunch")
  end

  describe '#initialize' do
    it 'exists' do
      expect(@activity).to be_a(Activity)
    end
  end

  describe '#attributes' do
    it 'has attributes' do
      expect(@activity.name).to eq("Brunch")
    end
  end

  describe '#participants' do
    it 'checks for and adds participants' do
      expect(@activity.participants).to eq({})

      @activity.add_participant("Maria", 20)
      expect(@activity.participants).to eq({"Maria" => 20})
    end
  end

  describe '#cost and participants' do
    it 'checks for costs based on participants' do
      @activity.add_participant("Maria", 20)
      expect(@activity.total_cost).to eq(20)

      @activity.add_participant("Luther", 40)
      expect(@activity.participants).to eq({"Maria" => 20, "Luther" => 40})
      expect(@activity.total_cost).to eq(60)
    end
  end
end