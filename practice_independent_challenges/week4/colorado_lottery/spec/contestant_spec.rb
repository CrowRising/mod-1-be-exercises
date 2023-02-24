require "./lib/contestant"
require "./lib/game"

RSpec.describe do
  
  describe '#initialize' do
    it 'exists' do
      alexander = Contestant.new({first_name: 'Alexander',
        last_name: 'Aigiades',
        age: 28,
        state_of_residence: 'CO',
        spending_money: 10})

      expect(alexander).to be_a(Contestant)  
    end

    it 'has attributes' do
      alexander = Contestant.new({first_name: 'Alexander',
        last_name: 'Aigiades',
        age: 28,
        state_of_residence: 'CO',
        spending_money: 10})

      expect(alexander.full.name).to eq('Alexander Aigiades')
      expect(alexander.age).to eq(28)
      expect(alexander.state_of_residence).to eq('CO')  
      expect(alexander.spending_money).to eq(10)
      expect(alexander.out_of_state?).to be false
      end

    it 'has interest in games' do
      alexander = Contestant.new({first_name: 'Alexander',
        last_name: 'Aigiades',
        age: 28,
        state_of_residence: 'CO',
        spending_money: 10})

      expect(alexander.game_interests).to eq([]) 

      alexander.add_game_interest('Mega Millions')
      alexander.add_game_interest('Pick 4')
      expect(alexander.game_interests).to eq(["Mega Millions", "Pick 4"]) 
    end
  end
end