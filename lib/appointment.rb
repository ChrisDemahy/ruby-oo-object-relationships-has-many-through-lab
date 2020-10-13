# Describes an Appointment
class Appointment
  ### CLASS DEFINITIONS ###


  # Class variables
  @@all = [] # list of all Appointments

  # Reader for all class variable
  def self.all
    @@all
  end  


  ### INSTANCE DEFINITIONS ###

  # instance readers and writers
  attr_accessor :patient, :date, :doctor

  # default constructor
  def initialize(date=nil, patient=nil, doctor=nil)
    self.patient = patient
    self.date = date
    self.doctor = doctor
    self.save
  end

  # saves Appointment instance to all class variable
  def save
    self.class.all << self
  end
end