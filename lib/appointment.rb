
class Appointment
  attr_reader :date, :patient
  attr_accessor :doctor
  @@all = []
  def initialize(patient, date, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end
end


# Appointment
#   .all
#     knows about all appointments that have been created (FAILED - 6)
#   #new
#     initializes with a date, patient, and doctor (FAILED - 7)
#   #patient
#     belongs to a patient (FAILED - 8)
#   #doctor
#     belongs to a doctor (FAILED - 9)
