class Artist

  attr_reader :name

  # sets up a class array
  @@all = []


  # initialize method that passes in a name
  def initialize (name)
    @name = name

    # adds each instance of artist to all array
    @@all << self
  end

  #class method that reads all artist instances
  def self.all
    @@all
  end

 # Songs method that will return the artists specific song
  # First goes through all the songs... over every song
  # return ONLY my song
  def songs
    Song.all.select do |song|
        song.artist == self
      end
  end


  # New song method that will create a new song with each artist instance
  def new_song (name, genre)
     Song.new(name, self, genre)
  end

  # Genre method that calls the songs method to get ONLY that artist's song
  # for each of them get the genre of each of that ONE specific artist's song
  def genres
    songs.map do |song|
      song.genre
    end
  end

end