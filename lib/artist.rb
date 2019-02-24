class Artist
    @@all = []
  attr_accessor :name,  :genres
  def initialize(name)
    @name = name
    #@genres = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    songs.collect do |song|
      song.genre
    end
  end
end