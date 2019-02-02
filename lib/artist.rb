require 'pry'
class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name=name
        @@all << self

    end

    def self.all
        @@all
    end

    def new_song(name,genre)
        Song.new(name,self,genre)
        #binding.pry
    end

    def songs
        Song.all.select do |info|
            info.artist == self
        end

    end

    def genres
        Song.all.collect do |info|
            info.genre
        end
    end
end
