# Describes an Genre
class Genre
  ### CLASS DEFINITIONS ###


  # Class variables
  @@all = [] # list of all Genres

  # Reader for all class variable
  def self.all
    @@all
  end  


  ### INSTANCE DEFINITIONS ###

  # instance readers and writers
  attr_accessor :name, :artist

  # default constructor
  def initialize(name=nil)
    self.name = name
    
    self.save
  end

  # saves Genre instance to all class variable
  def save
    self.class.all << self
  end


  # Returns all songs associated with this artist
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  # returns all genres associated with this artist 
  def artists 
    self.songs.map do |song|
      song.artist
    end
  end
end