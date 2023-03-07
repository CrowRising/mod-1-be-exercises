require './lib/activity'

RSpec.describe Activity do
  before(:each) do 
    @activity1 = Activity.new("Brunch")
  end

  describe '#initialize' do
    it 'exists' do
      expect(@activity1).to be_a(Activity)
    end

    it 'has attributes' do
      expect(@activity1.name).to eq('Brunch')
      expect(@activity1.participants).to eq({})
    end
  end

  describe '#add_participant' do
    it 'can add participants' do
      @activity1.add_participant("Maria", 20)
      expect(@activity1.participants).to eq({ 'Maria' => 20 })
    end
  end

  describe '#total_cost' do
    it 'has total cost' do
      @activity1.add_participant("Maria", 20)
      expect(@activity1.total_cost).to eq(20)
    end
  end

  describe '#participants, costs and math' do
    it 'adds another participant' do
      @activity1.add_participant("Maria", 20)
      @activity1.add_participant("Luther", 40)

      expect(@activity1.total_cost).to eq(60)
    end

    it 'checks participants split' do
      @activity1.add_participant("Maria", 20)
      @activity1.add_participant("Luther", 40)

      expect(@activity1.split).to eq(30)
    end

    it 'checks participants owed' do
      @activity1.add_participant("Maria", 20)
      @activity1.add_participant("Luther", 40)

      expect(@activity1.owed).to eq({ "Maria" => 10, "Luther" => -10 })
    end
  end
end