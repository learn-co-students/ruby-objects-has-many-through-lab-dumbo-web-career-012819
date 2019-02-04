class Genre

  attr_accessor :name

  @@all = []
  def initialize (name)
    @name = name


    #every time we make a new instance of a type of
    # genre then we shovel it into the class array
    @@all << self


  end



  # Class method that recognizes itself
  def self.all
    @@all
  end

  def songs
    # Searches through all the songs...
    # but I only care about the songs
    # with MY genre
    Song.all.each do |song|
      song.genre == self
    end
    end


  # has many artists through songs
    def artists
      songs.map do |song|
        song.artist

      end
    end


  end