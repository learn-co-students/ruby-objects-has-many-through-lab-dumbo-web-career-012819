#  require 'pry'
#  require 'rb-readline'
#
require_relative "song.rb"
require_relative "genre.rb"


class Artist


attr_accessor :artist, :name, :genre

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
   Song.all.select do|song|
     song.artist == self
  end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

  end



# jay_z = Artist.new("Jay-Z")
# rap = Genre.new("rap")
# ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)
#
# binding.pry
# 0
