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
    @artists. each do |artist
  end
  # create a method that returns a list of artists and their photos
    # the artist and the photo have an id num that connects them
        # the retun should be a hash where the artist is the key and the photo is the value
        #if the artist has more than one photo it will ve stored as an array
end