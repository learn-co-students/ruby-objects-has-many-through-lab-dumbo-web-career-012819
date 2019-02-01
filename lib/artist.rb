class Artist
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    #Create song; song needs to know it belongs to the artist
    song = Song.new(name, self, genre)
  end

  def songs
    # iterate through all songs
    # find the song belonging to artist
    Song.all.select {|song| song.artist == self}
  end

  def genres
    # iterate through artist list of songs and collect their genre
    songs.collect {|song| song.genre}
  end
end
