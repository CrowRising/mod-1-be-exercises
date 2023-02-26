class Curator 
  attr_reader :photographs,
              :artists
              
  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photos)
    @photographs << photos
  end

  def add_artist(artist)
     @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
     artist.id == id
    end
  end

  def list_of_artists_and_photos
    list = {}
    @artists.each do |artist|
      list[artist] = @photographs.select do |photo|
        photo.artist_id == artist.id
      end
    end
    list
  end

  def artists_multiple_photos
    multi_photo_artists = []
    list_of_artists_and_photos.each do |artist, photos|
      if photos.length > 1
        multi_photo_artists << artist.name
      end
    end
    multi_photo_artists
  end

  def artist_photo_by_country(country)
    photo_list = []
    list_of_artists_and_photos.each do |artist, photos|
      if artist.country == country
        photo_list << photos
      end
    end
    photo_list.flatten
  end
  
end