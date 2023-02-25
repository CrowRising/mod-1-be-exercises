require 'spec_helper'

RSpec.describe do
  before(:each) do
    @dock = Dock.new("The Rowing Dock", 3)
    @renter = Renter.new("Patrick Star", "4242424242424242")
    @kayak = Boat.new(:kayak, 20) 
  end

  describe '#intialize' do
    it 'exists' do
    expect(@dock).to be_a(Dock)
    expect(@dock.name).to eq("The Rowing Dock")
    expect(@dock.max_rental_time).to eq(3)
    end
  end
end
describe '#new instances of boats' do
  it 'creates new boats' do
    kayak_1 = Boat.new(:kayak, 20)
    kayak_2 = Boat.new(:kayak, 20)

    expect(kayak_1).to be_a(Boat)
    expect(kayak_2).to be_a(Boat)
  end
end


# 
# # => 3

# 
# # => #<Boat:0x00007fdeedb3a528...>

#     
# # => #<Boat:0x00007fdeedae1860...>

# @sup_1 = Boat.new(:standup_paddle_board, 15)
# # => #<Boat:0x00007fdeedaa8bc8...>

# @patrick = Renter.new("Patrick Star", "4242424242424242")    
# # => #<Renter:0x00007fdeed0ab828...>

# @eugene = Renter.new("Eugene Crabs", "1313131313131313")    
# # => #<Renter:0x00007fdeed8ce5c8...>

# @dock.rent(kayak_1, patrick)    

# @dock.rent(kayak_2, patrick)    

# @dock.rent(sup_1, eugene)    

# @dock.rental_log
  