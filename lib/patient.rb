# Describes an Patient
class Patient
  ### CLASS DEFINITIONS ###


  # Class variables
  @@all = [] # list of all Patients

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

  # saves Patient instance to all class variable
  def save
    self.class.all << self
  end

  # initializes a new appointment and associates it with this patient
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  # Returns all appointments associated with this patient
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  # Returns all patients associated with this patient
  def doctors
    self.appointments.map do |appointment| 
      appointment.doctor
    end
  end
end