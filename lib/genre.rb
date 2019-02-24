class Genre
  @@all = []
  attr_accessor :name, :songs, artists
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
end