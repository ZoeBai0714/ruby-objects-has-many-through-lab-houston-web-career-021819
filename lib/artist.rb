class Artist
    @@all = []
  attr_accessor :name, :songs, :genres
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    @songs << Song.new(name, self, genre)
  end
  
  def songs
  end
end