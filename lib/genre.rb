class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |info|
            info.genre == self
        end
    end

    def artists
        Song.all.collect do |info|
            info.artist
        end
    end
end
