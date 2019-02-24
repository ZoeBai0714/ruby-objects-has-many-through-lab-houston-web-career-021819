class Artist
    @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    #song = Song.new(name, self, genre)
    @songs << Song.new(name, self, genre)
  end
end