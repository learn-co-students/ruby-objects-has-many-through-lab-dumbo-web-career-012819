#  require 'pry'
#  require 'rb-readline'
# #
# require_relative "song.rb"
# require_relative "genre.rb"
# require_relative 'artist.rb'

class Genre

attr_accessor :name, :artist, :genre

@@all = []

  def initialize(name)
    @name = name



    @@all << self
  end

def artists
 songs.map do |song|
   song.artist
end
end

def self.all
  @@all
end

 def songs
 Song.all.select do |song|
   song.genre == self
 end
end


end

# jay_z = Artist.new("Jay-Z")
# rap = Genre.new("rap")
# ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)
#
#
# shrimp = Song.new('Big Shrimpin', jay_z, rap)
#
# binding.pry
0
