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
    @artist = Artist.new
    ({
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
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

  describe '#initialize artist' do
    it 'exists' do
      expect(@artist).to be_a(Artist)
    end

    it 'has attributes' do
      expect(@artist.id).to eq(2)
      expect(@artist.name).to eq("Ansel Adams")
      expect(@artist.born).to eq(1902)
      expect(@artist.died).to eq(1984)
      expect(@artist.country).to eq("United States")
      expect(@artist.age_at_death).to eq(82)
    end
  end

end