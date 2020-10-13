# Describes an Artist
class Artist
  ### CLASS DEFINITIONS ###


  # Class variables
  @@all = [] # list of all Artists

  # Reader for all class variable
  def self.all
    @@all
  end  


  ### INSTANCE DEFINITIONS ###

  # instance readers and writers
  attr_accessor :name

  # default constructor
  def initialize(name=nil)
    self.name = name
    self.save
  end

  # saves Artist instance to all class variable
  def save
    self.class.all << self
  end

  # initializes a new song and associates it with this artist 
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  # Returns all songs associated with this artist
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  # returns all genres associated with this artist 
  def genres 
    self.songs.map do |song|
      song.genre
    end
  end


end