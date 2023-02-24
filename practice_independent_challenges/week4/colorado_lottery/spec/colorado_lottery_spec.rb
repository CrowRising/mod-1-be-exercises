require "./lib/contestant"
require "./lib/game"
require "./lib/colorado_lottery"

RSpec.describe do
  
  describe '#initialize' do
    it 'exists' do
      lottery = ColoradoLottery.new
      expect(lottery).to be a(ColoradoLottery) 
      
    end
  end