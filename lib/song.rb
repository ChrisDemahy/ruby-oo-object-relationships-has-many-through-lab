# Describes an Song
class Song
  ### CLASS DEFINITIONS ###


  # Class variables
  @@all = [] # list of all Songs

  # Reader for all class variable
  def self.all
    @@all
  end  


  ### INSTANCE DEFINITIONS ###

  # instance readers and writers
  attr_accessor :name, :genre, :artist

  # default constructor
  def initialize(name=nil, artist=nil, genre=nil )
    self.name = name
    self.genre = genre
    self.artist = artist
    self.save
  end

  # saves Song instance to all class variable
  def save
    self.class.all << self
  end


end