require 'spec_helper'

RSpec.describe do
  before(:each) do
    @curator = Curator.new
    @photo_1 = Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"      
    })        
    @photo_2 = Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"      
    }) 
    @photo_3 = Photograph.new({
      id: "6",      
      name: "Friday Frolics",      
      artist_id: "2",      
      year: "2058"      
    }) 
    @artist_1 = Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    })
    @artist_2 = Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })  
  end

  describe '#intialize' do
    it 'exist' do
      expect(@curator).to be_a(Curator)
    end

    it 'has no photographs or artists' do
      expect(@curator.photographs).to eq([])
      expect(@curator.artists).to eq([])
    end
  end

  describe 'curates and logs info' do
    it 'has photographs' do
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      expect(@curator.photographs).to eq([@photo_1, @photo_2])
    end

    it 'has artists' do
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      expect(@curator.artists).to eq([@artist_1, @artist_2])
    end

    it 'can find artist by id' do
      @curator.add_artist(@artist_1)
      expect(@curator.find_artist_by_id("1")).to eq(@artist_1)
      expect(@curator.find_artist_by_id("55")).to eq(nil)
    end
  end

  describe 'return log data' do
    it 'returns lists of artists and photographs' do
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      expect(@curator.list_of_artists_and_photos).to eq({ @artist_1 => [@photo_1], @artist_2 => [@photo_2] })
    end

    it 'returns list of artists with more than one photo' do
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      @curator.add_photograph(@photo_3)
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      expect(@curator.artists_multiple_photos).to eq(["Ansel Adams"])
    end

    it 'returns list of photos taken by artists country of origin' do
      @curator.add_photograph(@photo_1)
      @curator.add_photograph(@photo_2)
      @curator.add_artist(@artist_1)
      @curator.add_artist(@artist_2)
      expect(@curator.artist_photo_by_country("France")).to eq([@photo_1])
    end
  end
end