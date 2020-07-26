require "pry"

class Song
    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end


end

# koll = Song.new("crazy", "kol", "alternative")
# coldplayy = Song.new("parachutes", "coldplay", "rock")
# binding.pry
# 0
