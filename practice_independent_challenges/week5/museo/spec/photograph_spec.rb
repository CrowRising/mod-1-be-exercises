require 'spec_helper'

RSpec.describe do
  before(:each) do 
    @photograph = Photograph.new
    ({
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    })
  end

  describe '#intialize photo' do
    it 'exists' do
      expect(@photograph).to be_a(Photograph)
    end

    it 'has attributes' do
      expect(@photograph.id).to eq(1)
      expect(@photograph.artist_id).to eq("Rue Mouffetard, Paris (Boy with Bottles)")
      expect(@photograph.year).to eq(1954)
      expect(@photograph.artist_id).to eq(4)
    end
  end
end