# Describes an Doctor
class Doctor
  ### CLASS DEFINITIONS ###


  # Class variables
  @@all = [] # list of all Doctors

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

  # saves Doctor instance to all class variable
  def save
    self.class.all << self
  end

  # initializes a new appointment and associates it with this doctor
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  # Returns all appointments associated with this doctor
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  # Returns all patients associated with this doctor
  def patients
    self.appointments.map do |appointment| 
      appointment.patient
    end
  end
end