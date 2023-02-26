require 'spec_helper'

RSpec.describe do
  before(:each) do 
    @photograph = Photograph.new(attributes)
    @artist = Artist.new(attributes)
  end
  describe '#intialize' do
    it 'exists' do
      expect(@photograph).to be_a(Photograph)
    end
  end
end