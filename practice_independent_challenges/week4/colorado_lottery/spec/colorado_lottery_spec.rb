require "./lib/contestant"
require "./lib/game"
require "./lib/colorado_lottery"

RSpec.describe do
  
  describe '#initialize' do
    it 'exists' do
      lottery = ColoradoLottery.new
      expect(lottery).to be_a(ColoradoLottery) 
      expect(lottery.registered_contestants).to eq({})
      expect(lottery.winners).to eq([])
      expect(lottery.current_contestants).to eq({})
    end
  end

  describe '#contestants and games and interest and age' do
    it 'adds games registers and checks for interest and age' do
      lottery = ColoradoLottery.new
      pick_4 = Game.new('Pick 4', 2)
      mega_millions = Game.new('Mega Millions', 5, true)
      cash_5 = Game.new('Cash 5', 1)
     
      alexander = Contestant.new({
                             first_name: 'Alexander',
                             last_name: 'Aigades',
                             age: 28,
                             state_of_residence: 'CO',
                             spending_money: 10}) 
       benjamin = Contestant.new({
                             first_name: 'Benjamin',
                             last_name: 'Franklin',
                             age: 17,
                             state_of_residence: 'PA',
                             spending_money: 100})
      
       frederick = Contestant.new({
                             first_name:  'Frederick',
                             last_name: 'Douglass',
                             age: 55,
                             state_of_residence: 'NY',
                             spending_money: 20})
    
       winston = Contestant.new({
                           first_name: 'Winston',
                           last_name: 'Churchill',
                           age: 18,
                           state_of_residence: 'CO',
                           spending_money: 5})

       alexander.add_game_interest('Pick 4')
       alexander.add_game_interest('Mega Millions')
       frederick.add_game_interest('Mega Millions')
       winston.add_game_interest('Cash 5')
       winston.add_game_interest('Mega Millions')
       benjamin.add_game_interest('Mega Millions')

       expect(lottery.interested_and_18?(alexander, pick_4)).to be true
       expect(lottery.interested_and_18?(benjamin, mega_millions)).to be false
       expect(lottery.can_register?(alexander, pick_4)).to be true
       expect(lottery.can_register?(alexander, cash_5)).to be false
       expect(lottery.can_register?(frederick, mega_millions)).to be true
       expect(lottery.can_register?(benjamin, mega_millions)).to be false
       expect(lottery.can_register?(frederick, cash_5)).to be false
                         
    end
  end
end