class Appointment

  attr_accessor :date, :doctor
  attr_reader :patient

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end



  # Class method that returns the array of instances
  # of appointments
  def self.all
    @@all
  end


end