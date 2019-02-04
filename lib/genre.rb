require 'pry'
class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end



  def artists
    songs.map do |songs|
      songs.artist
    end
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end
end

# binding.pry
# 0
