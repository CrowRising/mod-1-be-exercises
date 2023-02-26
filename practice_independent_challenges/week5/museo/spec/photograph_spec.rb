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

    it 'has attributes' do
      expect(@photograph.id)
      expect(@photograph.artist_id)
      expect(@photograph.year)
    end
  end

end