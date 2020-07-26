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
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select{|song| song.artist == self }
  end

  def genres
    self.songs.map{|song| song.genre}
  end

end

# Artist
#   #name
#     has a name (FAILED - 1)
#   .all
#     knows about all artist instances (FAILED - 2)
#   #new_song
#     given a name and genre, creates a new song associated with that artist (FAILED - 3)
#   #songs
#     has many songs (FAILED - 4)
#   #genres
#     has many genres, through songs (FAILED - 5)
