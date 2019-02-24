class Genre
  @@all = []
  attr_accessor :name, :artists
  def initialize(name)
    @name = name
    @artists = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all select do |song|
      song.genre == self
    end
  end
  
  def
  end
end