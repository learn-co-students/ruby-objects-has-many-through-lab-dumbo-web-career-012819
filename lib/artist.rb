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

  def new_song(song_name, genre_name)
    Song.new(song_name, self, genre_name)
  end

  def songs
    Song.all.select do |song|
      self == song.artist
    end
  end

  def genres
    Song.all.map do |song|
      if self.songs.include?(song)
        song.genre
      end
    end
  end
end
